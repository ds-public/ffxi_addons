local settings =
{
	Initialized = false,

	UIScreen =
	{
		Width  = 0,
		Height = 0,
	},

	Draggable = true,
	
	-----------------------------------

	-- 共通の文字スタイル
	TextStyle = {
		Font  = '07やさしさゴシックボールド',
		Fonts = { 'MS ゴシック', 'MS Gothic', 'メイリオ' },
		Color = { R = 255, G = 255, B = 193, A = 255 },
		Stroke = { Width = 2,
			Color = { R =  51, G =  47, B =  38, A = 255 },
		},
		Flags = { Bold = false, Italic = false }
	},

	Region = {
		Size = 18,
		Format = '- %s -',
		Anchor = {
			X = 0.5,
			Y = 0.43,
		},
		Pivot = {
			X = 0.5,
			Y = 1.0,
		},
			Offset = {
			X =  0,
			Y =  0,
		}
	},

	Zone = {
		Size = 36,
		Format = '%s',
		Anchor = {
			X = 0.5,
			Y = 0.4,
		},
		Pivot = {
			X = 0.5,
			Y = 0.0,
		},
		Offset = {
			X =  0,
			Y =  0,
		}
	},

	WaitTime = 0.5,
	FadeTime = 1,
	KeepTime = 5,
}

return settings
