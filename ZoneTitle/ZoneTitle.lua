-- アドオン情報設定
_addon.name     = 'ZoneTitle'
_addon.author   = 'dsw'
_addon.version  = '2020-06-03'
_addon.language = 'japanese'
_addon.command  = 'zonetitle'
_addon.commands = { 'zt' }

-----------------------------------------------------------------------

-- パッケージ追加
local Config      = require( 'config' )
local Resources   = require( 'resources' )
local RegionZones = require( 'regionZones' )

-- パケット種別
local LOGIN_ZONE_PACKET  = 0x0A
local LOGOUT_ZONE_PACKET = 0x0B

-----------------------------------------------------------------------

-- 設定情報の読み込み
local Defaults = require( 'settings' )
local Settings = Config.load( Defaults )

---------------------------------------------------------------------------

-- ＵＩ定義
local UI = require( 'ui' )

-----------------------------------------------------------------------

local addon =
{
	-- フィールド変数(protected想定/実際はpublic)
	isLogin		= false,
	isZoning	= false,		-- ゾーン内にいるかどうか
	isCutscene	= false,		-- カットシーン中かどうか
	isDisplay	= false,
	isAwake		= false,

	-------------------------------------------------------------------

	-- スクリプトのロード完了後に行う処理(通常起動の場合はログイン前であるためセーブは使えない)
	Prepare = function( this )
		this.isLogin    = false
		this.isZoning   = false
		this.isCutscene = false
		this.isDisplay  = false
		this.isAwake    = false

		this.isDismissProcessing = false

		UI:Load( Settings )
	end,

	Destroy = function( this )
		UI:Hide()

		this.isDismissProcessing = false

		this.isAwake    = false
		this.isDisplay  = false
		this.isCutscene = false
		this.isZoning   = false
		this.isLogin    = false
	end,

	-----------------------------------------------------------------------

	-- ログイン(キャラクター選択後のゲーム開始)時に実行する処理
	Startup = function( this )
		if( this.isLogin == true ) then return end
		if( UI:CheckResolution( Settings ) == false ) then
			-- 位置がリセットされた
			Config.save( Settings )
		end

		this.isLogin = true
		this:CheckZoning()

		this:Display()
	end,

	-- ゾーン内にいるか確認する
	CheckZoning = function( this )
		local info = windower.ffxi.get_info()
		if( info.zone ~= nil and info.zone >= 0 ) then
			this.isZoning = true
		end
		return this.isZoning
	end,

	-- 表示準備完了の確認を行う
	Display = function( this )
		if( this.isDisplay == true ) then return true end
		if( this.isLogin == true and this.isZoning == true and this.isCutscene == false and UI:IsLoaded() == true ) then
			-- UIの準備が整っていたら最初の表示を行う
			this.isDisplay = true
			return true
		end
		return false
	end,

	-----------------------------------------------------------

	-- 名前を設定する
	ZoneIn = function( this )
		local info = windower.ffxi.get_info()
		if( info.mog_house == true ) then
			-- モグハウス以外
			return
		end
	
		local regionName = this:GetRegionName( info.zone )
		local zoneName   = this:GetZoneName( info.zone )

		UI:Set( regionName, zoneName )
		UI:FadeIn()

		this:StartDismissProcess()
	end,

	-- リージョン名を取得する
	GetRegionName = function( this, zoneId )
		local regionName = ''
		for i, v in pairs( RegionZones.Map ) do
			if v:contains( zoneId ) then
				regionName = Resources.regions[ i ].ja
			end
		end
		return regionName
	end,

	-- ゾーン名を取得する
	GetZoneName = function( this, zoneId )
		local zoneName = ''
		local zoneTable = Resources.zones[ zoneId ]
		if( zoneTable ~= nil ) then
			zoneName = zoneTable.ja
		end
		return zoneName
	end,

	isDismissProcessing = false,
--	dismissBaseTime = 0,
	idDismissPosition = false,
	dismissPosition = { X = 0, Y = 0 },

	-- 特殊なメッセージに対する非表示と表示
	StartDismissProcess = function( this )
		if( this.isDismissProcessing == true ) then return end
		this.isDismissProcessing = true
		this.isDismissPosition = false
	end,

	-- 移動判定のため現在位置を取得する
	GetPlayerPositionForDismissProcess = function( this )
		if( this.isZoning == false ) then return end
		local p = windower.ffxi.get_player()
		if( p ~= nil ) then
			local me = windower.ffxi.get_mob_by_id( p.id )
			if( me ~= nil ) then
				this.isDismissPosition = true
				this.dismissPosition.X = string.format( "%6.2f", me.x )
				this.dismissPosition.Y = string.format( "%6.2f", me.y )
			end
		end	
	end,
}

