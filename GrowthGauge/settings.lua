local settings =
{
	Initialized = false,

	UIScreen =
	{
		Width  = 0,
		Height = 0,
	},

	Anchor = {
		X = 0.5,
		Y = 1.0,
	},
	Pivot = {
		X = 0.5,
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
		Frame = 'bar_bg.png',
		Gauge = 'bar_fg.png',
		Bonus = 'moon.png',
	},

	-- 共通の文字スタイル
	TextStyle = {
		Font  = 'メイリオ',
		Fonts = { 'MS ゴシック', 'MS Gothic', 'メイリオ' },
		Size  = 12,
		Color = { R = 253, G = 252, B = 250, A = 255 },
		Stroke = { Width = 2,
			Color = { R = 50, G = 50, B = 50, A = 200 },
		},
		Flags = { Bold = false, Italic = false }
	},

	-- ＵＩ全体の下地(ドラッグ用)
	Base = {
		Size = {
			Width  = 472,
			Height =  28,
		},
	},

	-- 経験値フレーム
	Frame = {
		Size = {
			Width  = 472,
			Height =   5,
		},
		Offset = {
			X = 0,
			Y = 0,
		},
	},

	Gauge = {
		Size = {
			Width  = 468,
			Height =   5,
		},
		Offset = {
			X = 2,
			Y = 0,
		},
	},

	Bonus = {
		Size = {
			Width  =  32,
			Height =  32,
		},
		Offset = {
			X = 472 - 16,
			Y =   0,
		},
	},

	State = {
		Offset = {
			X = -8,
			Y =  8,
		},
	},

	FadeTime = 0.2,
}

return settings
