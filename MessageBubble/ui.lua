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
	NamePlate = nil,
	Speaker = nil,
	Messages = {},

	-------------------------------------------------------------------

	-- private

	settings = {},	-- 設定の参照を保持する

	isLoaded = false,
	loadingWaitTime,

	-------------------------------------------------------------------

	-- 画像のスタイルを生成して返す
	GetImageStyle = function( this, path, width, height, color, draggable )
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
				red				= color.R,
				green			= color.G,
				blue			= color.B,
				alpha			= color.A,
			},
			draggable			= draggable,
			visible				= false		-- 初期状態では非表示
		}
		return data
	end,

	-- 文字のスタイルを生成して返す
	GetTextStyle = function( this, cStyle, iStyle )
		local data =
		{
			padding				= 0,
			text = {
				font			= cStyle.Font,
				fonts			= cStyle.Fonts,
				size			= iStyle.Size,
				red				= iStyle.Color.R,
				green			= iStyle.Color.G,
				blue			= iStyle.Color.B,
				alpha			= iStyle.Color.A,
				stroke = {
					width		= iStyle.Stroke.Width,
					red			= iStyle.Stroke.Color.R,
					green		= iStyle.Stroke.Color.G,
					blue		= iStyle.Stroke.Color.B,
					alpha		= iStyle.Stroke.Color.A,
				},
			},
			bg = {
				visible		= false,
			},
			flags = {
				bold		= iStyle.Flags.Bold,
				italic		= iStyle.Flags.Italic,
				right		= false,
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

		-- Window
		this.Window = Images.new( this:GetImageStyle(
			settings.ImagePaths.Window,
			settings.Window.Size.Width, settings.Window.Size.Height,
			settings.Window.Color,
			settings.Draggable	-- 初期ではドラッグ可能
		) )

		-- NamePlate
		this.NamePlate = Images.new( this:GetImageStyle(
			settings.ImagePaths.NamePlate,
			settings.NamePlate.Size.Width, settings.NamePlate.Size.Height,
			settings.NamePlate.Color,
			false	-- ドラッグ不可
		) )

		-- Speaker
		this.Speaker = Texts.new( this:GetTextStyle( settings.TextStyle, settings.Speaker ) )
		this.Speaker:text( " " )

		-- Messages
		local line
		for line = 1, 5 do
			-- Messages
			this.Messages[ line ] = Texts.new( this:GetTextStyle( settings.TextStyle, settings.Message ) )
			this.Messages[ line ]:text( " " )
		end

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
			this.Window,
			this.NamePlate,
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

	-- 関数:全体を消去する
	Hide = function( this )
		this.Window:hide()
		this.NamePlate:hide()
		this.Speaker:hide()
		local line
		for line = 1, 5 do
			this.Messages[ line ]:hide()
		end
	end,

	-- 全体の透明度を設定する
	SetAlpha = function( this, factor )
		this.Window:alpha( this.settings.Window.Color.A * factor )
		this.NamePlate:alpha( this.settings.NamePlate.Color.A * factor )
		this.Speaker:alpha( this.settings.Speaker.Color.A * factor )
		this.Speaker:stroke_alpha( this.settings.Speaker.Stroke.Color.A * factor )
		local line
		for line = 1, 5 do
			this.Messages[ line ]:alpha( this.settings.Message.Color.A * factor )
			this.Messages[ line ]:stroke_alpha( this.settings.Message.Stroke.Color.A * factor )
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

		if( this.Window:visible() == true ) then end

		this.Window:show()
		if( this.Speaker:text() ~= nil and #this.Speaker:text() >  0 ) then
			-- 名前あり
			this.NamePlate:show()
			this.Speaker:show()
		else
			-- 名前なし
			this.NamePlate:hide()
			this.Speaker:hide()
		end

		local line
		for line = 1, 5 do
			this.Messages[ line ]:show()
		end

		this:SetAlpha( 0 )
		this.fadeInBaseTime = os.clock()
		this.isFadeInProcessing = true
	end,

	-- フェードアウト開始
	FadeOut = function( this )
		if( this.isFadeOutProcessing == true ) then return end
		this.isFadeInProcessing = false

		if( this.Window:visible() == false ) then end

		-- フェードアウトの時はスピーカーは最初に全て消してしまう
		this.Speaker:text( " " )

		-- フェードアウトの時はメッセージは最初に全て消してしまう
		local line
		for line = 1, 5 do
			this.Messages[ line ]:text( " " )
		end

		this.fadeOutBaseTime = os.clock()
		this.isFadeOutProcessing = true
	end,

	isNamePlateProcessing  = false,
	namePlateBaseTime  = 0,

	isSpeakerProcessing  = false,
	speakerBaseTime  = 0,

	isMessageProcessing = false,
	messageBaseTime = 0,

	-- 名前を設定する(吹き出しが非表示状態で使用される)
	SetSpeaker = function( this, text )
		if( text ~= nil and #text >  0 ) then
			this.Speaker:text( text )
		else
			this.Speaker:text( "" )
		end
	end,

	-- 名前フェード初期化(吹き出しが表示状態で使用される)
	ChangeSpeaker = function( this, text )
		if( this.Speaker:text() == text ) then
			-- 同じでは何もしない
			return
		end

		if( text ~= nil and #text >  0 ) then
			-- 名前の表示がある
			if( this.NamePlate:visible() == false ) then
				-- ネームプレートが非表示状態ならネームプレートをフェードインする
				this.NamePlate:show()
				this.NamePlate:alpha( 0 )
				this.namePlateBaseTime = os.clock()
				this.isNamePlateProcessing = true
			end

			-- 名前をフェードインする
			this.Speaker:show()
			this.Speaker:text( text )
	
			this.Speaker:alpha( 0 )
			this.Speaker:stroke_alpha( 0 )
			this.speakerBaseTime = os.clock()
			this.isSpeakerProcessing = true	
		else
			this.NamePlate:hide()
			this.Speaker:text( "" )
		end
	end,

	-- 文章を設定する
	SetMessage = function( this, texts )
		local line
		for line = 1, 5 do
			if( texts[ line ] ~= nil and #texts[ line ] >  0 ) then
				this.Messages[ line ]:text( texts[ line ] )
			else
				this.Messages[ line ]:text( " " )
			end
		end
	end,

	-- 文章フェード初期化
	ChangeMessage = function( this, texts )
		local line
		for line = 1, 5 do
			this.Messages[ line ]:show()
			if( texts[ line ] ~= nil and #texts[ line ] >  0 ) then
				this.Messages[ line ]:text( texts[ line ] )
			else
				this.Messages[ line ]:text( " " )
			end
			this.Messages[ line ]:alpha( 0 )
			this.Messages[ line ]:stroke_alpha( 0 )
		end

		this.messageBaseTime = os.clock()
		this.isMessageProcessing = true
	end,

	-- 吹き出し全体の表示状態を取得する
	IsVisible = function( this )
		return this.Window:visible()
	end,

	-- 状態を返す
	GetState = function( this )
		if( this.Window:visible() == false ) then
			return 0
		end

		if( this.isFadeInProcessing == true ) then
			return 1
		end

		if( this.isFadeOutProcessing == true ) then
			return 3
		end

		return 2
	end,

	-- 表示更新処理
	Update = function( this )

		-------------------------------------------------------
		-- 全体のフェードイン
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
		-- 全体のフェードアウト
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
		-- ネームプレートのフェードイン
		if( this.isNamePlateProcessing == true ) then
			local fadeTime = this.settings.FadeTime
			if( fadeTime <  0.1 ) then fadeTime = 0.1 end
			local factor = ( os.clock() - this.namePlateBaseTime ) / fadeTime
			if( factor >= 1 ) then
				factor  = 1
				this.isNamePlateProcessing = false
			end

			this.NamePlate:alpha( this.settings.Speaker.Color.A * factor )
		end

		-------------------------------------------------------
		-- 名前のフェードイン
		if( this.isSpeakerProcessing == true ) then
			local fadeTime = this.settings.FadeTime
			if( fadeTime <  0.1 ) then fadeTime = 0.1 end
			local factor = ( os.clock() - this.speakerBaseTime ) / fadeTime
			if( factor >= 1 ) then
				factor  = 1
				this.isSpeakerProcessing = false
			end

			this.Speaker:alpha( this.settings.Speaker.Color.A * factor )
			this.Speaker:stroke_alpha( this.settings.Speaker.Stroke.Color.A * factor )
		end

		-------------------------------------------------------
		-- 文章のフェードイン
		if( this.isMessageProcessing == true ) then
			local fadeTime = this.settings.FadeTime
			if( fadeTime <  0.1 ) then fadeTime = 0.1 end
			local factor = ( os.clock() - this.messageBaseTime ) / fadeTime
			if( factor >= 1 ) then
				factor  = 1
				this.isMessageProcessing = false
			end

			local line
			for line = 1, 5 do
				this.Messages[ line ]:alpha( this.settings.Message.Color.A * factor )
				this.Messages[ line ]:stroke_alpha( this.settings.Message.Stroke.Color.A * factor )
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

		this.NamePlate:pos( x + this.settings.NamePlate.Offset.X, y + this.settings.NamePlate.Offset.Y )
		this.NamePlate:size( this.settings.NamePlate.Size.Width, this.settings.NamePlate.Size.Height )

		this.Speaker:pos( x + this.settings.Speaker.Offset.X, y + this.settings.Speaker.Offset.Y )

		local line
		for line = 1, 5 do
			this.Messages[ line ]:pos( x + this.settings.Message.Offset.X, y + this.settings.Message.Offset.Y + ( line - 1 ) * ( this.settings.Message.Size + this.settings.Message.LineSpacing ) )
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
