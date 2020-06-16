-- アドオン情報設定
_addon.name     = 'GrowthGauge'
_addon.author   = 'dsw'
_addon.version  = '2020-05-27'
_addon.language	= 'japanese'
_addon.command  = 'growthgauge'
_addon.commands = { 'gg' }

-----------------------------------------------------------------------

-- パッケージ追加
local Config	= require( 'config' )
--file	= require( 'files' )
local Packets	= require( 'packets' )

-- パケット種別
local LOGIN_ZONE_PACKET  = 0x0A
local LOGOUT_ZONE_PACKET = 0x0B

local CUTSCENE_STATUS_ID = 4

-----------------------------------------------------------------------

-- 設定情報の読み込み
local Defaults = require( 'settings' )
local Settings = Config.load( Defaults )

---------------------------------------------------------------------------

-- ＵＩ定義
local UI = require( 'ui' )

--------------------------------------------------------------------

local addon =
{
	-- フィールド変数(protected想定/実際はpublic)
	isLogin		= false,
	isZoning	= false,		-- ゾーン内にいるかどうか
	isCutscene	= false,		-- カットシーン中かどうか
	isDisplay	= false,
	isAwake		= false,

	-----------------------------------------------------------

	visible = false,
	
	-- 経験値とメリットポイントの表示対象
	mode	= 1,

	-- 経験値
	epNow	= nil,
	epMax	= nil,

	-- メリットポイント
	lpNow =   nil,
	lpMax = 10000,
	mpNow =   nil,
	mpMax =    30,

	-- ジョブポイント
	cpNow =   nil,
	cpMax = 30000,
	jpNow =   nil,
	jpMax =   500,

	isDirty = true,

-----------------------------------------------------------------------

-- スクリプトのロード完了後に行う処理(通常起動の場合はログイン前であるためセーブは使えない)
	Prepare = function( this )
		this.isLogin    = false
		this.isZoning   = false
		this.isCutscene = false
		this.isDisplay  = false
		this.isAwake    = false

		UI:Load( Settings )
	end,

	Destroy = function( this )
		UI:Hide()

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
		if( ( info.zone ~= nil and info.zone >= 0 ) or info.mog_house == true ) then
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

	-- 経験値を増加させる
	Increase = function( this, value, message )
		if( message ==   8 or message == 105 ) then
			-- 経験値の増加
--			print( "exp up " .. value .. " " .. message )
			if( this.epNow ~= nil and this.epMax ~= nil ) then
				this.epNow = math.min( this.epNow + value, 55999 )
				if( this.epNow>  this.epMax ) then
					this.epNow = this.epNow - this.epMax
				end
			end
			-- 表示更新
			this:Refresh()
		elseif( message == 371 or message == 372 ) then
			-- リミットポイント・メリットポイントの増加
--			print( "lp up " .. value .. " ( " .. message .." )" )
			if( this.mpNow ~= nil and this.lpNow ~= nil ) then
				this.lpNow = this.lpNow + value
				if this.lpNow >= this.lpMax and this.mpNow ~= this.mpMax then
					this.mpNow = this.mpNow + math.min( math.floor( this.lpNow / this.lpMax ), this.mpMax )
					this.lpNow = this.lpNow % this.lpMax
				else
					this.lpNow = math.min( this.lpNow, this.lpMax - 1 )
				end
			end
			-- 表示更新
			this:Refresh()
		elseif( message == 718 or message == 735 ) then
			-- キャパシティポイント・ジョブポイントの増加
--			print( "cp up " .. value .. " ( " .. message .." )" )
			if( this.jpNow ~= nil and this.cpNow ~= nil ) then
				this.cpNow = this.cpNow + value
				if this.cpNow >  this.cpMax and this.jpNow ~= this.jpMax then
					this.jpNow = math.min( this.jpNow + math.floor( this.cpNow / this.cpMax ), this.jpMax )
					this.cpNow = this.cpNow % this.cpMax
				else
					this.cpNow = math.min( this.cpNow, this.cpMax - 1 )
				end
			end
			-- 表示更新
			this:Refresh()
		end
	end,

	-- 表示更新
	Refresh = function( this )
		local info = windower.ffxi.get_player()
		local mJobName		= info.main_job
		local sJobName		= info.sub_job
		local mJobLevel		= info.main_job_level
		local sJobLevel		= info.sub_job_level
		local isMogHouse	= windower.ffxi.get_info().mog_house

		UI:Set( mJobName, sJobName, mJobLevel, sJobLevel, this.mode, this.epNow, this.epMax, this.lpNow, this.lpMax, this.mpNow, this.mpMax, this.cpNow, this.cpMax, this.jpNow, this.jpMax, isMogHouse )
	end,

	isDismissProcessing = false,
	dismissBaseTime = 0,
	idDismissPosition = false,
	dismissPosition = { X = 0, Y = 0 },

	-- 特殊なメッセージに対する非表示と表示
	SetDismissTime = function( this )
		if( this.isDismissProcessing == true ) then return end
		this.isDismissProcessing = true
		UI:FadeOut()

		this.dismissBaseTime = os.clock()

		local p = windower.ffxi.get_player()
		if( p ~= nil ) then
			local me = windower.ffxi.get_mob_by_id( p.id )
			if( me ~= nil ) then
				this.isDismissPosition = true
				this.dismissPosition.X = string.format( "%6.2f", me.x )
				this.dismissPosition.Y = string.format( "%6.2f", me.y )
			end
		end	
	end	
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

--		if( id == 0x63 and original:byte( 5 ) == 2 ) then
--			print( "incoming " .. original:byte( 1 ) .. " " .. original:byte( 2 ) .. " " .. original:byte( 3 ) .. " " .. original:byte( 4 ) .." " .. original:byte( 5 ) .. " " .. original:byte( 6 ) .. " " .. original:byte( 7 ) .. " " .. original:byte( 8 ) .. " " .. original:byte( 9 ) .. " " .. original:byte( 10 ) .. " " .. original:byte( 11 ) .." " .. original:byte( 12 ) .. " " .. original:byte( 13 ) .. " " .. original:byte( 14 ) )
--			print( "modifid" .. modified:byte( 1 ) .. " " .. modified:byte( 2 ) .. " " .. modified:byte( 3 ) .. modified:byte( 4 ) .. " " .. modified:byte( 5 ) .. " " .. modified:byte( 6 ) )
--			print( "injected " .. tostring(( isInjected ) ) )
--		end

		if( isInjected == true ) then return end
		-----------------------------------
		if( id == 0x2D ) then
			-- 増加イベント
			-- 直接取得するケース
			local value   = original:unpack( 'I', 0x11 )
			local message = original:unpack(' H', 0x19 ) % 1024
--			local data    = Packets.parse( 'incoming', original )
--			local value   = data[ 'Param 1' ]
--			local message = data[ 'Message' ]
			this:Increase( value, message )
		elseif( id == 0x61 ) then
			-- 経験値モード
			this.epNow = original:unpack( 'H', 0x11 )
			this.epMax = original:unpack( 'H', 0x13 )
			-- 表示更新
			this:Refresh()
--			print( "set exp " .. this.epNow .. " / " .. this.epMax )
		elseif id == 0x63 and original:byte( 5 ) == 2 then
			-- メリットポイント系の情報
			this.lpNow = original:unpack( 'H', 9 )			-- リミットポイント現在
			this.mpNow = original:byte( 11 ) % 128			-- メリットポイント現在
			this.mpMax = original:byte( 13 ) % 128			-- メリットポイント上限

			local mode = 1
			if( original:byte( 12 ) == 32 ) then
				-- 経験値取得
				mode = 1
			elseif( original:byte( 12 ) == 224 ) then
				-- リミットポイント取得
				mode = 2
			end
			this.mode = mode
			this:Refresh()
--			print( "set merit " .. this.lpNow .. " / " .. this.lpMax )
		elseif id == 0x63 and original:byte( 5 ) == 5 then
			-- ジョブポイント
			local offset = windower.ffxi.get_player().main_job_id * 6 + 13 -- So WAR (ID==1) starts at byte 19
			this.cpNow = original:unpack( 'H', offset )		-- キャパシティポイント
			this.jpNow = original:unpack( 'H', offset + 2 )	-- ジョブポイント
			this:Refresh()
		elseif( id == LOGIN_ZONE_PACKET ) then
			-- ゾーンイン
			this.isZoning = true	-- ゾーン内
			UI:FadeIn()
		elseif( id == LOGOUT_ZONE_PACKET ) then
			-- ゾーンアウト
			this.isZoning = false	-- ゾーン外
			UI:FadeOut()
		end
	end)

	-- レベルアップ
	windower.register_event( 'level up', function( level )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		this:Refresh()
	end)
	
	-- レベルダウン
	windower.register_event( 'level down', function( level )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		this:Refresh()
	end)
	
	-- ジョブチェンジ
	windower.register_event( 'job change', function( mainJobId, mainJobLevel, subJobId, subJobLevel )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		this:Refresh()
		if( UI:IsVisible() == false ) then
			UI:FadeIn()
		end
	end)
	
	-- 強化バフ
	windower.register_event( 'gain buff', function( id )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		if id == 269 then
			-- レベルシンク
			this:Refresh()
		elseif id == 143 then
			-- レベル制限
			this:Refresh()
		elseif id == 254 then
			-- バトルフィールド
			this:Refresh()
		end
	end)

	-- 弱化バフ
	windower.register_event( 'lose buff', function( id )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		if id == 269 then 
			-- レベルシンク
			this:Refresh()
		elseif id == 143 then
			-- レベル制限
			this:Refresh()
		elseif id == 254 then
			-- バトルフィールド
			this:Refresh()
		end
	end)

	-- ゾーンチェンジ
	windower.register_event( 'zone change', function( new_id, old_id )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		this:Refresh()
	end)

	-- 状況変化の際に呼び出されるイベントを登録する(カットシーン対応)
	windower.register_event( 'status change', function( statusId )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		-----------------------------------
		-- カットシーンかどうかで表示を切り替える
		if( statusId == CUTSCENE_STATUS_ID ) then
			-- カットシーンに入った
			this.isCutscene = true
			if( this.isZoning == true ) then UI:FadeOut() end
		else
			-- カットシーンから出た
			if( this.isCutscene == true ) then
				this.isCutscene = false
				if( this.isZoning == true ) then UI:FadeIn() end
			end
		end
	end)

	-- 特殊なメッセージに反応する
	windower.register_event( 'incoming text', function( original, modified, originalMode, modifiedMode)
		-- 148は休息
		if( originalMode == 143 or originalMode == 144 ) then
			this:SetDismissTime()
		end
		return original
	end)

	-------------------------------------------------------------------

	-- 画面描画が行われる前に呼び出されるイベントを登録する
	windower.register_event( 'prerender',  function( ... )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		if( this.isAwake == false ) then
			this.isAwake  = true
			this:Refresh()
			UI:FadeIn()
		end
		-----------------------------------
		UI:Update()
		-----------------------------------
		-- 特定メッセージに対するフェード処理
		if( this.isDismissProcessing == true ) then

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

			if
			(
				( os.clock() - this.dismissBaseTime ) >  5 or
				( isDismissPosition == true and ( dismissPosition.X ~= this.dismissPosition.X or dismissPosition.Y ~= this.dismissPosition.Y ) )
			) then
				this.isDismissProcessing = false
				UI:FadeIn()
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
			UI:ApplyPosition()
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
