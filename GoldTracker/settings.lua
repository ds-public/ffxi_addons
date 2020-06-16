local settings =
{
	Initialized = false,

	UIScreen =
	{
		Width  = 0,
		Height = 0,
	},

	Anchor = {
		X =  ( 1152 - 64 ) / 1280,
		Y = 712 / 720,
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

	-- 画像のファイル名
	ImagePaths = {
		Icon = 'gil.png',
	},

	-- 共通の文字スタイル
	TextStyle = {
		Font  = '07やさしさゴシックボールド',
		Fonts = { 'MS ゴシック', 'MS Gothic', 'メイリオ' },
		Size = 12,
		Color = { R = 253, G = 252, B = 250, A = 255 },
		Stroke = { Width = 2,
			Color = { R = 50, G = 50, B = 50, A = 200 },
		},
		Flags = { Bold = false, Italic = false }
	},

	-- アイコン
	Icon = {
		Path = 'gil.png',
		Size = {
			Width  = 24,
			Height = 24,
		},
	},

	-- バリュー
	Value = {
		Offset = {
			X = 0,
			Y = 4,
		},
	},

	FadeTime = 0.2,
}

return settings
