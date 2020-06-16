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

	Icon  = nil,
	Value = nil,

	-------------------------------------------------------------------

	-- private

	settings = {},	-- 設定の参照を保持する

	isLoaded = false,
	loadingWaitTime,

	-------------------------------------------------------------------

	-- 画像のスタイルを生成して返す
	GetImageStyle = function( this, path, width, height, draggable )
		local data =
		{
			texture = {
				path			= windower.addon_path .. 'images/' .. path,
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
	GetTextStyle = function( this, style )
		local data =
		{
			padding				= 0,
			text = {
				font			= style.Font,
				fonts			= style.Fonts,
				size			= style.Size,
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

		-------------------------------

		-- Icon
		this.Icon = Images.new( this:GetImageStyle(
			settings.Icon.Path,
			settings.Icon.Size.Width, settings.Icon.Size.Height,
			settings.Draggable
		) )

		-- Value
		this.Value = Texts.new( this:GetTextStyle( settings.TextStyle ) )
		this.Value:text( " " )

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
			this.Icon,
		}
		for i = 1, #images do
			images[ i ]:size( images[ i ]:width(), images[ i ]:height() )
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

	toComma = function( this, amount )
		local formatted = amount
		while true do
			formatted, k = string.gsub( formatted, "^(-?%d+)(%d%d%d)", '%1,%2' )
			if( k == 0 ) then
				break
			end
		end
		return formatted
	end,

	-------------------------------------------------------------------

	-- 変化後のゲージ量
	gaugeWidth = 0,
	isMogHouse = false,

	-- 最新状態をセットする
	Set = function( this, value )

		if( value == nil ) then
			this.Value:text( "-" )
		else
			this.Value:text( this:toComma( value ) )
		end
	end,

	-- 関数:ＵＩを消去する
	Hide = function( this )
		this.Icon:hide()
		this.Value:hide()
	end,

	SetAlpha = function( this, factor )
		this.Icon:alpha( 255 * factor )
	
		this.Value:alpha( this.settings.TextStyle.Color.A * factor )
		this.Value:stroke_alpha( this.settings.TextStyle.Stroke.Color.A * factor )
	end,

	isFadeInProcessing  = false,
	isFadeOutProcessing = false,
	fadeInBaseTime  = 0,
	fadeOutBaseTime = 0,

	-- フェードイン開始
	FadeIn = function( this )
		if( this.isFadeInProcessing == true ) then return end
		this.isFadeOutProcessing = false

		if( this.Icon:visible() == true ) then return end

		this.Icon:show()
		this.Value:show()

		this:SetAlpha( 0 )
		this.fadeInBaseTime = os.clock()
		this.isFadeInProcessing = true
	end,

	-- フェードアウト開始
	FadeOut = function( this )
		if( this.isFadeOutProcessing == true ) then return end
		this.isFadeInProcessing = false

		if( this.Icon:visible() == false ) then end

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
		local w = this.Icon:width()
		local h = this.Icon:height()

		local baseX, baseY = this:GetBasePosition( w, h )

		-- Offset にはドラッグを反映させた値が入っている(ドラッグしていない場合は初期状態で座標が設定されていない事に注意する)
		local x = baseX + this.settings.Offset.X
		local y = baseY + this.settings.Offset.Y

		this.Icon:pos( x, y )
		this.Value:pos( - ( UIScreen.Width - ( x + this.settings.Value.Offset.X ) ), y + this.settings.Value.Offset.Y )
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
		this.Icon:draggable( state )
	end,

	isDragging = false,
	draggingPosition = { X = 0, Y = 0 },
	
	-- ドラッグ処理
	ProcessDragging = function( this, state )
		if( state == 1 ) then
			this.isDragging = true	-- ドラッグ中
			this.draggingPosition.X, this.draggingPosition.Y = this.Icon:pos()
		elseif( state == 2 ) then
			this.isDragging = false	-- ドラッグ終了

			-- 位置に変化があった時に true を返す
			local x, y = this.Icon:pos()
			if( x ~= this.draggingPosition.X or y ~= this.draggingPosition.Y ) then
				return true
			end
		end

		if( this.isDragging == true ) then
			-- ドラッグ中はオフセット値を更新する
			local x, y = this.Icon:pos()
			if( x ~= this.draggingPosition.X or y ~= this.draggingPosition.Y ) then
				local w = this.Icon:width()
				local h = this.Icon:height()
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
