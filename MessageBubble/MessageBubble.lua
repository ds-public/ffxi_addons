-- アドオン情報設定
_addon.name     = 'MessageBubble'
_addon.author   = 'dsw'
_addon.version  = '2020-05-20'
_addon.language = 'japanese'
_addon.command  = 'messagebubble'
_addon.commands = { 'mb' }

-----------------------------------------------------------------------

-- パッケージ追加
require( 'chat' )
local Config = require( 'config' )

-- パケット種別
local LOGIN_ZONE_PACKET  = 0x0A
local LOGOUT_ZONE_PACKET = 0x0B

local END_OF_MESSAGE	 = 82

-----------------------------------------------------------------------

-- 設定情報の読み込み
local Defaults = require( 'settings' )
local Settings = Config.load( Defaults )

local NPCs	   = require( 'npcs' )

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

	-------------------------------------------------------------------

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

	isDismissProcessing = false,
	dismissBaseTime = 0,
	idDismissPosition = false,
	dismissPosition = { X = 0, Y = 0 },

	-- 特殊なメッセージに対する非表示と表示
	SetDismissTime = function( this )
		if( this.isDismissProcessing == true ) then return end
		this.isDismissProcessing = true

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
	end,

	-----------------------------------------------------------

	-- 文章を行単位に分割する
	Split = function( this, str, delim )
    	-- Eliminate bad cases...
		if string.find( str, delim ) == nil then
			return { str }
		end

		local result = {}
		local pat = "(.-)" .. delim .. "()"
		local lastPos
		
		for part, pos in string.gfind( str, pat ) do
			table.insert( result, part )
			lastPos = pos
		end
		
		table.insert( result, string.sub( str, lastPos ) )
		return result
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
		-------------------------------
		--会話中かの確認
		if( id == END_OF_MESSAGE ) then
			-- メッセージ終了
--			PrintFF11( "End Of Message" )
			UI:FadeOut()
		elseif( id == LOGOUT_ZONE_PACKET ) then
			-- ゾーン切り替え
			UI:FadeOut()
		end
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
		else
			-- カットシーンから出た
			this.isCutscene = false
		end
	end)

	this.speaker = "" ;

	-- 特殊なメッセージに反応する
	windower.register_event( 'incoming text', function( original, modified, originalMode, modifiedMode )
		-- 143 144 148
		local result = original
		if( S{ 142, 144, 150, 151, 190 }[ originalMode ] ) and ( Settings.Mode >= 1 ) then

--		PrintFF11( "Chat M:" .. originalMode )

			-- 自動消去は停止させる
			this.isDismissProcessing = false ;
			this.dismissBaseTime = 0

			-- 吹き出しの表示状態を取得する
			local State = UI:GetState() 

			local text = ""

			-- 抽出
			s, e = original:find( ".-: " )
			if s ~= nil then
				if( e < 32 and s >  0 ) then
					text = original:sub( s, e )
				end
			end
	
			---------------------------
			-- Speaker
			local speaker = ""

			-- 表示名
			local  speaker = windower.from_shift_jis( text:sub( 0, string.len( text ) - 3 ) )
			if( speaker ~= nil and #speaker >  0 ) then
				if( NPCs[ speaker ] ~= nil ) then
					speaker = NPCs[ speaker ] .. '(' .. speaker .. ')'
				end
			end

			if( State == 0 or State == 3 ) then
				-- 吹き出しが非表示状態なので文字列だけ設定する
				UI:SetSpeaker( speaker )
			else
				-- 吹き出しが表示状態なので名前が変わる場合のみ名前のフェードインを行う
				UI:ChangeSpeaker( speaker )
			end

			---------------------------
			-- Message

			local message = ""

			if text == "" then
				result = "" .. "\n"
			else
				result = original:sub( string.len( original ) - 1, string.len( original ) )
				message = windower.from_shift_jis( original )	--utf8へ変換
				message = message:strip_format()				--制御文字カット			
			end
	
			if Settings.Mode == 2 then
				-- ログにも表示
				result = original
			end
			
			-- 文章をUTF-8化
			message = windower.from_shift_jis( original )
	
			-- 文章に対する特殊置換処理
			if text ~= "" then 
				message = message:gsub( text:gsub( "-", "--" ), "" ) --タルタル等対応
			end
	
			-- 文章を行に分ける
			messages = this:Split( message, "" )
	
			message = ""
	
			-- メッセージを生成
			for k, v in ipairs( messages ) do
				v = string.gsub( v, "", "\\cs(84,127,17)" )
				v = string.gsub( v, "", "\\cs(97,127,217)" )
				v = string.gsub( v, "", "\\cs(0,0,0)" )
				v = string.gsub( v, "1", "" )
				v = string.gsub( v, "4", "" )
				v = string.gsub( v, "", "" )
				v = string.gsub( v, "", "" )
				v = string.gsub( v, "6", "" )
				v = string.gsub( v, "^?", "" )
				v = string.gsub( v, "　　 ", "" )
				v = string.gsub( v, "", "" )
				v = string.gsub( v, "", "" )
				v = string.gsub( v, "", "" )
				v = string.gsub( v, "5", "" )
				v = " \n" .. v
				message = message .. v
			end
	
			if( State == 0 or State == 3 ) then
				-- 吹き出しが非表示状態なので文字列だけ設定する
				UI:SetMessage( message )
			else
				-- 吹き出しが表示状態なので名前が変わる場合のみ名前のフェードインを行う
				UI:ChangeMessage( message )
			end

			if( State == 0 or State == 3 ) then
				-- 吹き出しが表示されていなければフェードで表示する
				UI:FadeIn()
			end
		end
		
		-- 特殊なメッセージのケース
		if( S{ 142, 143, 144, 148 }[ originalMode ] ) then
--		if(  originalMode == 143 or originalMode == 144 or originalMode == 148 ) then
			this:SetDismissTime()
		end

		return result
	end)

	-------------------------------------------------------------------

	-- 画面描画が行われる前に呼び出されるイベントを登録する
	windower.register_event( 'prerender',  function( ... )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		if( this.isAwake == false ) then
			this.isAwake  = true
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
				UI:FadeOut()
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
			t[ #t + 1 ] = "     " .. _addon.command .. " 0 :吹き出し非表示＆ログ表示"
			t[ #t + 1 ] = "     " .. _addon.command .. " 1 :吹き出し表示＆ログ非表示" 
			t[ #t + 1 ] = "     " .. _addon.command .. " 2 :吹き出し表示＆ログ表示"
			t[ #t + 1 ] = "  現在の状態 " .. Settings.Mode
			t[ #t + 1 ] = "     " .. _addon.command .. " r :位置の初期化"
			t[ #t + 1 ] = "     " .. _addon.command .. " l :位置の変更禁止"
			t[ #t + 1 ] = "     " .. _addon.command .. " u :位置の変更許可"
			t[ #t + 1 ] = "　"
			
			for tk, tv in pairs( t ) do
				PrintFF11( tv )
			end

		elseif command == '0' then
			Settings.Mode = 0
			Save()
			PrintFF11( "モード0 :吹き出し非表示＆ログ表示" )
		elseif command == '1' then
			Settings.Mode = 1
			Save()
			PrintFF11( "モード1 :吹き出し表示＆ログ非表示" )
		elseif command == '2' then
			Settings.Mode = 2
			Save()
			PrintFF11( "モード2 :吹き出し表示＆ログ表示" )
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
	if( text == nil or #text == 0 ) then return end
	windower.add_to_chat( 207,  windower.to_shift_jis( text ) )
end
