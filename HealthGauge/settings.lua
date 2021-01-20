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
		Y = 684 / 720,
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

	-- 共通の文字スタイル
	TextStyle = {
		Font  = 'メイリオ',
		Fonts = { 'MS ゴシック', 'MS Gothic', 'メイリオ' },
		Size  = 14,
		StrokeWidth = 2,
		Flags = { Bold = false, Italic = false },
	},

	Normal = {
		Color = { R = 253, G = 252, B = 250, A = 255 },
	},
	FullTP = {
		Color = { R =  80, G = 180, B = 250, A = 255 },
	},

	FFXIV = {
		Stroke = {
			Color = { R =  80, G =  70, B =  30, A = 150 },
		},
	},
	Other = {
		Stroke = {
			Color = { R =  50, G =  50, B =  50, A = 200 },
		},
	},

	-- 吹き出し
	General = {
		ImagePaths = {
			Window = 'bar_bg.png',
			HPGauge = 'hp_fg.png',
			MPGauge = 'mp_fg.png',
			TPGauge = 'tp_fg.png',
		},

		Window = {
			Size = {
				Width  = 472,
				Height =  24,
			}
		},

		HP = {
			Gauge = {
				Offset = {
					X =  15,
					Y =   2,
				},
				Size = {
					Width  = 132,
					Height =   8,
				}
			},
			Value = {
				Offset = {
					X = 112,
					Y =   4,
				}
			}
		},
		MP = {
			Gauge = {
				Offset = {
					X = 175,
					Y =   2,
				},
				Size = {
					Width  = 132,
					Height =   8,
				}
			},
			Value = {
				Offset = {
					X = 272,
					Y =   4,
				}
			}
		},
		TP = {
			Gauge = {
				Offset = {
					X = 335,
					Y =   2,
				},
				Size = {
					Width  = 132,
					Height =   8,
				}
			},
			Value = {
				Offset = {
					X = 432,
					Y =   4,
				}
			}
		},
	},	
	Compact = {
		ImagePaths = {
			Window  = 'bar_compact.png',
			HPGauge = 'hp_fg.png',
			MPGauge = 'mp_fg.png',
			TPGauge = 'tp_fg.png',
		},

		Window = {
			Size = {
				Width  = 422,
				Height =  24,
			}
		},

		HP = {
			Gauge = {
				Offset = {
					X =  15,
					Y =   2,
				},
				Size = {
					Width  = 116,
					Height =   8,
				}
			},
			Value = {
				Offset = {
					X = 105,
					Y =   4,
				}
			}
		},
		MP = {
			Gauge = {
				Offset = {
					X = 157,
					Y =   2,
				},
				Size = {
					Width  = 116,
					Height =   8,
				}
			},
			Value = {
				Offset = {
					X = 247,
					Y =   4,
				}
			}
		},
		TP = {
			Gauge = {
				Offset = {
					X = 299,
					Y =   2,
				},
				Size = {
					Width  = 116,
					Height =   8,
				}
			},
			Value = {
				Offset = {
					X = 389,
					Y =   4,
				}
			}
		},
	},

	Theme       = 'ffxiv',
	IsCompact	= false,
	
	FadeTime	= 0.2,
}

return settings
