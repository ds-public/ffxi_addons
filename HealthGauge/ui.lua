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

	Window = nil,
	HPGauge = nil,
	HPValue = nil,
	MPGauge = nil,
	MPValue = nil,
	TPGauge = nil,
	TPValue = nil,

	-------------------------------------------------------------------

	-- private

	settings = {},	-- 設定の参照を保持する

	isLoaded = false,
	loadingWaitTime,

	uiInfo = nil,
	strokeColor = nil,


	-------------------------------------------------------------------

	-- 画像のスタイルを生成して返す
	GetImageStyle = function( this, path, size, draggable )
		local data =
		{
			texture = {
				path			= windower.addon_path .. 'images/' .. path,
				fit				= true,
			},
			size = {
				width			= size.Width,
				height			= size.Height,
			},
			repeatable = {
				x				= 1,
				y				= 1,
			},
			color = {
				red				= 255,
				green			= 255,
				blue			= 255,
				alpha			= 255,
			},
			draggable			= draggable,
			visible				= false		-- 初期状態では非表示
		}
		return data
	end,

	-- 文字のスタイルを生成して返す
	GetTextStyle = function( this, style, color, strokeColor )
		local data =
		{
			padding				= 0,
			text = {
				font			= style.Font,
				fonts			= style.Fonts,
				size			= style.Size,
				red				= color.R,
				green			= color.G,
				blue			= color.B,
				alpha			= color.A,
				stroke = {
					width		= style.StrokeWidth,
					red			= strokeColor.R,
					green		= strokeColor.G,
					blue		= strokeColor.B,
					alpha		= strokeColor.A,
				},
			},
			bg = {
				visible		= false,
			},
			flags = {
				bold		= style.Flags.Bold,
				italic		= style.Flags.Italic,
				right		= true,
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

		-- UI全体情報を選択しておく
		if( settings.IsCompact == false ) then
			this.uiInfo = settings.General
		else
			this.uiInfo = settings.Compact
		end

		-- 縁取り色を選択しておく
		if( settings.Theme == 'ffxiv' ) then
			this.strokeColor = settings.FFXIV.Stroke.Color
		else
			this.strokeColor = settings.Other.Stroke.Color
		end

		-------------------------------

		-- Window
		this.Window = Images.new( this:GetImageStyle(
			settings.Theme .. '/' .. this.uiInfo.ImagePaths.Window,
			this.uiInfo.Window.Size,
			settings.Draggable	-- 初期ではドラッグ可能
		) )

		-- HPGauge
		this.HPGauge = Images.new( this:GetImageStyle(
			settings.Theme .. '/' .. this.uiInfo.ImagePaths.HPGauge,
			this.uiInfo.HP.Gauge.Size,
			false
		) )

		-- HPValue
		this.HPValue = Texts.new( this:GetTextStyle( settings.TextStyle, settings.Normal.Color, this.strokeColor ) )
		this.HPValue:text( "0" )

		-- MPGauge
		this.MPGauge = Images.new( this:GetImageStyle(
			settings.Theme .. '/' .. this.uiInfo.ImagePaths.MPGauge,
			this.uiInfo.MP.Gauge.Size,
			false
		) )

		-- MPValue
		this.MPValue = Texts.new( this:GetTextStyle( settings.TextStyle, settings.Normal.Color, this.strokeColor ) )
		this.MPValue:text( "0" )

		-- TPGauge
		this.TPGauge = Images.new( this:GetImageStyle(
			settings.Theme .. '/' .. this.uiInfo.ImagePaths.TPGauge,
			this.uiInfo.TP.Gauge.Size,
			false
		) )

		-- TPValue
		this.TPValue = Texts.new( this:GetTextStyle( settings.TextStyle, settings.Normal.Color, this.strokeColor ) )
		this.TPValue:text( "0" )

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

		-- 画像の指定サイズと実体サイズが異なるものをきちんと合わせる
		images =
		{
			this.Window, this.HPGauge, this.MPGauge, this.TPGauge,
		}
		for i = 1, #images do
			if( i == 1 ) then
				images[ i ]:size( images[ i ]:width(), images[ i ]:height() )
			else
				images[ i ]:size( 0, images[ i ]:height() )
			end
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

	hpGaugeWidth = 0,
	mpGaugeWidth = 0,
	tpGaugeWidth = 0,

	Set = function( this, hpValue, hpRatio, mpValue, mpRatio, tpValue, apply )
		
		local tpRatio ;
		if( tpValue <  1000 ) then 
			tpRatio = tpValue / 10
		else
			tpRatio = 100
		end

		this.HPValue:text( tostring( hpValue ) )
		this.HPValue:color( this.settings.Normal.Color.R, this.settings.Normal.Color.G, this.settings.Normal.Color.B )
		this.hpGaugeWidth = this.uiInfo.HP.Gauge.Size.Width * hpRatio / 100
		if( apply == true ) then this.HPGauge:width( this.hpGaugeWidth ) end

		this.MPValue:text( tostring( mpValue ) )
		this.MPValue:color( this.settings.Normal.Color.R, this.settings.Normal.Color.G, this.settings.Normal.Color.B )
		this.mpGaugeWidth = this.uiInfo.MP.Gauge.Size.Width * mpRatio / 100
		if( apply == true ) then this.MPGauge:width( this.mpGaugeWidth ) end

		this.TPValue:text( tostring( tpValue ) )
		if( tpValue <  1000 ) then
			this.TPValue:color( this.settings.Normal.Color.R, this.settings.Normal.Color.G, this.settings.Normal.Color.B )
		else
			this.TPValue:color( this.settings.FullTP.Color.R, this.settings.FullTP.Color.G, this.settings.FullTP.Color.B )
		end
		this.tpGaugeWidth = this.uiInfo.TP.Gauge.Size.Width * tpRatio / 100
		if( apply == true ) then this.TPGauge:width( this.tpGaugeWidth ) end
	end,

	-- 関数:メインターゲットゲージを消去する
	Hide = function( this )
		this.Window:hide()
		this.HPGauge:hide()
		this.HPValue:hide()
		this.MPGauge:hide()
		this.MPValue:hide()
		this.TPGauge:hide()
		this.TPValue:hide()
	end,

	-- 全体の透明度を設定する
	SetAlpha = function( this, factor )
		local a = 255 * factor
		this.Window:alpha( a )
		this.HPGauge:alpha( a )
		this.HPValue:alpha( this.settings.Normal.Color.A * factor )
		this.HPValue:stroke_alpha( this.strokeColor.A * factor )
		this.MPGauge:alpha( a )
		this.MPValue:alpha( this.settings.Normal.Color.A * factor )
		this.MPValue:stroke_alpha( this.strokeColor.A * factor )
		this.TPGauge:alpha( a )
		this.TPValue:alpha( this.settings.Normal.Color.A * factor )
		this.TPValue:stroke_alpha( this.strokeColor.A * factor )
	end,

	isFadeInProcessing  = false,
	isFadeOutProcessing = false,
	fadeInBaseTime  = 0,
	fadeOutBaseTime = 0,

	-- フェードイン開始
	FadeIn = function( this )
		if( this.isFadeInProcessing == true ) then return end
		this.isFadeOutProcessing = false

		if( this.Window:visible() == true ) then return end

		this.Window:show()
		this.HPGauge:show()
		this.HPValue:show()
		this.MPGauge:show()
		this.MPValue:show()
		this.TPGauge:show()
		this.TPValue:show()

		this:SetAlpha( 0 )
		this.fadeInBaseTime = os.clock()
		this.isFadeInProcessing = true
	end,

	-- フェードアウト開始
	FadeOut = function( this )
		if( this.isFadeOutProcessing == true ) then return end
		this.isFadeInProcessing = false

		if( this.Window:visible() == false ) then end

		this.fadeOutBaseTime = os.clock()
		this.isFadeOutProcessing = true
	end,

	-- 表示更新処理
	Update = function( this )

		-- ゲージ
		this:UpdateGauge( this.HPGauge, this.hpGaugeWidth )
		this:UpdateGauge( this.MPGauge, this.mpGaugeWidth )
		this:UpdateGauge( this.TPGauge, this.tpGaugeWidth )

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

	-- ゲージを更新する
	UpdateGauge = function( this, uiGauge, gaugeWidth )
		local widthNew = gaugeWidth
		local widthOld = uiGauge:width()

		if( widthNew ~= widthOld ) then
			if( widthNew <  widthOld ) then
				-- 減少
				local widthNow = widthOld - math.ceil( ( ( widthOld - widthNew ) * 0.1 ) )
				uiGauge:width( widthNow )	-- 後(変化状態)
			elseif( widthNew >  widthOld ) then
				-- 増加
				local widthNow = widthOld + math.ceil( ( ( widthNew - widthOld ) * 0.1 ) )
				uiGauge:width( widthNow )	-- 後(最終状態)
			end
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
		local w = this.Window:width()
		local h = this.Window:height()

		local baseX, baseY = this:GetBasePosition( w, h )

		-- Offset にはドラッグを反映させた値が入っている(ドラッグしていない場合は初期状態で座標が設定されていない事に注意する)
		local x = baseX + this.settings.Offset.X
		local y = baseY + this.settings.Offset.Y

		this.Window:pos( x, y )
		this.HPGauge:pos( x + this.uiInfo.HP.Gauge.Offset.X, y + this.uiInfo.HP.Gauge.Offset.Y )
		this.HPValue:pos( - ( UIScreen.Width - ( x + this.uiInfo.HP.Value.Offset.X ) ), y + this.uiInfo.HP.Value.Offset.Y )
		this.MPGauge:pos( x + this.uiInfo.MP.Gauge.Offset.X, y + this.uiInfo.MP.Gauge.Offset.Y )
		this.MPValue:pos( - ( UIScreen.Width - ( x + this.uiInfo.MP.Value.Offset.X ) ), y + this.uiInfo.MP.Value.Offset.Y )
		this.TPGauge:pos( x + this.uiInfo.TP.Gauge.Offset.X, y + this.uiInfo.TP.Gauge.Offset.Y )
		this.TPValue:pos( - ( UIScreen.Width - ( x + this.uiInfo.TP.Value.Offset.X ) ), y + this.uiInfo.TP.Value.Offset.Y )
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
		this.Window:draggable( state )
	end,

	isDragging = false,
	draggingPosition = { X = 0, Y = 0 },
	
	-- ドラッグ処理
	ProcessDragging = function( this, state )
		if( state == 1 ) then
			this.isDragging = true	-- ドラッグ中
			this.draggingPosition.X, this.draggingPosition.Y = this.Window:pos()
		elseif( state == 2 ) then
			this.isDragging = false	-- ドラッグ終了

			-- 位置に変化があった時に true を返す
			local x, y = this.Window:pos()
			if( x ~= this.draggingPosition.X or y ~= this.draggingPosition.Y ) then
				return true
			end
		end

		if( this.isDragging == true ) then
			-- ドラッグ中はオフセット値を更新する
			local x, y = this.Window:pos()
			if( x ~= this.draggingPosition.X or y ~= this.draggingPosition.Y ) then
				local w = this.Window:width()
				local h = this.Window:height()
				local baseX, baseY = this:GetBasePosition( w, h )
				this.settings.Offset.X = x - baseX
				this.settings.Offset.Y = y - baseY
				this:ApplyPosition()	-- 表示に反映させる
			end
		end

		return false
	end,

	-----------------------------------------------------------
}

return ui