-----------------------------------------------------------------------
-- イベント登録とイベント実行
addon.RegisterEvents = function( this )

	-- アドオンがロードされた際のイベントを登録する(グローバル処理が実行された後に呼びされる)
	windower.register_event( 'load', function()
		this:Prepare()
		if( windower.ffxi.get_info().logged_in == true ) then
			-- ゲームが開始状態である場合のみ準備処理を呼ぶ(この準備準備は基本的にコマンドでロードされた場合のみ呼ばれる事になる)
			this:Startup()	-- スクリプトのリロードのケース
		end	
	end)

	-- アドオンがアンロードされた際のイベントを登録する(アドオンを明示的にアンロードした時にしか呼ばれない)
	windower.register_event( 'unload', function()
	end)

	-- ログインした際のイベントを登録する(キャラクターを選択してゲームが開始した後に呼ばれる)
	windower.register_event( 'login', function()
		-- キャラクター選択以前に処理する事は基本的に無いのでこのタイミングで準備処理を実行する事が正しい
		-- 付け加えるならばこのイベントの直前に再度設定情報が読み込まれるようなのでこれ以前のオンメモリの設定情報の変更は無意味である
		this:Startup()
	end)

	-- ログアウトした際のイベントを登録する(タイトル画面に戻る)スクリプト自体はまだ生きている
	windower.register_event( 'logout', function()
		this:Destroy()
	end)

	-- パケット受信時のイベントを登録する
	windower.register_event( 'incoming chunk', function( id, original, modified, isInjected, isBlocked )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end

		if( isInjected == true ) then return end
		-----------------------------------
		if( id == LOGIN_ZONE_PACKET ) then
			-- ゾーンイン
			this.isZoning = true	-- ゾーン内
			this:ZoneIn()
		elseif( id == LOGOUT_ZONE_PACKET ) then
		end
	end)

	-------------------------------------------------------------------

	-- 画面描画が行われる前に呼び出されるイベントを登録する
	windower.register_event( 'prerender',  function( ... )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		if( this.isAwake == false ) then
			this.isAwake  = true
			this:ZoneIn()
		end
		-----------------------------------
		UI:Update()
		-----------------------------------
		-- 動ける状態であればフェードアウトを強制的に行う
		if( this.isDismissProcessing == true ) then

			if( this.isDismissPosition == false ) then
				this:GetPlayerPositionForDismissProcess()
			end

			local isDismissPosition = false
			local dismissPosition = { X = 0, Y = 0 }

			if( this.isDismissPosition == true ) then
				local p = windower.ffxi.get_player()
				if( p ~= nil ) then
					local me = windower.ffxi.get_mob_by_id( p.id )
					if( me ~= nil ) then
						isDismissPosition = true
						dismissPosition.X = string.format( "%6.2f", me.x )
						dismissPosition.Y = string.format( "%6.2f", me.y )
					end
				end
			end

			if( UI:IsVisible() == true ) then
				-- フェード処理中
				if( isDismissPosition == true and ( dismissPosition.X ~= this.dismissPosition.X or dismissPosition.Y ~= this.dismissPosition.Y ) ) then
					this.isDismissProcessing = false
					this.isDismissPosition   = false
					UI:FadeBreak()
				end
			else
				-- フェード処理外
				this.isDismissProcessing = false
				this.isDismissPosition   = false
			end
		end		
	end)

	-------------------------------------------------------------------

	-- コマンド実行時のイベントを登録する
	windower.register_event( "addon command", function( command, arg1 )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		-----------------------------------

		if( command == 'help' or command == 'h' ) then
			local t = {}

			t[ #t + 1 ] = _addon.name .. " " .. "Version " .. _addon.version
			t[ #t + 1 ] = "  <コマンド> 省略[" .. _addon.commands[ 1 ] .. "]" 
			t[ #t + 1 ] = "     " .. _addon.command .. " r :位置の初期化"
			t[ #t + 1 ] = "     " .. _addon.command .. " l :位置の変更禁止"
			t[ #t + 1 ] = "     " .. _addon.command .. " u :位置の変更許可"
			t[ #t + 1 ] = "　"
			
			for tk, tv in pairs( t ) do
				PrintFF11( tv )
			end

		elseif command == 'r' then
			UI:ResetPosition()
			if( this.isZoning == true ) then UI:ApplyPosition() end
			Save()
			PrintFF11( "位置を初期化しました。" )
		elseif command == 'l' then
			UI:SetDraggable( false )
			Save()
			PrintFF11( "位置の変更を禁止しました。" )
		elseif command == 'u' then
			UI:SetDraggable( true )
			Save()
			PrintFF11( "位置の変更を許可しました。" )
		end
	end)

	-- マウス操作時のイベントを登録する
	windower.register_event( "mouse", function( type, x, y, delta, blocked )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		-----------------------------------

		if( UI:ProcessDragging( type ) == true ) then
			Save()	-- 位置に変更があったので保存する
		end
	end)
end

-----------------------------------------------------------------------

addon:RegisterEvents()		-- 最後にイベント登録を実行する

-- 設定のセーブを行う
function Save()
	Config.save( Settings )
end

-- チャットログに文字列を出力する
function PrintFF11( text )
	windower.add_to_chat( 207,  windower.to_shift_jis( text ) )
end
