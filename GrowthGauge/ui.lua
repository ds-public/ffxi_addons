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

	Base  = nil,
	Frame = nil,
	Gauge = nil,
	Bonus = nil,
	State = nil,

	-------------------------------------------------------------------

	-- private

	settings = {},	-- 設定の参照を保持する

	isLoaded = false,
	loadingWaitTime,

	-------------------------------------------------------------------

	-- 画像のスタイルを生成して返す
	GetImageStyle = function( this, path, width, height, alpha, draggable )
		if( path ~= nil ) then
			path = windower.addon_path .. 'images/' .. path
		end
		local data =
		{
			texture = {
				path			= path,
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
				alpha			= alpha,
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
		-- Base
		this.Base = Images.new( this:GetImageStyle(
			nil,
			settings.Base.Size.Width, settings.Base.Size.Height,
			  0, settings.Draggable
		) )

		-- Frame
		this.Frame = Images.new( this:GetImageStyle(
			settings.ImagePaths.Frame,
			settings.Frame.Size.Width, settings.Frame.Size.Height,
			255, false
		) )

		--Gauge
		this.Gauge = Images.new( this:GetImageStyle(
			settings.ImagePaths.Gauge,
			settings.Gauge.Size.Width, settings.Gauge.Size.Height,
			255, false
		) )

		-- Bonus
		this.Bonus = Images.new( this:GetImageStyle(
			settings.ImagePaths.Bonus,
			settings.Bonus.Size.Width, settings.Bonus.Size.Height,
			255, false	-- 初期ではドラッグ不可
		) )

		-- State
		this.State = Texts.new( this:GetTextStyle( settings.TextStyle ) )
		this.State:text( " " )

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
			this.Base, this.Frame, this.Gauge, this.Binus,
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
	Set = function
	(
		this, mJobName, sJobName, mJobLevel, sJobLevel,
		mode, epNow, epMax,
		lpNow, lpMax, mpNow, mpMax,
		cpNow, cpMax, jpNow, jpMax,
		isMogHouse
	)
		this.isMogHouse = isMogHouse

		if( mode == 1 ) then
			-- 経験値表示
			if( mJobLevel <  99 ) then
				-- 経験値を表示
				if( epNow == nil or epMax == nil ) then 
					this.gaugeWidth = 0
					this.Gauge:width( 0 )
				else
					this.gaugeWidth = math.floor( this.settings.Gauge.Size.Width * epNow / epMax )
				end
			else
				-- ジョブポイントとキャパシティポイントを表示
				if( jpNow == nil or jpMax == nil or cpNow == nil or cpMax == nil ) then 
					this.gaugeWidth = 0
					this.Gauge:width( 0 )
				else
					this.gaugeWidth = math.floor( this.settings.Gauge.Size.Width * cpNow / cpMax )
				end
			end
		else
			-- メリットポイント表示
			if( mpNow == nil or mpMax == nil or lpNow == nil or lpMax == nil ) then 
				this.gaugeWidth = 0
				this.Gauge:width( 0 )
			else
				this.gaugeWidth = math.floor( this.settings.Gauge.Size.Width * lpNow / lpMax )
			end
		end

		text = string.upper( mJobName )
		if( sJobName ~= nil and #sJobName >  0 ) then
			text = text .. '/' .. string.upper( sJobName )
		end
		text = text .. '  Lv '.. mJobLevel
		if( sJobLevel ~= nil and sJobLevel >  0 ) then
			text = text .. '/' .. sJobLevel
		end

		if( mode == 1 ) then
			-- 経験値を表示
			if( mJobLevel <  99 ) then
				-- 経験値を表示
				if(  epNow == nil or epMax == nil ) then 
					text = text .. '  EXP -/- '
				else
					text = text .. '  EXP ' .. this:toComma( epNow ) .. '/' .. this:toComma( epMax ) .. ' '
				end
			else
				-- ジョブポイントとキャパシティポイントを表示
				if( jpNow == nil or jpMax == nil or cpNow == nil or cpMax == nil ) then 
					text = text .. '  jp -/-' .. '  cp -/- '
				else
					text = text .. '  jp ' .. jpNow .. '/' .. jpMax .. '  cp ' .. this:toComma( cpNow ) .. '/' .. this:toComma( cpMax ) .. ' '
				end
			end
		else
			-- メリットポイントを表示
			if( mpNow == nil or mpMax == nil or lpNow == nil or lpMax == nil ) then 
				text = text .. '  mp -/-' .. '  lp -/- '
			else
				text = text .. '  mp ' .. mpNow .. '/' .. mpMax .. '  lp ' .. this:toComma( lpNow ) .. '/' .. this:toComma( lpMax ) .. ' '
			end
		end

		this.State:text( text )
	end,

	-- 表示中かの確認
	IsVisible = function( this )
		return this.Base:visible()
	end,

	-- 表示する
	Show = function( this )
		this.Base:show()
		this.Frame:show()
		this.Gauge:show()
		if( this.isMogHouse == true ) then
			this.Bonus:show()
		else
			this.Bonus:hide()
		end
		this.State:show()
	end,

	-- 関数:ＵＩを消去する
	Hide = function( this )
		this.Base:hide()
		this.Frame:hide()
		this.Gauge:hide()
		this.Bonus:hide()
		this.State:hide()
	end,

	-- アルファを設定する
	SetAlpha = function( this, factor )
		local a = 255 * factor
		this.Frame:alpha( a )
		this.Gauge:alpha( a )
		this.Bonus:alpha( a )

		this.State:alpha( this.settings.TextStyle.Color.A * factor )
		this.State:stroke_alpha( this.settings.TextStyle.Stroke.Color.A * factor )
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

		this.Base:show()
		this.Frame:show()
		this.Gauge:show()
		if( this.isMogHouse == true ) then
			this.Bonus:show()
		else
			this.Bonus:hide()
		end
		this.State:show()

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
		-- ゲージ
		local widthNew = this.gaugeWidth
		local widthOld = this.Gauge:width()

		if( widthNew ~= widthOld ) then
			if( widthNew <  widthOld ) then
				-- 減少
				local widthNow = widthOld - math.ceil( ( ( widthOld - widthNew ) * 0.1 ) )
				this.Gauge:width( widthNow )	-- 後(変化状態)
			elseif( widthNew >  widthOld ) then
				-- 増加
				local widthNow = widthOld + math.ceil( ( ( widthNew - widthOld ) * 0.1 ) )
				this.Gauge:width( widthNow )		-- 後(最終状態)
			end
		end

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
		this.Frame:pos( x + this.settings.Frame.Offset.X, y + this.settings.Frame.Offset.Y )
		this.Gauge:pos( x + this.settings.Gauge.Offset.X, y + this.settings.Gauge.Offset.Y )
		this.Bonus:pos( x + this.settings.Bonus.Offset.X, y + this.settings.Bonus.Offset.Y )
		this.State:pos( x + this.settings.State.Offset.X, y + this.settings.State.Offset.Y )
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

	-----------------------------------------------------------
}

return ui
