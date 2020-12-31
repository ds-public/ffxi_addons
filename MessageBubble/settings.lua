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
		Y = ( 720 - 64 ) / 720,
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
		Window = 'balloon.png',
	},

	-- 共通の文字スタイル
	TextStyle = {
		Font  = 'BIZ UDゴシック',
		Fonts = { 'MS ゴシック', 'MS Gothic', 'メイリオ' },
    },

	-- 吹き出し
	Window = {
		Size = {
			Width  = 648,
			Height = 148,
		},
		Alpha = 224,
	},

	Speaker = {
		Size = 14,
		Offset = {
			X =  50,
			Y = -10,
		},
		Color = { R = 255, G = 255, B = 255, A = 255 },
		Stroke = { Width = 2,
			Color = { R =   0, G =   0, B =   0, A = 200 },
		},
		Flags = { Bold = false, Italic = false }
	},

	Message = {
		Size = 16,
		LineSpacing = 8,
		Offset = {
			X =  50,
			Y =  -4,
		},
		Color = { R =   0, G =   0, B =   0, A = 255 },
		Stroke = { Width = 2,
			Color = { R =   0, G =   0, B =   0, A =  32 },
		},
		Flags = { Bold = false, Italic = false }
	},


	Mode		= 2,
	FadeTime	= 0.2,
}

return settings
