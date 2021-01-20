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
		Font  = 'メイリオ',
		Fonts = { 'MS ゴシック', 'MS Gothic', 'メイリオ' },
		Size =  9,
		Color = { R = 255, G = 255, B = 193, A = 255 },
		Stroke = { Width = 2,
			Color = { R =  51, G =  47, B =  38, A = 255 },
		},
		Flags = { Bold = false, Italic = false }
	},

	RegionAndZone =
	{
		Format = '- %s - %s',
		Anchor = {
			X = 0,
			Y = 0,
		},
		Pivot = {
			X = 0,
			Y = 0,
		},
		Offset = {
			X = 20,
			Y =  0,
		}
	},

	Region = {
		Format = '- %s -',
		Anchor = {
			X = 0.5,
			Y = 0.5,
		},
		Pivot = {
			X = 0.5,
			Y = 0.5,
		},
			Offset = {
			X =   0,
			Y = -16,
		}
	},

	Zone = {
		Format = '%s',
		Anchor = {
			X = 0.5,
			Y = 0.5,
		},
		Pivot = {
			X = 0.5,
			Y = 0.5,
		},
		Offset = {
			X =  0,
			Y = 16,
		}
	},

	Mode = 0,
	FadeTime = 0.2,
}

return settings
