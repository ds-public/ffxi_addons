-- 参考
-- https://github.com/Windower/Lua/wiki/FFXI-Functions

-- アドオン情報設定
_addon.name     = 'ItemTacker'
_addon.author   = 'dsw'
_addon.version  = '2020-05-31'
_addon.language = 'japanese'
_addon.command  = 'itemtacker'
_addon.commands = { 'it' }

-----------------------------------------------------------------------

-- パッケージ追加
local Config    = require( 'config' )
local Resources = require( 'resources' )
local Packets   = require( 'packets' )

-- パケット種別
local CUTSCENE_STATUS_ID = 4

local EQUIPMENT_CHANGED_PACKET = 0x50
local BAZAAR_PRICE_PACKET = 0x10A
local EQUIPSET_CHANGED_PACKET = 0x051
local INVENTORY_FINISH_PACKET = 0x1D
local LOGIN_ZONE_PACKET  = 0x0A
local LOGOUT_ZONE_PACKET = 0x0B
local EQUIP_PACKET = 0x50
local TREASURE_FIND_ITEM_PACKET = 0xD2
local TREASURE_LOT_ITEM_PACKET = 0xD3
local EQUIP_LINKSHELL_PACKET = 0xC4
local INVENTORY_SIZE_PACKET = 0x1C

