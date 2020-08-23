-- http://ff11db.sakura.ne.jp/database/
-- タイプ 0=ノンアク・1=アク・2=ノンアク&リンク・3=アク&リンク・4=条件アク・5=条件アク&リンク

-- モンスター
local Nms =
{
	-----------------------------------------------------------
	-- ノーマルモンスター

	-- アーリマン族

	-- アーン族

	-- アダマンタス族

	-- アプカル族

	-- アルテマ族

	-- アンティカ族

	-- アントリオン族
	[ "Hunter Antlion"			] = { 1 },
	[ "Tracer Antlion"			] = { 2 },

	-- イビルウェポン族
	[ "Boggart"					] = { 1 },
	[ "Poltergeist"				] = { 1 },

	-- インプ族

	-- ウィーバー族

	-- ウィヴル族

	-- ウィルム族

	-- ウサギ族
	[ "Blood Bunny"				] = { 2 },
	[ "Canyon Rarab"			] = { 2 },
	[ "Mighty Rarab"			] = { 2 },
	[ "Savanna Rarab"			] = { 0 },

	-- ウラグナイト族

	-- エフト族

	-- エレメンタル族(特殊な条件下でのみ襲ってくる設定に変える)
	[ "Air Elemental"			] = { 4 },
	[ "Earth Elemental"			] = { 4 },
	[ "Thunder Elemental"		] = { 4 },
	[ "Water Elemental"			] = { 4 },
	[ "Yagudo's Elemental"		] = { 0 },

	-- オーク族
	[ "Orcish Brawler"			] = { 3 },

	-- オークの戦闘機械

	-- 大羊族
	[ "Brutal Sheep"			] = { 2 },

	-- カラクール・大羊族

	-- 大羊族(雄羊)

	-- オポオポ族

	-- オメガ族

	-- オロボン族

	-- カーディアン族

	-- キキルン族

	-- キノコ族
	[ "Fly Agaric"				] = { 2 },
	[ "Jugner Funguar"			] = { 2 },
	[ "Shrieker"				] = { 1 },

	-- キマイラ族

	-- 巨人族

	-- クァール族
	[ "Attohwa Coeurl"			] = { 1 },
	[ "Coeurl"					] = { 1 },
	[ "Master Coeurl"			] = { 1 },
	[ "Torama"					] = { 1 },

	-- グゥーブー族

	-- クゥダフ族

	-- クトゥルブ族

	-- クラブ族
	[ "Clipper"					] = { 2 },
	[ "Cutter"					] = { 1 },
	[ "River Crab"				] = { 0 },
	[ "Snipper"					] = { 2 },

	-- クレイヴァー族

	-- クロウラー族
	[ "Carnivorous Crawler"		] = { 2 },
	[ "Canyon Crawler"			] = { 2 },
	[ "Crawler"					] = { 0 },
	[ "Meat Maggot"				] = { 3 },

	-- エルカ・クロウラー族

	-- ケルベロス族

	-- 剣虎族
	[ "Forest Tiger"			] = { 1 },
	[ "Sabertooth Tiger"		] = { 1 },

	-- 甲虫族
	[ "Goliath Beetle"			] = { 3 },
	[ "Stag Beetle"				] = { 2 },

	-- コウモリ族(1匹)
	[ "Bulwark Bat"				] = { 1 },
	[ "Hognosed Bat"			] = { 1 },
	[ "Combat"					] = { 2 },

	-- コウモリ族(3匹)
	[ "Bastion Bats"			] = { 1 },
	[ "Stink Bats"				] = { 2 },

	-- ゴージャー族

	-- コース族

	-- ゴースト族

	-- ブフート・ゴースト族

	-- ゴーレム族

	-- コカトリス族
	[ "Cockatrice"				] = { 1 },

	-- ジズ・コカトリス族

	-- ゴブリン族
	[ "Goblin Ambusher"			] = { 3 },
	[ "Goblin Bouncer"			] = { 3 },
	[ "Goblin Bounty Hunter"	] = { 3 },
	[ "Goblin Butcher"			] = { 3 },
	[ "Goblin Digger"			] = { 3 },
	[ "Goblin Enchanter"		] = { 3 },
	[ "Goblin Fisher"			] = { 3 },
	[ "Goblin Furrier"			] = { 3 },
	[ "Goblin Gambler"			] = { 3 },
	[ "Goblin Hunter"			] = { 3 },
	[ "Goblin Leecher"			] = { 3 },
	[ "Goblin Miner"			] = { 3 },
	[ "Goblin Mugger"			] = { 3 },
	[ "Goblin Pathfinder"		] = { 3 },
	[ "Goblin Poacher"			] = { 3 },
	[ "Goblin Reaper"			] = { 3 },
	[ "Goblin Robber"			] = { 3 },
	[ "Goblin Shaman"			] = { 3 },
	[ "Goblin Smithy"			] = { 3 },
	[ "Goblin Thug"				] = { 3 },
	[ "Goblin Tinkerer"			] = { 3 },
	[ "Goblin Trader"			] = { 3 },
	[ "Goblin Weaver"			] = { 3 },

	-- ゴブリン族(バグベア)

	-- ゴブリン族(モブリン)

	-- ゴラホ族

	-- コリブリ族

	-- サソリ族
	[ "Doom Scorpion"			] = { 1 },
	[ "Maze Scorpion"			] = { 1 },
	[ "Mushussu"				] = { 1 },

	-- サハギン族

	-- サボテンダー族

	-- シーザー族

	-- 屍犬族

	-- 死鳥族
	[ "Akbaba"					] = { 2 },
	[ "Carrion Crow"			] = { 0 },
	[ "Screamer"				] = { 2 },
	[ "Zu"						] = { 2 },

	-- シャドウ族

	-- シャドウ族(フォモル)
	[ "Ka"						] = { 3, nil, {  [ 148 ] =   60, [ 562 ] =   60 } },	-- 回避率ダウン

	-- 樹人族
	[ "Walking Tree"			] = { 1 },
	[ "Treant"					] = { 1 },

	-- 樹人族(若木)
	[ "Stalking Sapling"		] = { 0 },
	[ "Strolling Sapling"		] = { 0 },
	[ "Wandering Sapling"		] = { 2 },

	-- シンカー族

	-- スケルトン族
	[ "Ghoul"					] = { 1 },
	[ "Lost Soul" 				] = { 1, nil, { [  30 ] = 3600 } },					-- 呪詛
	[ "Wendigo"					] = { 1 },
	[ "Wight"					] = { 1 },


	-- ドラウガー・スケルトン族

	-- スノール族

	-- スパイダー族

	-- スフィアロイド族

	-- スライム族
	[ "Jelly"					] = { 1 },
	[ "Stroper Chyme"			] = { 1 },

	-- ゼデー族

	-- ソウルフレア族

	-- ゾミト族

	-- ダイアマイト族

	-- タウルス族

	-- ダルメル族
	[ "Bull Dhalmel"			] = { 2 },
	[ "Wild Dhalmel"			] = { 2 },

	-- チゴー族

	-- デーモン族

	-- ドゥーム族
	[ "Tainted Flesh"			] = { 1 },


	-- 頭足族
	[ "Flying Manta"			] = { 1 },

	-- ドール族

	-- トカゲ族
	[ "Bane Lizard"				] = { 2 },
	[ "Chasm Lizard"			] = { 2 },
	[ "Hill Lizard"				] = { 2 },

	-- ドラゴン族

	-- ダハク・ドラゴン族

	-- トロール族

	-- トンベリ族

	-- ハイドラ族

	-- 蜂族
	[ "Bumblebee"				] = { 0 },
	[ "Digger Wasp"				] = { 3 },
	[ "Giant Bee"				] = { 0 },
	[ "Giddeus Bee"				] = { 0 },
	[ "Killer Bee"				] = { 0 },

	-- バッファロー族

	-- ヒッポグリフ族

	-- プーク族

	-- ブガード族

	-- プギル族
	[ "Giant Pugil"				] = { 1 },
	[ "Giddeus Pugil"			] = { 1 },
	[ "Land Pugil"				] = { 0 },
	[ "Pug Pugil"				] = { 0 },
	[ "Shoal Pugil"				] = { 0 },

	-- フライ族
	[ "Crane Fly"				] = { 2 },
	[ "Gallinipper"				] = { 2 },
	[ "Goblin's Dragonfly"		] = { 0 },
	[ "Goblin's Gallinipper"	] = { 0 },
	[ "Goblin's Ogrefly"		] = { 0 },
	[ "May Fly"					] = { 2 },
	[ "Ogrefly"					] = { 2 },

	-- フライトラップ族

	-- フラン族

	-- フワボ族

	-- ヘクトアイズ族
	[ "Gazer"					] = { 1 },
	[ "Hecteyes"				] = { 1 },

	-- ベヒーモス族

	-- ペミデ族

	-- ボム族
	[ "Puroboros"				] = { 1 },

	-- ボム族(クラスター)

	-- ポロッゴ族

	-- マーリド族

	-- マジックポット族

	-- マムージャ族

	-- マメット族

	-- マンティコア族

	-- マンドラゴラ族
	[ "Mandragora"				] = { 0 },
	[ "Pygmaioi"				] = { 0 },
	[ "Sylvestre"				] = { 0 },
	[ "Tiny Mandragora"			] = { 0 },

	-- ミミック族

	-- メロー族

	-- モルボル族
	[ "Anemone"					] = { 1 },

	-- アムルタート・モルボル族

	-- ヤグード族
	[ "Yagudo Acolyte"			] = { 3 },
	[ "Yagudo Drummer"			] = { 3 },
	[ "Yagudo Herald"			] = { 3 },
	[ "Yagudo Initiate"			] = { 3 },
	[ "Yagudo Interrogator"		] = { 3 },
	[ "Yagudo Lutenist"			] = { 3 },
	[ "Yagudo Mendicant"		] = { 3 },
	[ "Yagudo Persecutor"		] = { 3 },
	[ "Yagudo Oracle"			] = { 3 },
	[ "Yagudo Piper"			] = { 3 },
	[ "Yagudo Priest"			] = { 3 },
	[ "Yagudo Scribe"			] = { 3 },
	[ "Yagudo Theologist"		] = { 3 },
	[ "Yagudo Votary"			] = { 3 },
	[ "Yagudo Zealot"			] = { 3 },

	-- ユブヒ族

	-- ヨヴラ族

	-- ラプトル族

	-- ラミア族

	-- リーチ族
	[ "Bleeder Leech"			] = { 2 },
	[ "Forest Leech"			] = { 2 },
	[ "Goblin's Leech"			] = { 0 },
	[ "Labyrinth Leech"			] = { 2 },
	[ "Poison Leech"			] = { 2 },
	[ "Thread Leech"			] = { 2 },

	-- ロック族

	-- ワーム族
	[ "Dirt Eater"				] = { 1 },
	[ "Earth Eater"				] = { 3 },
	[ "Flesh Eater"				] = { 2 },
	[ "Maze Maker"				] = { 2 },


	-- ワイバーン族

	-- ワモーラ族(成虫)

	-- ワモーラ族(幼虫)

	-- ワンダラー族

	-------------------------------------------------------------------------------------------
	-- ノートリアスモンスター


	-- アーリマン族

	-- アーン族

	-- アダマンタス族

	-- アプカル族

	-- アルテマ族

	-- アンティカ族

	-- アントリオン族

	-- イビルウェポン族
	[ "Prankster Maverix"		] = { 1, '★'	},
	
	-- インプ族

	-- ウィーバー族

	-- ウィヴル族

	-- ウィルム族

	-- ウサギ族

	-- ウラグナイト族

	-- エフト族

	-- エレメンタル族

	-- オーク族

	-- オークの戦闘機械

	-- 大羊族

	-- カラクール・大羊族

	-- 大羊族(雄羊)

	-- オポオポ族

	-- オメガ族

	-- オロボン族

	-- カーディアン族

	-- キキルン族

	-- キノコ族

	-- キマイラ族

	-- 巨人族

	-- クァール族

	-- グゥーブー族

	-- クゥダフ族

	-- クトゥルブ族

	-- クラブ族

	-- クレイヴァー族

	-- クロウラー族
	[ "Spiny Spipi"		] = { 0, '☆'	},

	-- エルカ・クロウラー族

	-- ケルベロス族

	-- 剣虎族

	-- 甲虫族

	-- コウモリ族(1匹)

	-- コウモリ族(3匹)

	-- ゴージャー族

	-- コース族

	-- ゴースト族

	-- ブフート・ゴースト族

	-- ゴーレム族

	-- コカトリス族

	-- ジズ・コカトリス族

	-- ゴブリン族

	-- ゴブリン族(バグベア)

	-- ゴブリン族(モブリン)

	-- ゴラホ族

	-- コリブリ族

	-- サソリ族

	-- サハギン族

	-- サボテンダー族

	-- シーザー族

	-- 屍犬族

	-- 死鳥族

	-- シャドウ族

	-- シャドウ族(フォモル)

	-- 樹人族

	-- 樹人族(若木)
	[ "Sappy Sycamore"			] = { 2, '★' },			-- Lv.41

	-- シンカー族

	-- スケルトン族

	-- ドラウガー・スケルトン族

	-- スノール族

	-- スパイダー族

	-- スフィアロイド族

	-- スライム族

	-- ゼデー族

	-- ソウルフレア族

	-- ゾミト族

	-- ダイアマイト族

	-- タウルス族

	-- ダルメル族

	-- チゴー族

	-- デーモン族

	-- ドゥーム族

	-- 頭足族

	-- ドール族

	-- トカゲ族

	-- ドラゴン族

	-- ダハク・ドラゴン族

	-- トロール族

	-- トンベリ族

	-- ハイドラ族

	-- 蜂族

	-- バッファロー族

	-- ヒッポグリフ族

	-- プーク族

	-- ブガード族

	-- プギル族

	-- フライ族

	-- フライトラップ族

	-- フラン族

	-- フワボ族

	-- ヘクトアイズ族

	-- ベヒーモス族

	-- ペミデ族

	-- ボム族

	-- ボム族(クラスター)

	-- ポロッゴ族

	-- マーリド族

	-- マジックポット族

	-- マムージャ族

	-- マメット族

	-- マンティコア族

	-- マンドラゴラ族

	-- ミミック族

	-- メロー族

	-- モルボル族

	-- アムルタート・モルボル族

	-- ヤグード族
	[ "Eyy Mon the Ironbreaker"		] = { 3, '☆'	},	-- Lv.16
	[ "Quu Xijo the Illusory"		] = { 3, '★'	},	-- Lv.25
	[ "Zhuu Buxu the Silent"		] = { 3, '☆'	},	-- Lv.16

	-- ユブヒ族

	-- ヨヴラ族

	-- ラプトル族

	-- ラミア族

	-- リーチ族

	-- ロック族

	-- ワーム族

	-- ワイバーン族

	-- ワモーラ族(成虫)

	-- ワモーラ族(幼虫)

	-- ワンダラー族
	



	[ "Adamantoise"				] = { 1, '★★' },
	[ "Ash Dragon"				] = { 1, '★★' },
	[ "Aspidochelone"			] = { 1, '★★★' },
	[ "Absolute Virtue"			] = { 1, '★★★☆' },


	[ "Behemoth"				] = { 1, '★★'	},
	[ "Brigandish Blade"		] = { 1, '★☆'	},
	[ "Bune"					] = { 1, '★★'	},
	[ "Byakko"					] = { 1, '★★'	},

	[ "Capricious Cassie"		] = { 1, '★★'	},
	[ "Cemetery Cherry"			] = { 1, '★★'	},
	[ "Cerberus"				] = { 1, '★★★'	},
	
	[ "Dark Ixion"				] = { 1, '★★'	},
	[ "Despot"					] = { 1, '★☆'	},

	[ "Fafnir"					] = { 1, '★★'	},
	[ "Faust"					] = { 1, '★☆'	},

	[ "Genbu"					] = { 1, '★★'	},

	[ "Hydra"					] = { 1, '★★★'	},

	[ "Jailer of Faith"			] = { 1, '★★☆'	},
	[ "Jailer of Fortitude"		] = { 1, '★★☆'	},
	[ "Jailer of Hope"			] = { 1, '★★☆'	},
	[ "Jailer of Justice"		] = { 1, '★★☆'	},
	[ "Jailer of Love"			] = { 1, '★★☆'	},
	[ "Jailer of Prudencee"		] = { 1, '★★☆'	},
	[ "Jailer of Temperance"	] = { 1, '★★☆'	},
	[ "Jormungand"				] = { 1, '★★★'	},

	[ "Khimaira"				] = { 1, '★★★'	},
	[ "King Arthro"				] = { 1, '★★'	},
	[ "King Behemoth"			] = { 1, '★★★'	},
	[ "King Vinegarroon"		] = { 1, '★★'	},
	[ "Kirin"					] = { 1, '★★★'	},
	[ "Kouryu"					] = { 1, '★★★'	},
	
	[ "Lumber Jack"				] = { 1, '★★'	},
	
	[ "Mother Globe"			] = { 1, '★☆'	},

	[ "Nidhogg"					] = { 1, '★★★'	},


	[ "Olla Grande"				] = { 1, '★☆'	},
	[ "Olla Media"				] = { 1, '★'	},
	[ "Olla Pequena"			] = { 1, '★'	},


	[ "Roc"						] = { 1, '★★'	},

	[ "Sandworm"				] = { 1, '★★'	},
	[ "Seiryu"					] = { 1, '★★'	},
	[ "Serket"					] = { 1, '★★'	},
	[ "Simurgh"					] = { 1, '★★'	},
	[ "Steam Cleaner"			] = { 1, '★☆'	},
	[ "Suzaku"					] = { 1, '★★'	},

	[ "Tiamat"					] = { 1, '★★★'	},

	[ "Ullikummi"				] = { 1, '★☆'	},

	[ "Vrtra"					] = { 1, '★★★'	},

	[ "Zipacna"					] = { 1, '★☆'	},

}

return Nms


