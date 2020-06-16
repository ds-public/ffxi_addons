local settings =
{
	Initialized = false,

	UIScreen =
	{
		Width  = 0,
		Height = 0,
	},

	Anchor = {
		X =  ( 1152 - 16 ) / 1280,
		Y = 640 / 720,
	},
	Pivot = {
		X = 1.0,
		Y = 1.0,
	},
	Offset = {
		X = 0,
		Y = 0,
	},

	Draggable = true,
	
	-----------------------------------

	-- 共通の文字スタイル
	TextStyle = {
		Font  = '07やさしさゴシックボールド',
		Fonts = { 'MS ゴシック', 'MS Gothic', 'メイリオ' },
		Size =  8,
		Color = { R = 253, G = 252, B = 250, A = 255 },
		Stroke = { Width = 2,
			Color = { R = 50, G = 50, B = 50, A = 200 },
		},
		Flags = { Bold = false, Italic = false }
	},

	-----------------------------------

	Mode = 1,
	Sort = true,
	FadeTime = 0.2,
}

return settings