local GIL_ITEM_ID = 65535
local NO_ITEM_ID = 0

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

	-----------------------------------------------------------

	isDirtyEquipment	= true,
	isDirtyInventory	= false,
	isDirtyItems		= true,
	isDirtyTreasure		= true,

	isRefreshLinkshell	= false,

	inventorySize	= 0,
	safe1Size		= 0,
	safe2Size		= 0,
	storageSize		= 0,
	lockerSize		= 0,
	satchelSize		= 0,
	sackSize		= 0,
	caseSize		= 0,
	wardrobe1Size	= 0,
	wardrobe2Size	= 0,
	wardrobe3Size	= 0,
	wardrobe4Size	= 0,

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

		this:RefreshAll()	-- 全表示更新
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

	-- パケットデータを解析してギルの表示を更新する
	UpdateByItemPacket = function( this, packetData )
		local p = Packets.parse( 'incoming', packetData )
		return ( p.Item ~= GIL_ITEM_ID )
	end,

	-- パケットデータを解析してギルの表示を更新する
	UpdateByTreasurePacket = function( this, packetData )
		local p = Packets.parse( 'incoming', packetData )
		return ( p.Count >  0 )
	end,
	
	-----------------------------------------------------------

	-- サイズ変更チェック
	CheckSize = function( this, packetData )
        local p = Packets.parse( 'incoming', packetData )
		local inventorySize		= p[ 'Inventory Size' ]
		local safe1Size			= p[ 'Safe Size' ]
		local safe2Size			= p[ 'Safe 2 Size' ]
		local storageSize		= p[ 'Storage Size' ]
		local lockerSize		= p[ 'Locker Size' ]
		local satchelSize		= p[ 'Satchel Size' ]
		local sackSize			= p[ 'Sack Size' ]
		local caseSize			= p[ 'Case Size' ]
		local wardrobe1Size		= p[ 'Wardrobe Size' ]
		local wardrobe2Size		= p[ 'Wardrobe 2 Size' ]
		local wardrobe3Size		= p[ 'Wardrobe 3 Size' ]
		local wardrobe4Size		= p[ 'Wardrobe 4 Size' ]

		if
		(
			this.inventorySize	<  inventorySize	or
			this.safe1Size		<  safe1Size		or
			this.safe2Size		<  safe2Size		or
			this.storageSize	<  storageSize		or
			this.lockerSize		<  lockerSize		or
			this.satchelSize	<  satchelSize		or
			this.sackSize		<  sackSize			or
			this.caseSize		<  caseSize			or
			this.wardrobe1Size	<  wardrobe1Size	or
			this.wardrobe2Size	<  wardrobe2Size	or
			this.wardrobe3Size	<  wardrobe3Size	or
			this.wardrobe4Size	<  wardrobe4Size
		) then
			this.inventorySize	 = inventorySize
			this.safe1Size		 = safe1Size
			this.safe2Size		 = safe2Size
			this.storageSize	 = storageSize
			this.lockerSize		 = lockerSize
			this.satchelSize	 = satchelSize
			this.sackSize		 = sackSize
			this.caseSize		 = caseSize
			this.wardrobe1Size	 = wardrobe1Size
			this.wardrobe2Size	 = wardrobe2Size
			this.wardrobe3Size	 = wardrobe3Size
			this.wardrobe4Size	 = wardrobe4Size

			this.isDirtyEquipment	= true
			this.isDirtyItems		= true
			this.isDirtyTreasure	= true
		end
	end,

	RefreshAll = function( this )
		this.isDirtyEquipment = true
		this.isDirtyInventory = false
		this.isDirtyItems     = true
		this.isDirtyTreasure  = true
		this.isRefreshLinkshell = false
	end,

	-- 更新
	Refresh = function( this )
		if( this.isDirtyEquipment == true or this.isDirtyInventory == true or this.isDirtyItems == true or this.isDirtyTreasure == true ) then
			local items =  windower.ffxi.get_items()
			local isVisible = UI:IsVisible()

			if( this.isDirtyInventory == true and this.isDirtyItems == true ) then
				this.isDirtyInventory  = false
			end

			---------------------------

			-- 装備品を更新する
			if( this.isDirtyEquipment == true ) then
				this.isDirtyEquipment  = false
				UI:SetEquipment( items )
				if( isVisible == true ) then
					UI:ShowEquipment()
				end
			end

			-- 所持品を更新する
			if( this.isDirtyInventory == true ) then
				-- マイバッグのみ
				this.isDirtyInventory  = false
				UI:SetInventory( items, Resources )
				if( isVisible == true ) then
					UI:ShowInventory()
				end
			elseif( this.isDirtyItems == true ) then
				-- 所持品全般
				this.isDirtyItems = false
				UI:SetItems( items, Resources )
				if( isVisible == true ) then
					UI:ShowItems()
				end
			end

			-- 戦利品を更新する
			if( this.isDirtyTreasure == true ) then
				this.isDirtyTreasure  = false
				UI:SetTreasure( items ) 
				if( isVisible == true ) then
					UI:ShowTreasure()
				end
			end

			if( isVisible == true ) then
				UI:ApplyPosition()
			end
		end
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

		if( isInjected == true ) then return end
		-----------------------------------
		if( id == EQUIP_PACKET ) then
			-- 装備変更
			this:RefreshAll()
		elseif( id == ITEM_UPDATE_PACKET ) then
			-- アイテム更新
			if( this:UpdateByItemPacket( original ) == true ) then
			end
		elseif( id == ITEM_MODIFY_PACKET ) then
			-- アイテムに変化があった
			if( this:UpdateByItemPacket( original ) == true ) then
			end
		elseif( id == INVENTORY_FINISH_PACKET ) then
			-- インベントリ(かばん)が閉じられた
		elseif( id == INVENTORY_SIZE_PACKET ) then
			this:CheckSize( original )
		elseif( id == TREASURE_FIND_ITEM_PACKET ) then
			-- お宝を発見
			this.isDirtyTreasure = true
		elseif( id == TREASURE_LOT_ITEM_PACKET ) then
			-- お宝を取得
			this.isDirtyTreasure = true
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

	-- アイテムが増えたイベントを登録する
	windower.register_event( 'add item', function( _bag, _index, id, ... )
		if( id ~= GIL_ITEM_ID and id ~= NO_ITEM_ID ) then
			-- アイテムのみの更新
			this.isDirtyItems = true
		end
	end)

	-- アイテムが減ったイベントを登録する
	windower.register_event( 'remove item', function( _bag, _index, id, ... )
		if( id ~= GIL_ITEM_ID and id ~= NO_ITEM_ID ) then
			-- アイテムのみの更新
			this.isDirtyItems = true
		end
	end)	

	-- ジョブが変化したイベントを登録する
	windower.register_event( 'job change',function( mainJob, mainJobLevel, subJob, subJobLevel )
		this:RefreshAll()
	end)
	
	-- 装備・バザー・リンクシェルが変化したイベントを登録する
	windower.register_event( 'outgoing chunk', function( id, original, _modified, _isInjected, _isBlocked )
		if( id == EQUIPMENT_CHANGED_PACKET or id == EQUIPSET_CHANGED_PACKET ) then
			-- ローカルは変更前の状態なので意味が無い
--			this:RefreshAll()
		elseif( id == BAZAAR_PRICE_PACKET ) then
			this.isDirtyInventory	= true
		elseif( id == EQUIP_LINKSHELL_PACKET ) then
			this.isRefreshLinkshell	= true
		end
	end)

	-- リンクシェルが変化したイベントを登録する
	windower.register_event( 'linkshell change', function( new, old )
		if( this.isRefreshLinkshell == true ) then
			this.isRefreshLinkshell  = false
			this.isDirtyInventory = true
		end
	end)
	
	-- ゾーンチェンジ
	windower.register_event( 'zone change', function( new_id, old_id )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
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
			if( this.isZoning == true ) then UI:FadeOut() end
		else
			-- カットシーンから出た
			if( this.isCutscene == true ) then
				this.isCutscene = false
				if( this.isZoning == true ) then
					UI:FadeIn()
				end
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
		this:Refresh()
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
			t[ #t + 1 ] = "     " .. _addon.command .. " n :ソートを行わない"
			t[ #t + 1 ] = "     " .. _addon.command .. " s :ソートを行う"
			t[ #t + 1 ] = "     " .. _addon.command .. " r :位置の初期化"
			t[ #t + 1 ] = "     " .. _addon.command .. " l :位置の変更禁止"
			t[ #t + 1 ] = "     " .. _addon.command .. " u :位置の変更許可"
			t[ #t + 1 ] = "　"
			
			for tk, tv in pairs( t ) do
				PrintFF11( tv )
			end

		elseif command == '1' then
			Settings.Mode = 1
			this:RefreshAll()
			Save()
			PrintFF11( "通常表示モードに設定にしました。" )
		elseif command == '2' then
			Settings.Mode = 2
			this:RefreshAll()
			Save()
			PrintFF11( "簡易表示モードに設定にしました。" )
		elseif command == 'n' then
			Settings.Sort = false
			this.isDirtyItems = true
			Save()
			PrintFF11( "ソートを行わない設定にしました。" )
		elseif command == 's' then
			Settings.Sort = true
			this.isDirtyItems = true
			Save()
			PrintFF11( "ソートを行う設定にしました。" )
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
