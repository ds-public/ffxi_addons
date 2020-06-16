local Images = require( 'images' )
local Texts  = require( 'texts' )

-- Windower設定取得用インスタンス
local WindowerSettings = windower.get_windower_settings()

-- ＵＩ解像度
local UIScreen = {
	Width  = WindowerSettings.ui_x_res,
	Height = WindowerSettings.ui_y_res,
}

local ui =
{
	-------------------------------------------------------------------
	-- public

	Region					= nil,
	RegionSettings			= nil,

	Zone					= nil,
	ZoneSettings			= nil,

	-------------------------------------------------------------------

	-- private

	settings = {},	-- 設定の参照を保持する

	isLoaded = false,
	loadingWaitTime,

	-------------------------------------------------------------------

	-- 文字のスタイルを生成して返す
	GetTextStyle = function( this, style, size, draggable )
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
				right		= false,
				bottom		= false,
				draggable	= draggable,
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

		-- Region
		this.RegionSettings = this:GetTextStyle( settings.TextStyle, settings.Region.Size, settings.Draggable )
		this.Region = Texts.new( this.RegionSettings )
		this.Region:text( " " )

		-- Zone
		this.ZoneSettings = this:GetTextStyle( settings.TextStyle, settings.Zone.Size, settings.Draggable )
		this.Zone = Texts.new( this.ZoneSettings )
		this.Zone:text( " " )

		-------------------------------------------------------

		-- 待ち時間を設定する
		this.isLoaded = false
		this.loadingWaitTime = os.clock()
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

	-- 表示中か判定する
	IsVisible = function( this )
		return this.isFadeProcessing 
	end,

	-- 表示中なら終了させる
	FadeBreak = function( this )
		this.isFadeBreak = true
	end,

	isWaiting = false,
	waitBaseTime = 0,

	-- 最新状態をセットする
	Set = function( this, regionName, zoneName )
		-- Region Zone
		regionName = string.format( this.settings.Region.Format, regionName )
		this.Region:text( regionName )
		zoneName = string.format( this.settings.Zone.Format, zoneName )
		this.Zone:text( zoneName )

		this.isWaiting = true
		this.waitBaseTime = os.clock()
	end,

	-- ＵＩを表示する
	Show = function( this )
		this.isFadeProcessing = true	-- フェード処理開始

		this.Region:show()
		this.Zone:show()
	end,

	-- ＵＩを消去する
	Hide = function( this )
		this.Region:hide()
		this.Zone:hide()

		this.isFadeProcessing = false	-- フェード処理終了
	end,

	SetAlpha = function( this, factor )
		-- Region Zone
		this.Region:alpha( this.settings.TextStyle.Color.A * factor )
		this.Region:stroke_alpha( this.settings.TextStyle.Stroke.Color.A * factor )
		this.Zone:alpha( this.settings.TextStyle.Color.A * factor )
		this.Zone:stroke_alpha( this.settings.TextStyle.Stroke.Color.A * factor )
	end,

	isFadeProcessing    = false,
	isFadeInProcessing  = false,
	isKeepProcessing    = false,
	isFadeOutProcessing = false,
	fadeInBaseTime  = 0,
	keepBaseTime    = 0,
	fadeOutBaseTime = 0,

	isFadeBreak = false,

	-- フェードイン開始
	FadeIn = function( this )
		if( this.isFadeInProcessing == true ) then return end
		this.isFadeOutProcessing = false

		-- Region Zone
		if( this.Region:visible() == true or this.Zone:visible() == true ) then return end
		this:Show()

		this:SetAlpha( 0 )
		this.fadeInBaseTime = os.clock()
		this.isFadeInProcessing = true
	end,

	-- キープ
	Keep = function( this )
		if( this.isKeepProcessing == true ) then return end

		this.keepBaseTime = os.clock()
		this.isKeepProcessing = true
	end,

	-- フェードアウト開始
	FadeOut = function( this )
		if( this.isFadeOutProcessing == true ) then return end
		this.isFadeInProcessing = false

		-- Region Zone
		if( this.Region:visible() == false and this.Zone:visible() == false ) then return end

		this.fadeOutBaseTime = os.clock()
		this.isFadeOutProcessing = true
	end,

	-- 表示更新処理
	Update = function( this )

		-------------------------------------------------------
		-- フェードイン
		if( this.isFadeInProcessing == true ) then

			-- ウェイトチェック
			if( this.isWaiting == true ) then
				local waitTime = this.settings.WaitTime
				if( waitTime <  0.1 ) then waitTime = 0.1 end
				local currentTime = os.clock()
				local time = currentTime - this.waitBaseTime
				if( time <  waitTime ) then return end 
				this.isWaiting = false
				this:ApplyPosition()
				this.fadeInBaseTime = currentTime
			end

			local fadeTime = this.settings.FadeTime
			if( fadeTime <  0.1 ) then fadeTime = 0.1 end
			local factor = ( os.clock() - this.fadeInBaseTime ) / fadeTime
			if( factor >= 1 ) then
				factor  = 1
				this.isFadeInProcessing = false
				this:Keep()	-- キープへ
			end

			this:SetAlpha( factor )
		end

		-------------------------------------------------------
		-- キープ
		if( this.isKeepProcessing == true ) then
			local keepTime = this.settings.KeepTime
			if( keepTime <  0.1 ) then keepTime = 0.1 end
			local factor = ( os.clock() - this.keepBaseTime ) / keepTime
			if( factor >= 1 or this.isFadeBreak == true ) then
				factor  = 1
				this.isKeepProcessing = false
				this:FadeOut() 	-- フェードアウトへ
				this.isFadeBreak = false
			end
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

		-------------------------------------------------------

		-- 使われなかったウェイトを処理する
		if( this.isWaiting == true ) then
			local currentTime = os.clock()
			local time = currentTime - this.waitBaseTime
			if( time >= 0.1) then
				this.isWaiting = false
				this:ApplyPosition()
			end
		end
	end,

	-------------------------------------------------------------------

	-- 位置を初期化する
	ResetPosition = function( this )
		-- Region Zone
		this.settings.Region.Offset.X =   0
		this.settings.Region.Offset.Y = -16
		this.settings.Zone.Offset.X =   0
		this.settings.Zone.Offset.Y =  16
	end,

	-- 位置の反映を行う
	ApplyPosition = function( this )
		-- Region Zone
		if( this.Region:visible() == false or this.Zone:visible() == false ) then return end
		local w, h, x, y, baseX, baseY

		-- Region
		w, h = this.Region:extents()

		baseX, baseY = this:GetBasePosition( this.settings.Region, w, h )

		-- Offset にはドラッグを反映させた値が入っている(ドラッグしていない場合は初期状態で座標が設定されていない事に注意する)
		x = baseX + this.settings.Region.Offset.X
		y = baseY + this.settings.Region.Offset.Y

		this.Region:pos( x, y )

		-- Zone
		w, h = this.Zone:extents()

		baseX, baseY = this:GetBasePosition( this.settings.Zone, w, h )

		-- Offset にはドラッグを反映させた値が入っている(ドラッグしていない場合は初期状態で座標が設定されていない事に注意する)
		x = baseX + this.settings.Zone.Offset.X
		y = baseY + this.settings.Zone.Offset.Y

		this.Zone:pos( x, y )
	end,

	-- Anchor Pivot からなる基準位置を取得する
	GetBasePosition = function( this, position, width, height )
		local baseX = UIScreen.Width  * position.Anchor.X - width  * position.Pivot.X
		local baseY = UIScreen.Height * position.Anchor.Y - height * position.Pivot.Y
		return baseX, baseY
	end,

	-----------------------------------------------------------

	-- ドラッグの設定を行う
	SetDraggable = function( this, state )
		this.settings.Draggable = state

		this.Region:draggable( state )
		this.RegionSettings.flags.draggable = state

		this.Zone:draggable( state )
		this.ZoneSettings.flags.draggable = state
	end,

	isDragging = false,
	draggingRegionPosition = { X = 0, Y = 0 },
	draggingZonePosition = { X = 0, Y = 0 },
	
	-- ドラッグ処理
	ProcessDragging = function( this, state )
		if( state == 1 ) then
			this.isDragging = true	-- ドラッグ中
			-- Region Zone
			this.draggingRegionPosition.X, this.draggingRegionPosition.Y = this.Region:pos()
			this.draggingZonePosition.X,   this.draggingZonePosition.Y = this.Zone:pos()
		elseif( state == 2 ) then
			this.isDragging = false	-- ドラッグ終了

			-- 位置に変化があった時に true を返す
			-- Region Zone
			local rx, ry = this.Region:pos()
			local zx, zy = this.Zone:pos()
			if
			(
				rx ~= this.draggingRegionPosition.X or ry ~= this.draggingRegionPosition.Y or
				zx ~= this.draggingZonePosition.x   or zy ~= this.draggingZonePosition.Y
			) then
				return true
			end
		end

		if( this.isDragging == true ) then
			-- ドラッグ中はオフセット値を更新する
			-- Region Zone
			local rx, ry = this.Region:pos()
			local zx, zy = this.Zone:pos()
			if
			(
				rx ~= this.draggingRegionPosition.X or ry ~= this.draggingRegionPosition.Y or
				zx ~= this.draggingZonePosition.x   or zy ~= this.draggingZonePosition.Y
			) then
				if( rx ~= this.draggingRegionPosition.X or ry ~= this.draggingRegionPosition.Y ) then
					-- Region
					local w, h = this.Region:extents()
					local baseX, baseY = this:GetBasePosition( this.settings.Region, w, h )
					this.settings.Region.Offset.X = rx - baseX
					this.settings.Region.Offset.Y = ry - baseY
				end
				if( zx ~= this.draggingZonePosition.X or zy ~= this.draggingZonePosition.Y ) then
					-- Zone
					local w, h = this.Zone:extents()
					local baseX, baseY = this:GetBasePosition( this.settings.Zone, w, h )
					this.settings.Zone.Offset.X = zx - baseX
					this.settings.Zone.Offset.Y = zy - baseY
				end
				this:ApplyPosition()
			end
		end

		return false
	end,

	-----------------------------------------------------------
}

return ui
