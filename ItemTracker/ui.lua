local Images = require( 'images' )
local Texts  = require( 'texts' )

local Resources = require( 'resources' )


-- Windower設定取得用インスタンス
local WindowerSettings = windower.get_windower_settings()

-- ＵＩ解像度
local UIScreen = {
	Width  = WindowerSettings.ui_x_res,
	Height = WindowerSettings.ui_y_res,
}

-----------------------------------------------------------------------

local DEFAULT_ITEM_STATUS				=  0
local EQUIPPED_ITEM_STATUS				=  5
local LINKSHELL_EQUIPPED_ITEM_STATUS	= 19
local BAZAAR_ITEM_STATUS				= 25

-----------------------------------------------------------------------

local ui =
{
	Base = nil,

	EquipmentBase = nil,
	EquipmentName = nil,
	EquipmentIcons = nil,
	EquipmentIds = nil,
	
	InventoryBase = nil,
	InventoryName = nil,
	InventoryIcons = nil,
	InventoryItems = nil,
	InventoryCountNow = 0,
	InventoryCountMax = 0,
	InventoryUsable = false,
	InventoryCount = nil,
	
	Safe1Base = nil,
	Safe1Name = nil,
	Safe1Icons = nil,
	Safe1Items = nil,
	Safe1CountNow = 0,
	Safe1CountMax = 0,
	Safe1Usable = false,
	Safe1Count = nil,

	Safe2Base = nil,
	Safe2Name = nil,
	Safe2Icons = nil,
	Safe2Items = nil,
	Safe2CountNow = 0,
	Safe2CountMax = 0,
	Safe2Usable = false,
	Safe2Count = nil,
	
	StorageBase = nil,
	StorageName = nil,
	StorageIcons = nil,
	StorageItems = nil,
	StorageCountNow = 0,
	StorageCountMax = 0,
	StorageUsable = false,
	StorageCount = nil,

	LockerBase = nil,
	LockerName = nil,
	LockerIcons = nil,
	LockerItems = nil,
	LockerCountNow = 0,
	LockerCountMax = 0,
	LockerUsable = false,
	LockerCount = nil,

	SatchelBase = nil,
	SatchelName = nil,
	SatchelIcons = nil,
	SatchelItems = nil,
	SatchelCountNow = 0,
	SatchelCountMax = 0,
	SatchelUsable = false,
	SatchelCount = nil,

	SackBase = nil,
	SackName = nil,
	SackIcons = nil,
	SackItems = nil,
	SackCountNow = 0,
	SackCountMax = 0,
	SackUsable = false,
	SackCount = nil,

	CaseBase = nil,
	CaseName = nil,
	CaseIcons = nil,
	CaseItems = nil,
	CaseCountNow = 0,
	CaseCountMax = 0,
	CaseUsable = false,
	CaseCount = nil,

	Wardrobe1Base = nil,
	Wardrobe1Name = nil,
	Wardrobe1Icons = nil,
	Wardrobe1Items = nil,
	Wardrobe1CountNow = 0,
	Wardrobe1CountMax = 0,
	Wardrobe1Usable = false,
	Wardrobe1Count = nil,

	Wardrobe2Base = nil,
	Wardrobe2Name = nil,
	Wardrobe2Icons = nil,
	Wardrobe2Items = nil,
	Wardrobe2CountNow = 0,
	Wardrobe2CountMax = 0,
	Wardrobe2Usable = false,
	Wardrobe2Count = nil,

	Wardrobe3Base = nil,
	Wardrobe3Name = nil,
	Wardrobe3Icons = nil,
	Wardrobe3Items = nil,
	Wardrobe3CountNow = 0,
	Wardrobe3CountMax = 0,
	Wardrobe3Usable = false,
	Wardrobe3Count = nil,

	Wardrobe4Base = nil,
	Wardrobe4Name = nil,
	Wardrobe4Icons = nil,
	Wardrobe4Items = nil,
	Wardrobe4CountNow = 0,
	Wardrobe4CountMax = 0,
	Wardrobe4Usable = false,
	Wardrobe4Count = nil,

	TemporaryBase = nil,
	TemporaryName = nil,
	TemporaryIcons = nil,
	TemporaryItems = nil,
	TemporaryCountNow = 0,
	TemporaryCountMax = 0,
	TemporaryUsable = false,
	TemporaryCount = nil,

	TreasureBase = nil,
	TreasureName = nil,
	TreasureIcons = nil,
	TreasureItems = nil,
	TreasureCountNow = 0,
	TreasureCountMax = 0,
	TreasureUsable = false,
	TreasureCount = nil,

	-------------------------------------------------------------------

	-- private

	settings = {},	-- 設定の参照を保持する

	isLoaded = false,
	loadingWaitTime,

	-------------------------------------------------------------------

	-- 画像のスタイルを生成して返す
	GetImageStyle = function( this, width, height, color, draggable )
		local data =
		{
			texture = {
				path			= nil,
				fit				= true,
			},
			size = {
				width			= width,
				height			= height,
			},
			repeatable = {
				x				= 1,
				y				= 1,
			},
			color = {
				red				= color[ 1 ],
				green			= color[ 2 ],
				blue			= color[ 3 ],
				alpha			= color[ 4 ],
			},
			draggable			= draggable,
			visible				= false		-- 初期状態では非表示
		}
		return data
	end,

	-- 文字のスタイルを生成して返す
	GetTextStyle = function( this, style, size, right )
		local data =
		{
			padding				= 0,
			text = {
				font			= style.Font,
				fonts			= style.Fonts,
				size			= size,
				red				= style.Color.R,
				green			= style.Color.G,
				blue			= style.Color.B,
				alpha			= style.Color.A,
				stroke = {
					width		= style.Stroke.Width,
					red			= style.Stroke.Color.R,
					green		= style.Stroke.Color.G,
					blue		= style.Stroke.Color.B,
					alpha		= style.Stroke.Color.A,
				},
			},
			bg = {
				visible		= false,
			},
			flags = {
				bold		= style.Flags.Bold,
				italic		= style.Flags.Italic,
				right		= right,
				bottom		= false,
				draggable	= false,
			},
			visible = false,	-- 初期状態では非表示
		}
		return data
	end,

	-- 関数:リソースをロードする
	Load = function( this, settings )

		-- 設定の参照を保持する
		this.settings = settings

		-------------------------------

		-- Base
		this.Base = Images.new( this:GetImageStyle(
			320,  64, {   0,   0,   0,   0 }, settings.Draggable ) )

		-------------------------------

		-- 装備品
		this.EquipmentBase = Images.new( this:GetImageStyle(
			 16,  16, {   0,   0,   0,  75 }, false ) )
		this.EquipmentIcons = this:CreateIcons( 16 )
		this.EquipmentIds = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
		this.EquipmentName = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.EquipmentName:text( "装" )

		-----------------------

		-- マイバッグ
		this.InventoryBase = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.InventoryIcons = this:CreateIcons( 80 )
		this.InventoryItems = this:CreateItems( 80 )
		this.InventoryName = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.InventoryName:text( "鞄" )
		this.InventoryCount = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.InventoryCount:text( " " )

		-- モグ金庫1
		this.Safe1Base = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.Safe1Icons = this:CreateIcons( 80 )
		this.Safe1Items = this:CreateItems( 80 )
		this.Safe1Name = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.Safe1Name:text( "金1" )
		this.Safe1Count = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.Safe1Count:text( " " )

		-- モグ金庫2
		this.Safe2Base = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.Safe2Icons = this:CreateIcons( 80 )
		this.Safe2Items = this:CreateItems( 80 )
		this.Safe2Name = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.Safe2Name:text( "金2" )
		this.Safe2Count = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.Safe2Count:text( " " )


		-- 収納家具
		this.StorageBase = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.StorageIcons = this:CreateIcons( 80 )
		this.StorageItems = this:CreateItems( 80 )
		this.StorageName = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.StorageName:text( "家" )
		this.StorageCount = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.StorageCount:text( " " )


		-- モグロッカー
		this.LockerBase = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.LockerIcons = this:CreateIcons( 80 )
		this.LockerItems = this:CreateItems( 80 )
		this.LockerName = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.LockerName:text( "棚" )
		this.LockerCount = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.LockerCount:text( " " )
		
		-- モグサッチュル
		this.SatchelBase = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.SatchelIcons = this:CreateIcons( 80 )
		this.SatchelItems = this:CreateItems( 80 )
		this.SatchelName = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.SatchelName:text( "袋" )
		this.SatchelCount = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.SatchelCount:text( " " )

		
		-- モグサック
		this.SackBase = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.SackIcons = this:CreateIcons( 80 )
		this.SackItems = this:CreateItems( 80 )
		this.SackName = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.SackName:text( "嚢" )
		this.SackCount = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.SackCount:text( " " )

		-- モグケース
		this.CaseBase = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.CaseIcons = this:CreateIcons( 80 )
		this.CaseItems = this:CreateItems( 80 )
		this.CaseName = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.CaseName:text( "箱" )
		this.CaseCount = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.CaseCount:text( " " )


		-- モグワードローブ1
		this.Wardrobe1Base = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.Wardrobe1Icons = this:CreateIcons( 80 )
		this.Wardrobe1Items = this:CreateItems( 80 )
		this.Wardrobe1Name = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.Wardrobe1Name:text( "衣1" )
		this.Wardrobe1Count = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.Wardrobe1Count:text( " " )

		-- モグワードローブ2
		this.Wardrobe2Base = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.Wardrobe2Icons = this:CreateIcons( 80 )
		this.Wardrobe2Items = this:CreateItems( 80 )
		this.Wardrobe2Name = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.Wardrobe2Name:text( "衣2" )
		this.Wardrobe2Count = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.Wardrobe2Count:text( " " )

		-- モグワードローブ3
		this.Wardrobe3Base = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.Wardrobe3Icons = this:CreateIcons( 80 )
		this.Wardrobe3Items = this:CreateItems( 80 )
		this.Wardrobe3Name = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.Wardrobe3Name:text( "衣3" )
		this.Wardrobe3Count = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.Wardrobe3Count:text( " " )

		-- モグワードローブ4
		this.Wardrobe4Base = Images.new( this:GetImageStyle(
			 20,  64, {   0,   0,   0,  75 }, false ) )
		this.Wardrobe4Icons = this:CreateIcons( 80 )
		this.Wardrobe4Items = this:CreateItems( 80 )
		this.Wardrobe4Name = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.Wardrobe4Name:text( "衣4" )
		this.Wardrobe4Count = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.Wardrobe4Count:text( " " )
		
		-- テンポラリ
		this.TemporaryBase = Images.new( this:GetImageStyle(
			  4,  64, {   0,   0,   0,  75 }, false ) )
		this.TemporaryIcons = this:CreateIcons( 80 )
		this.TemporaryItems = this:CreateItems( 80 )
		this.TemporaryName = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.TemporaryName:text( "薬" )
		this.TemporaryCount = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.TemporaryCount:text( " " )
		
		-----------------------

		-- トレジャー
		this.TreasureBase = Images.new( this:GetImageStyle(
			  4,  64, {   0,   0,   0,  75 }, false ) )
		this.TreasureIcons = this:CreateIcons( 80 )
		this.TreasureItems = this:CreateItems( 80 )
		this.TreasureName = Texts.new( this:GetTextStyle( settings.TextStyle, 8, false ) )
		this.TreasureName:text( "宝" )
		this.TreasureCount = Texts.new( this:GetTextStyle( settings.TextStyle, 8, true ) )
		this.TreasureCount:text( " " )
		
		-------------------------------------------------------

		-- 待ち時間を設定する
		this.isLoaded = false
		this.loadingWaitTime = os.clock()
	end,

	-- 個々のカテゴリのアイテム画像を生成する
	CreateIcons = function( this, count )
		local icons = {}
		for i = 1, count, 1 do
			icons[ i ] = Images.new( this:GetImageStyle(
				 3,   3, { 255, 255, 255, 255 }, false ) )
		end
		return icons
	end,

	CreateItems = function( this, count )
		local items = {}
		for i = 1, count, 1 do
			items[ i ] = { Id = 0, Status = 0, Count = 0, Stack = 0 }
		end
		return items
	end,

	-- ロード完了確認
	IsLoaded = function( this )
		if( this.isLoaded == true ) then
			return true		-- ロード完了
		end

		if( ( os.clock() - this.loadingWaitTime ) <  0.1 ) then	-- 最低 0.5 秒は待つようにする
			return false	-- ロード中
		end

		-- 解像度が変わっていたら位置をリセットする
		this:CheckResolution()

		-- 位置を反映する
		this:ApplyPosition()

		-- ロード完了
		this.isLoaded = true
	end,

	-- 解像度の変化を確認する
	CheckResolution = function( this )
		if( this.settings.UIScreen.Width ~= UIScreen.Width or this.settings.UIScreen.Height ~= UIScreen.Height ) then
			-- 解像度が変化したので位置をリセットする
			this.settings.UIScreen.Width  = UIScreen.Width
			this.settings.UIScreen.Height = UIScreen.Height
			this:ResetPosition()
			return false
		else
			return true
		end
	end,

	-------------------------------------------------------------------

	-- 最新状態をセットする
	Set = function( this, items, resources )
		-- アイテム実際のアイテム情報から表示を設定する

		-- 装備品を設定する
		this:SetEquipment( items )

		-- 所持品を設定する
		this:SetItems( items, resources )

		-- 戦利品を設定する
		this:SetTreasure( items )
	end,

	-- 装備品を設定する
	SetEquipment = function( this, items )

		-- 装備品
		this.EquipmentIds[  1 ] = items.equipment.main			-- 近接武器
		this.EquipmentIds[  2 ] = items.equipment.sub			-- 補助武器
		this.EquipmentIds[  3 ] = items.equipment.range			-- 遠隔武器
		this.EquipmentIds[  4 ] = items.equipment.ammo			-- 弾薬釣餌

		this.EquipmentIds[  5 ] = items.equipment.head			-- 頭防具
		this.EquipmentIds[  6 ] = items.equipment.neck			-- 首防具
		this.EquipmentIds[  7 ] = items.equipment.left_ear		-- 左耳アクセサリ
		this.EquipmentIds[  8 ] = items.equipment.right_ear		-- 右耳アクセサリ

		this.EquipmentIds[  9 ] = items.equipment.body			-- 胴防具
		this.EquipmentIds[ 10 ] = items.equipment.hands			-- 腕防具
		this.EquipmentIds[ 11 ] = items.equipment.left_ring		-- 左指アクセサリ
		this.EquipmentIds[ 12 ] = items.equipment.right_ring	-- 右指アクセサリ

		this.EquipmentIds[ 13 ] = items.equipment.back			-- 背防具
		this.EquipmentIds[ 14 ] = items.equipment.waist			-- 腰防具
		this.EquipmentIds[ 15 ] = items.equipment.legs			-- 脚防具
		this.EquipmentIds[ 16 ] = items.equipment.feet			-- 足防具

		for i = 1, 16, 1 do
			if( this.EquipmentIds[ i ] >  0 ) then
				this.EquipmentIcons[ i ]:color( 253, 252, 216 )
			else
				this.EquipmentIcons[ i ]:color(   0,   0,   0 )
			end
		end
	end,

	-- 最新状態をセットする
	SetItems = function( this, items, resources )
		-- アイテム実際のアイテム情報から表示を設定する

		-- 所持品を設定する
		this:SetInventory( items, resources )
		this:SetSafe1( items, resources )
		this:SetSafe2( items, resources )
		this:SetStorage( items, resources )
		this:SetLocker( items, resources )
		this:SetSatchel( items, resources )
		this:SetSack( items, resources )
		this:SetCase( items, resources )
		this:SetWardrobe1( items, resources )
		this:SetWardrobe2( items, resources )
		this:SetWardrobe3( items, resources )
		this:SetWardrobe4( items, resources )
		this:SetTemporary( items )
	end,

	-- マイバッグを設定する
	SetInventory = function( this, items, resources )

		this.InventoryCountMax = items.max_inventory		-- 最大所持可能数
		this.InventoryUsable   = items.enabled_inventory
		this:SetNameColor( this.InventoryName, this.InventoryUsable )

		this.InventoryCountNow = this:SetItemEntites( items.inventory, this.InventoryItems, this.InventoryCountMax, resources, this.InventoryIcons )
		this.InventoryCount:text( tostring( this.InventoryCountNow ) )
		this:SetCountColor( this.InventoryCount, this.InventoryCountNow, this.InventoryCountMax )
	end,

	-- モグ金庫1を設定する
	SetSafe1 = function( this, items, resources )

		this.Safe1CountMax = items.max_safe					-- 最大所持可能数
		this.Safe1Usable   = items.safe.enabled
		this:SetNameColor( this.Safe1Name, this.Safe1Usable )

		this.Safe1CountNow = this:SetItemEntites( items.safe,  this.Safe1Items, this.Safe1CountMax, resources, this.Safe1Icons )
		this.Safe1Count:text( tostring( this.Safe1CountNow ) )
		this:SetCountColor( this.Safe1Count, this.Safe1CountNow, this.Safe1CountMax )
	end,

	-- モグ金庫2を設定する
	SetSafe2 = function( this, items, resources )

		this.Safe2CountMax = items.max_safe2				-- 最大所持可能数
		this.Safe2Usable   = items.safe2.enabled
		this:SetNameColor( this.Safe2Name, this.Safe2Usable )

		this.Safe2CountNow = this:SetItemEntites( items.safe2, this.Safe2Items, this.Safe2CountMax, resources, this.Safe2Icons )
		this.Safe2Count:text( tostring( this.Safe2CountNow ) )
		this:SetCountColor( this.Safe2Count, this.Safe2CountNow, this.Safe2CountMax )
	end,

	-- 収納家具を設定する
	SetStorage = function( this, items, resources )

		this.StorageCountMax = items.storage.max			-- 最大所持可能数
		this.StorageUsable   = items.storage.enabled
		this:SetNameColor( this.StorageName, this.StorageUsable )

		this.StorageCountNow = this:SetItemEntites( items.storage, this.StorageItems, this.StorageCountMax, resources, this.StorageIcons )
		this.StorageCount:text( tostring( this.StorageCountNow ) )
		this:SetCountColor( this.StorageCount, this.StorageCountNow, this.StorageCountMax )
	end,

	-- モグロッカーを設定する
	SetLocker = function( this, items, resources )

		this.LockerCountMax = items.max_locker			-- 最大所持可能数
		this.LockerUsable   = items.enabled_locker
		this:SetNameColor( this.LockerName, this.LockerUsable )

		this.LockerCountNow = this:SetItemEntites( items.locker, this.LockerItems, this.LockerCountMax, resources, this.LockerIcons )
		this.LockerCount:text( tostring( this.LockerCountNow ) )
		this:SetCountColor( this.LockerCount, this.LockerCountNow, this.LockerCountMax )
	end,

	-- モグサッチュルを設定する
	SetSatchel = function( this, items, resources )

		this.SatchelCountMax = items.max_satchel		-- 最大所持可能数
		this.SatchelUsable   = items.enabled_satchel
		this:SetNameColor( this.SatchelName, this.SatchelUsable )

		this.SatchelCountNow = this:SetItemEntites( items.satchel, this.SatchelItems, this.SatchelCountMax, resources, this.SatchelIcons )
		this.SatchelCount:text( tostring( this.SatchelCountNow ) )
		this:SetCountColor( this.SatchelCount, this.SatchelCountNow, this.SatchelCountMax )
	end,

	-- モグサックを設定する
	SetSack = function( this, items, resources )

		this.SackCountMax = items.max_sack				-- 最大所持可能数
		this.SackUsable   = items.enabled_sack
		this:SetNameColor( this.SackName, this.SackUsable )

		this.SackCountNow = this:SetItemEntites( items.sack, this.SackItems, this.SackCountMax, resources, this.SackIcons )
		this.SackCount:text( tostring( this.SackCountNow ) )
		this:SetCountColor( this.SackCount, this.SackCountNow, this.SackCountMax )
	end,

	-- モグケースを設定する
	SetCase = function( this, items, resources )

		this.CaseCountMax = items.max_case				-- 最大所持可能数
		this.CaseUsable   = items.enabled_case
		this:SetNameColor( this.CaseName, this.CaseUsable )

		this.CaseCountNow = this:SetItemEntites( items.case, this.CaseItems, this.CaseCountMax, resources, this.CaseIcons )
		this.CaseCount:text( tostring( this.CaseCountNow ) )
		this:SetCountColor( this.CaseCount, this.CaseCountNow, this.CaseCountMax )
	end,

	-- モグワードローブ1を設定する
	SetWardrobe1 = function( this, items, resources )

		this.Wardrobe1CountMax = items.max_wardrobe		-- 最大所持可能数
		this.Wardrobe1Usable   = items.enabled_wardrobe
		this:SetNameColor( this.Wardrobe1Name, this.Wardrobe1Usable )

		this.Wardrobe1CountNow = this:SetItemEntites( items.wardrobe,  this.Wardrobe1Items, this.Wardrobe1CountMax, resources, this.Wardrobe1Icons )
		this.Wardrobe1Count:text( tostring( this.Wardrobe1CountNow ) )
		this:SetCountColor( this.Wardrobe1Count, this.Wardrobe1CountNow, this.Wardrobe1CountMax )
	end,

	-- モグワードローブ2を設定する
	SetWardrobe2 = function( this, items, resources )

		this.Wardrobe2CountMax = items.max_wardrobe2	-- 最大所持可能数
		this.Wardrobe2Usable   = items.enabled_wardrobe2
		this:SetNameColor( this.Wardrobe2Name, this.Wardrobe2Usable )

		this.Wardrobe2CountNow = this:SetItemEntites( items.wardrobe2, this.Wardrobe2Items, this.Wardrobe2CountMax, resources, this.Wardrobe2Icons )
		this.Wardrobe2Count:text( tostring( this.Wardrobe2CountNow ) )
		this:SetCountColor( this.Wardrobe2Count, this.Wardrobe2CountNow, this.Wardrobe2CountMax )
	end,

	-- モグワードローブ3を設定する
	SetWardrobe3 = function( this, items, resources )

		this.Wardrobe3CountMax = items.max_wardrobe3	-- 最大所持可能数
		this.Wardrobe3Usable   = items.enabled_wardrobe3
		this:SetNameColor( this.Wardrobe3Name, this.Wardrobe3Usable )

		this.Wardrobe3CountNow = this:SetItemEntites( items.wardrobe3, this.Wardrobe3Items, this.Wardrobe3CountMax, resources, this.Wardrobe3Icons )
		this.Wardrobe3Count:text( tostring( this.Wardrobe3CountNow ) )
		this:SetCountColor( this.Wardrobe3Count, this.Wardrobe3CountNow, this.Wardrobe3CountMax )
	end,

	-- モグワードローブ4を設定する
	SetWardrobe4 = function( this, items, resources )

		this.Wardrobe4CountMax = items.max_wardrobe4	-- 最大所持可能数
		this.Wardrobe4Usable   = items.enabled_wardrobe4
		this:SetNameColor( this.Wardrobe4Name, this.Wardrobe4Usable )

		this.Wardrobe4CountNow = this:SetItemEntites( items.wardrobe4, this.Wardrobe4Items, this.Wardrobe4CountMax, resources, this.Wardrobe4Icons )
		this.Wardrobe4Count:text( tostring( this.Wardrobe4CountNow ) )
		this:SetCountColor( this.Wardrobe4Count, this.Wardrobe4CountNow, this.Wardrobe4CountMax )
	end,

	-- アイテム配列を設定する
	SetItemEntites = function( this, baseItems, copyItems, countMax, resources, icons )

		local size = #baseItems		-- 配列の要素数は所持数ではなく全体数
		local countNow = 0

		for i = 1, size, 1 do
			if( baseItems[ i ].id >  0 ) then
				countNow = countNow + 1
				copyItems[ countNow ].Id     = baseItems[ i ].id
				copyItems[ countNow ].Status = baseItems[ i ].status
				copyItems[ countNow ].Count  = baseItems[ i ].count
				copyItems[ i ].Stack  = resources.items[ baseItems[ i ].id ].stack
			end
		end

		if( countNow <  size ) then
			for i = countNow + 1, size, 1 do
				copyItems[ i ].Id     = 0
				copyItems[ i ].Status = 0
				copyItems[ i ].Count  = 0
				copyItems[ i ].Stack  = 0
			end
		end

		-- ソートが有効ならソートする
		if this.settings.Sort then
			this:SortItems( copyItems )
		end

		this:DrawItem( copyItems, countNow, countMax, icons )

		return countNow
	end,

	-- バッグをソートする
	SortItems = function( this, items )
		table.sort( items, function( a, b )
			if a.Status ~= b.Status then
				return a.Status >  b.Status
			end

			if( a.Count > 0 and b.Count > 0 ) then
				-- 最大までスタックしているアイテムを優先する
				local fsa = a.Stack - a.Count
				local fsb = b.Stack - b.Count
				if fsa ~= fsb  then
					return fsa <  fsb
				end
			end

			return a.Count >  b.Count
		end)
	end,

	-- 色を設定する
	DrawItem = function( this, copyItems, countNow, countMax, icons )
		if countNow >  0 then
			for i = 1, countNow, 1 do
				this:FillItem( copyItems[ i ], icons[ i ] )
			end
		end
		if countNow <  countMax then
			for i = countNow + 1, countMax, 1 do
				this:FillItem( nil, icons[ i ] )
			end
		end
	end,

	FillItem = function( this, item, icon )
		if( item ~= nil) then
			if( item.Status == DEFAULT_ITEM_STATUS ) then
				-- 消耗品
				if( item.Count <   item.Stack ) then
					-- 最大までスタックしていない
					icon:color(   0, 170, 170 )	-- 水
				else
					-- 最大までスタックしている
					icon:color( 245,  40,  40 )	-- 赤
				end
			elseif( item.Status == EQUIPPED_ITEM_STATUS ) then
				-- 装備品
				icon:color( 253, 252, 216 )	-- 黄
			elseif( item.Status == LINKSHELL_EQUIPPED_ITEM_STATUS ) then
				-- リンクシェル
				icon:color( 150, 255, 150 )	-- 緑
			elseif( item.Status == BAZAAR_ITEM_STATUS ) then
				-- バザー出品物
				icon:color( 255, 160,  30 )	-- 橙
			else
				-- 無し
				icon:color(   0,   0,   0 )
			end
		else
			-- 無し
			icon:color(   0,   0,   0 )
		end
	end,

	-- テンポラリを設定する
	SetTemporary = function( this, items )

		local count = 0
		for i = 1, items.temporary.max, 1 do
			if items.temporary[ i ].count >  0 then
				count = count + 1
			end
		end
		
		if count >  #this.TemporaryItems then
			count  = #this.TemporaryItems
		end

		this.TemporaryCountNow = count			-- 現在所持可能数
		this.TemporaryCountMax = count			-- 最大所持可能数
		this.TemporaryUsable   = count >  0
		this:SetNameColor( this.TemporaryName, this.TemporaryUsable )

		if( count >  0 ) then
			for i = 1, count, 1 do
				this.TemporaryIcons[ i ]:color( 253, 128, 250 )
			end
			this.TemporaryCount:text( tostring( this.TemporaryCountNow ) )
		end
	end,

	-- トレジャーを設定する
	SetTreasure = function( this, items )

		local count = 0
		for _k, _v in pairs( items.treasure ) do
			count = count + 1
		end

		this.TreasureCountNow = count			-- 現在所持可能数
		this.TreasureCountMax = count			-- 最大所持可能数
		this.TreasureUsable   = count >  0
		this:SetNameColor( this.TreasureName, this.TreasureUsable )

		if( count >  0 ) then
			for i = 1, count, 1 do
				this.TreasureIcons[ i ]:color( 160, 160, 160 )
			end
			this.TreasureCount:text( tostring( this.TreasureCountNow ) )
		end
	end,

	-- 各所持品が最大まで格納されている時の色変化対応
	SetNameColor = function( this, text, usable )
		if( usable == true ) then
			text:color( this.settings.TextStyle.Color.R, this.settings.TextStyle.Color.G, this.settings.TextStyle.Color.B )
		else
			text:color( 160, 160, 160 )
		end
	end,

	-- 各所持品が最大まで格納されている時の色変化対応
	SetCountColor = function( this, text, now, max )
		if( now <  max ) then
			text:color( this.settings.TextStyle.Color.R, this.settings.TextStyle.Color.G, this.settings.TextStyle.Color.B )
		else
			text:color( 255,  96,  64 )
		end
	end,

	-----------------------------------

	-- 表示中か判定する
	IsVisible = function( this )
		return this.Base:visible()
	end,

	-----------------------------------

	-- 関数：ＵＩを表示する
	Show = function( this )
		this.Base:show()

		-------------------------------

		-- 装備品を表示する
		this:ShowEquipment()

		-- 所持品を表示する
		this:ShowItems()

		-- 戦利品を表示する
		this:ShowTreasure()
	end,

	-- 装備品を表示する
	ShowEquipment = function( this )
		this.EquipmentBase:show()
		this.EquipmentName:show()
		this:ShowIcons( this.EquipmentIcons, 16 )
	end,

	-- 所持品を表示する
	ShowItems = function( this )
		this.InventoryName:show()
		if this.InventoryUsable == true and this.settings.Mode == 1 then
			this.InventoryBase:show()
			this:ShowIcons( this.InventoryIcons, this.InventoryCountMax )
		else
			this.InventoryBase:hide()
			this:ShowIcons( this.InventoryIcons, 0 )
		end
		if this.InventoryUsable == true then
			this.InventoryCount:show()
		else
			this.InventoryCount:hide()
		end

		this.Safe1Name:show()
		if this.Safe1Usable == true and this.settings.Mode == 1 then
			this.Safe1Base:show()
			this:ShowIcons( this.Safe1Icons, this.Safe1CountMax )
		else
			this.Safe1Base:hide()
			this:ShowIcons( this.Safe1Icons, 0 )
		end
		if this.Safe1Usable == true then
			this.Safe1Count:show()
		else
			this.Safe1Count:hide()
		end

		this.Safe2Name:show()
		if this.Safe2Usable == true and this.settings.Mode == 1 then
			this.Safe2Base:show()
			this:ShowIcons( this.Safe2Icons, this.Safe2CountMax )
		else
			this.Safe2Base:hide()
			this:ShowIcons( this.Safe2Icons, 0 )
		end
		if this.Safe2Usable == true then
			this.Safe2Count:show()
		else
			this.Safe2Count:hide()
		end

		this.StorageName:show()
		if this.StorageUsable == true and this.settings.Mode == 1 then
			this.StorageBase:show()
			this:ShowIcons( this.StorageIcons, this.StorageCountMax )
		else
			this.StorageBase:hide()
			this:ShowIcons( this.StorageIcons, 0 )
		end
		if this.StorageUsable == true then
			this.StorageCount:show()
		else
			this.StorageCount:hide()
		end

		this.LockerName:show()
		if this.LockerUsable == true and this.settings.Mode == 1 then
			this.LockerBase:show()
			this:ShowIcons( this.LockerIcons, this.LockerCountMax )
		else
			this.LockerBase:hide()
			this:ShowIcons( this.LockerIcons, 0 )
		end
		if this.LockerUsable == true then
			this.LockerCount:show()
		else
			this.LockerCount:hide()
		end

		this.SatchelName:show()
		if this.SatchelUsable == true and this.settings.Mode == 1 then
			this.SatchelBase:show()
			this:ShowIcons( this.SatchelIcons, this.SatchelCountMax )
		else
			this.SatchelBase:hide()
			this:ShowIcons( this.SatchelIcons, 0 )
		end
		if this.SatchelUsable == true then
			this.SatchelCount:show()
		else
			this.SatchelCount:hide()
		end

		this.SackName:show()
		if this.SackUsable == true and this.settings.Mode == 1 then
			this.SackBase:show()
			this:ShowIcons( this.SackIcons, this.SackCountMax )
		else
			this.SackBase:hide()
			this:ShowIcons( this.SackIcons, 0 )
		end
		if this.SackUsable == true then
			this.SackCount:show()
		else
			this.SackCount:hide()
		end

		this.CaseName:show()
		if this.CaseUsable == true and this.settings.Mode == 1 then
			this.CaseBase:show()
			this:ShowIcons( this.CaseIcons, this.CaseCountMax )
		else
			this.CaseBase:hide()
			this:ShowIcons( this.CaseIcons, 0 )
		end
		if this.CaseUsable == true then
			this.CaseCount:show()
		else
			this.CaseCount:hide()
		end

		this.Wardrobe1Name:show()
		if this.Wardrobe1Usable == true and this.settings.Mode == 1 then
			this.Wardrobe1Base:show()
			this:ShowIcons( this.Wardrobe1Icons, this.Wardrobe1CountMax )
		else
			this.Wardrobe1Base:hide()
			this:ShowIcons( this.Wardrobe1Icons, 0 )
		end
		if this.Wardrobe1Usable == true then
			this.Wardrobe1Count:show()
		else
			this.Wardrobe1Count:hide()
		end

		this.Wardrobe2Name:show()
		if this.Wardrobe2Usable == true and this.settings.Mode == 1 then
			this.Wardrobe2Base:show()
			this:ShowIcons( this.Wardrobe2Icons, this.Wardrobe2CountMax )
		else
			this.Wardrobe2Base:hide()
			this:ShowIcons( this.Wardrobe2Icons, 0 )
		end
		if this.Wardrobe2Usable == true then
			this.Wardrobe2Count:show()
		else
			this.Wardrobe2Count:hide()
		end

		this.Wardrobe3Name:show()
		if this.Wardrobe3Usable == true and this.settings.Mode == 1 then
			this.Wardrobe3Base:show()
			this:ShowIcons( this.Wardrobe3Icons, this.Wardrobe3CountMax )
		else
			this.Wardrobe3Base:hide()
			this:ShowIcons( this.Wardrobe3Icons, 0 )
		end
		if this.Wardrobe3Usable == true then
			this.Wardrobe3Count:show()
		else
			this.Wardrobe3Count:hide()
		end

		this.Wardrobe4Name:show()
		if this.Wardrobe4Usable == true and this.settings.Mode == 1 then
			this:ShowIcons( this.Wardrobe4Icons, this.Wardrobe4CountMax )
			this.Wardrobe4Count:show()
		else
			this.Wardrobe4Base:hide()
			this:ShowIcons( this.Wardrobe4Icons, 0 )
		end
		if this.Wardrobe4Usable == true then
			this.Wardrobe4Base:show()
		else
			this.Wardrobe4Count:hide()
		end

		this.TemporaryName:show()
		if this.TemporaryUsable == true and this.settings.Mode == 1 then
			this.TemporaryBase:show()
			this:ShowIcons( this.TemporaryIcons, this.TemporaryCountMax )
		else
			this.TemporaryBase:hide()
			this:ShowIcons( this.TemporaryIcons, 0 )
		end
		if this.TemporaryUsable == true then
			this.TemporaryCount:show()
		else
			this.TemporaryCount:hide()
		end
	end,

	-- 戦利品を表示する
	ShowTreasure = function( this )
		this.TreasureName:show()
		if this.TreasureUsable == true and this.settings.Mode == 1 then
			this.TreasureBase:show()
			this:ShowIcons( this.TreasureIcons, this.TreasureCountMax )
		else
			this.TreasureBase:hide()
			this:ShowIcons( this.TreasureIcons, 0 )
		end
		if this.TreasureUsable == true then
			this.TreasureCount:show()
		else
			this.TreasureCount:hide()
		end
	end,

	ShowIcons = function( this, icons, countMax )
		if countMax >  0 then
			for i = 1, countMax, 1 do
				icons[ i ]:show()
			end
		end

		local size = #icons
		if countMax <  size then
			for i = countMax + 1, size, 1 do
				icons[ i ]:hide()
			end
		end
	end,

	-- 関数:ＵＩを消去する
	Hide = function( this )
		this.Base:hide()

		-------------------------------------------------------
		this.EquipmentBase:hide()
		this.EquipmentName:hide()
		this:HideIcons( this.EquipmentIcons )

		-------------------------------

		this.InventoryBase:hide()
		this.InventoryName:hide()
		this:HideIcons( this.InventoryIcons )
		this.InventoryCount:hide()

		this.Safe1Base:hide()
		this.Safe1Name:hide()
		this:HideIcons( this.Safe1Icons )
		this.Safe1Count:hide()

		this.Safe2Base:hide()
		this.Safe2Name:hide()
		this:HideIcons( this.Safe2Icons )
		this.Safe2Count:hide()

		this.StorageBase:hide()
		this.StorageName:hide()
		this:HideIcons( this.StorageIcons )
		this.StorageCount:hide()

		this.LockerBase:hide()
		this.LockerName:hide()
		this:HideIcons( this.LockerIcons )
		this.LockerCount:hide()

		this.SatchelBase:hide()
		this.SatchelName:hide()
		this:HideIcons( this.SatchelIcons )
		this.SatchelCount:hide()

		this.SackBase:hide()
		this.SackName:hide()
		this:HideIcons( this.SackIcons )
		this.SackCount:hide()

		this.CaseBase:hide()
		this.CaseName:hide()
		this:HideIcons( this.CaseIcons )
		this.CaseCount:hide()

		this.Wardrobe1Base:hide()
		this.Wardrobe1Name:hide()
		this:HideIcons( this.Wardrobe1Icons )
		this.Wardrobe1Count:hide()

		this.Wardrobe2Base:hide()
		this.Wardrobe2Name:hide()
		this:HideIcons( this.Wardrobe2Icons )
		this.Wardrobe2Count:hide()

		this.Wardrobe3Base:hide()
		this.Wardrobe3Name:hide()
		this:HideIcons( this.Wardrobe3Icons )
		this.Wardrobe3Count:hide()

		this.Wardrobe4Base:hide()
		this.Wardrobe4Name:hide()
		this:HideIcons( this.Wardrobe4Icons )
		this.Wardrobe4Count:hide()

		this.TemporaryBase:hide()
		this.TemporaryName:hide()
		this:HideIcons( this.TemporaryIcons )
		this.TemporaryCount:hide()

		this.TreasureBase:hide()
		this.TreasureName:hide()
		this:HideIcons( this.TreasureIcons )
		this.TreasureCount:hide()
	end,

	HideIcons = function( this, icons )
		for i = 1, #icons, 1 do
			icons[ i ]:hide()
		end
	end,

	-- アルファを設定する
	SetAlpha = function( this, factor )
		local a = 75 * factor

		this.EquipmentBase:alpha( a )
		this:SetTextAlpha( this.EquipmentName, factor )
		this:SetAlphaItems( this.EquipmentIcons, factor )

		-------------------------------

		this.InventoryBase:alpha( a )
		this:SetTextAlpha( this.InventoryName, factor )
		this:SetAlphaItems( this.InventoryIcons, factor )
		this:SetTextAlpha( this.InventoryCount, factor )

		this.Safe1Base:alpha( a )
		this:SetTextAlpha( this.Safe1Name, factor )
		this:SetAlphaItems( this.Safe1Icons, factor )
		this:SetTextAlpha( this.Safe1Count, factor )

		this.Safe2Base:alpha( a )
		this:SetTextAlpha( this.Safe2Name, factor )
		this:SetAlphaItems( this.Safe2Icons, factor )
		this:SetTextAlpha( this.Safe2Count, factor )

		this.StorageBase:alpha( a )
		this:SetTextAlpha( this.StorageName, factor )
		this:SetAlphaItems( this.StorageIcons, factor )
		this:SetTextAlpha( this.StorageCount, factor )

		this.LockerBase:alpha( a )
		this:SetTextAlpha( this.LockerName, factor )
		this:SetAlphaItems( this.LockerIcons, factor )
		this:SetTextAlpha( this.LockerCount, factor )

		this.SatchelBase:alpha( a )
		this:SetTextAlpha( this.SatchelName, factor )
		this:SetAlphaItems( this.SatchelIcons, factor )
		this:SetTextAlpha( this.SatchelCount, factor )

		this.SackBase:alpha( a )
		this:SetTextAlpha( this.SackName, factor )
		this:SetAlphaItems( this.SackIcons, factor )
		this:SetTextAlpha( this.SackCount, factor )

		this.CaseBase:alpha( a )
		this:SetTextAlpha( this.CaseName, factor )
		this:SetAlphaItems( this.CaseIcons, factor )
		this:SetTextAlpha( this.CaseCount, factor )

		this.Wardrobe1Base:alpha( a )
		this:SetTextAlpha( this.Wardrobe1Name, factor )
		this:SetAlphaItems( this.Wardrobe1Icons, factor )
		this:SetTextAlpha( this.Wardrobe1Count, factor )

		this.Wardrobe2Base:alpha( a )
		this:SetTextAlpha( this.Wardrobe2Name, factor )
		this:SetAlphaItems( this.Wardrobe2Icons, factor )
		this:SetTextAlpha( this.Wardrobe2Count, factor )

		this.Wardrobe3Base:alpha( a )
		this:SetTextAlpha( this.Wardrobe3Name, factor )
		this:SetAlphaItems( this.Wardrobe3Icons, factor )
		this:SetTextAlpha( this.Wardrobe3Count, factor )

		this.Wardrobe4Base:alpha( a )
		this:SetTextAlpha( this.Wardrobe4Name, factor )
		this:SetAlphaItems( this.Wardrobe4Icons, factor )
		this:SetTextAlpha( this.Wardrobe4Count, factor )
		
		this.TemporaryBase:alpha( a )
		this:SetTextAlpha( this.TemporaryName, factor )
		this:SetAlphaItems( this.TemporaryIcons, factor )
		this:SetTextAlpha( this.TemporaryCount, factor )

		this.TreasureBase:alpha( a )
		this:SetTextAlpha( this.TreasureName, factor )
		this:SetAlphaItems( this.TreasureIcons, factor )
		this:SetTextAlpha( this.TreasureCount, factor )
	end,

	SetTextAlpha = function( this, text, factor )
		text:alpha( this.settings.TextStyle.Color.A * factor )
		text:stroke_alpha( this.settings.TextStyle.Stroke.Color.A * factor )
	end,

	SetAlphaItems = function( this, items, factor )
		local a = 255 * factor

		for i = 1, #items, 1 do
			items[ i ]:alpha( a )
		end
	end,

	isFadeInProcessing  = false,
	isFadeOutProcessing = false,
	fadeInBaseTime  = 0,
	fadeOutBaseTime = 0,

	-- フェードイン開始
	FadeIn = function( this )
		if( this.isFadeInProcessing == true ) then return end
		this.isFadeOutProcessing = false

		if( this.Base:visible() == true ) then return end

		this:Show()

		this:SetAlpha( 0 )
		this.fadeInBaseTime = os.clock()
		this.isFadeInProcessing = true
	end,

	-- フェードアウト開始
	FadeOut = function( this )
		if( this.isFadeOutProcessing == true ) then return end
		this.isFadeInProcessing = false

		if( this.Base:visible() == false ) then end

		this.fadeOutBaseTime = os.clock()
		this.isFadeOutProcessing = true
	end,

	-- 表示更新処理
	Update = function( this )

		-------------------------------------------------------
		-- フェードイン
		if( this.isFadeInProcessing == true ) then
			local fadeTime = this.settings.FadeTime
			if( fadeTime <  0.1 ) then fadeTime = 0.1 end
			local factor = ( os.clock() - this.fadeInBaseTime ) / fadeTime
			if( factor >= 1 ) then
				factor  = 1
				this.isFadeInProcessing = false
			end

			this:SetAlpha( factor )
		end

		-------------------------------------------------------
		-- フェードアウト
		if( this.isFadeOutProcessing == true ) then
			local fadeTime = this.settings.FadeTime
			if( fadeTime <  0.1 ) then fadeTime = 0.1 end
			local factor = ( os.clock() - this.fadeOutBaseTime ) / fadeTime
			if( factor >= 1 ) then
				factor  = 1
				this.isFadeOutProcessing = false
			end

			this:SetAlpha( 1 - factor )
			if( factor == 1 ) then this:Hide() end
		end
	end,

	-------------------------------------------------------------------

	-- 位置を初期化する
	ResetPosition = function( this )
		this.settings.Offset.X = 0
		this.settings.Offset.Y = 0
	end,

	-- 位置の反映を行う
	ApplyPosition = function( this )
		local w = this.Base:width()
		local h = this.Base:height()

		local baseX, baseY = this:GetBasePosition( w, h )

		-- Offset にはドラッグを反映させた値が入っている(ドラッグしていない場合は初期状態で座標が設定されていない事に注意する)
		local x = baseX + this.settings.Offset.X
		local y = baseY + this.settings.Offset.Y

		this.Base:pos( x, y )

		this.EquipmentBase:pos( x -  1, y -  1 )
		this.EquipmentName:pos( x +  1, y - 16 )
		this:ApplyPositionItems( this.EquipmentIcons, x, y, 4 )
		x = x + 16 + 2

		-------------------------------
		
		local oy
		if this.settings.Mode == 1 then
			oy = 64
		else
			oy =  2
		end

		this.InventoryBase:pos( x -  1, y -  1 )
		this.InventoryName:pos( x +  3, y - 16 )
		this:ApplyPositionItems( this.InventoryIcons, x, y, 5 )
		this.InventoryCount:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.Safe1Base:pos( x -  1, y -  1 )
		this.Safe1Name:pos( x -  1, y - 16 )
		this:ApplyPositionItems( this.Safe1Icons, x, y, 5 )
		this.Safe1Count:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.Safe2Base:pos( x -  1, y -  1 )
		this.Safe2Name:pos( x -  1, y - 16 )
		this:ApplyPositionItems( this.Safe2Icons, x, y, 5 )
		this.Safe2Count:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.StorageBase:pos( x -  1, y -  1 )
		this.StorageName:pos( x +  3, y - 16 )
		this:ApplyPositionItems( this.StorageIcons, x, y, 5 )
		this.StorageCount:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.LockerBase:pos( x -  1, y -  1 )
		this.LockerName:pos( x +  3, y - 16 )
		this:ApplyPositionItems( this.LockerIcons, x, y, 5 )
		this.LockerCount:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.SatchelBase:pos( x -  1, y -  1 )
		this.SatchelName:pos( x +  3, y - 16 )
		this:ApplyPositionItems( this.SatchelIcons, x, y, 5 )
		this.SatchelCount:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.SackBase:pos( x -  1, y -  1 )
		this.SackName:pos( x +  3, y - 16 )
		this:ApplyPositionItems( this.SackIcons, x, y, 5 )
		this.SackCount:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.CaseBase:pos( x -  1, y -  1 )
		this.CaseName:pos( x +  3, y - 16 )
		this:ApplyPositionItems( this.CaseIcons, x, y, 5 )
		this.CaseCount:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.Wardrobe1Base:pos( x -  1, y -  1 )
		this.Wardrobe1Name:pos( x -  1, y - 16 )
		this:ApplyPositionItems( this.Wardrobe1Icons, x, y, 5 )
		this.Wardrobe1Count:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.Wardrobe2Base:pos( x -  1, y -  1 )
		this.Wardrobe2Name:pos( x -  1, y - 16 )
		this:ApplyPositionItems( this.Wardrobe2Icons, x, y, 5 )
		this.Wardrobe2Count:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.Wardrobe3Base:pos( x -  1, y -  1 )
		this.Wardrobe3Name:pos( x -  1, y - 16 )
		this:ApplyPositionItems( this.Wardrobe3Icons, x, y, 5 )
		this.Wardrobe3Count:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.Wardrobe4Base:pos( x -  1, y -  1 )
		this.Wardrobe4Name:pos( x -  1, y - 16 )
		this:ApplyPositionItems( this.Wardrobe4Icons, x, y, 5 )
		this.Wardrobe4Count:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.TemporaryBase:pos( x -  1, y -  1 )
		this.TemporaryName:pos( x +  3, y - 16 )
		this:ApplyPositionItems( this.TemporaryIcons, x, y, 5 )
		this.TemporaryCount:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
		x = x + 20 + 2

		this.TreasureBase:pos( x -  1, y -  1 )
		this.TreasureName:pos( x +  3, y - 16 )
		this:ApplyPositionItems( this.TreasureIcons, x, y, 5 )
		this.TreasureCount:pos( - ( UIScreen.Width - ( x + 21 ) ), y + oy )
	end,

	ApplyPositionItems = function( this, items, baseX, baseY, length )
		local x = baseX
		local y = baseY

		for i = 1, #items, 1 do
			items[ i ]:pos( x, y )
			if( ( i % length ) ~= 0 ) then
				x = x + 4
			else
				x = baseX
				y = y + 4
			end
		end
	end,

	-- Anchor Pivot からなる基準位置を取得する
	GetBasePosition = function( this, width, height )
		local baseX = UIScreen.Width  * this.settings.Anchor.X - width  * this.settings.Pivot.X
		local baseY = UIScreen.Height * this.settings.Anchor.Y - height * this.settings.Pivot.Y
		return baseX, baseY
	end,

	-----------------------------------------------------------

	-- ドラッグの設定を行う
	SetDraggable = function( this, state )
		this.settings.Draggable = state
		this.Base:draggable( state )
	end,

	isDragging = false,
	draggingPosition = { X = 0, Y = 0 },
	
	-- ドラッグ処理
	ProcessDragging = function( this, state )
		if( state == 1 ) then
			this.isDragging = true	-- ドラッグ中
			this.draggingPosition.X, this.draggingPosition.Y = this.Base:pos()
		elseif( state == 2 ) then
			this.isDragging = false	-- ドラッグ終了

			-- 位置に変化があった時に true を返す
			local x, y = this.Base:pos()
			if( x ~= this.draggingPosition.X or y ~= this.draggingPosition.Y ) then
				return true
			end
		end

		if( this.isDragging == true ) then
			-- ドラッグ中はオフセット値を更新する
			local x, y = this.Base:pos()
			if( x ~= this.draggingPosition.X or y ~= this.draggingPosition.Y ) then
				local w = this.Base:width()
				local h = this.Base:height()
				local baseX, baseY = this:GetBasePosition( w, h )
				this.settings.Offset.X = x - baseX
				this.settings.Offset.Y = y - baseY
				this:ApplyPosition()	-- 表示に反映させる
			end
		end

		return false
	end,
}

-- チャットログに文字列を出力する
function PrintFF11( text )
	if( text == nil or #text == 0 ) then return end
	windower.add_to_chat( 207,  windower.to_shift_jis( text ) )
end

return ui

