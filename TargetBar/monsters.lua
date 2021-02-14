-- Version 2021/01/25

-- http://ff11db.sakura.ne.jp/database/
-- http://ff11.s288.xrea.com/
-- タイプ 0=ノンアク・1=アク・2=ノンアク&リンク・3=アク&リンク・4=条件アク・5=条件アク&リンク


-- モンスター
local Nms =
{
	-----------------------------------------------------------
	-- ロンフォール

	-- オリジナル

	-- フィールド

	-- 西ロンフォール
	[ 100 ] = {
		[ "Carrion Worm"			] = { "キャリオンワーム",					0 },
		[ "Ding Bats"				] = { "ディングバッツ",						0 },
		[ "Enchanted Bones"			] = { "エンチャンテッドボーンズ",			1 },
		[ "Forest Funguar"			] = { "フォレストファンガー",				2 },
		[ "Forest Hare"				] = { "フォレストヘアー",					0 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Land Crab"				] = { "ランドクラブ",						1 },
		[ "Mouse Bat"				] = { "マウスバット",						2 },
		[ "Orcish Cursemaker"		] = { "オーキシュカースメーカー",			3 },
		[ "Orcish Fighter"			] = { "オーキシュファイター",				3 },
		[ "Orcish Fodder"			] = { "オーキシュフォッダー",				3 },
		[ "Orcish Grappler"			] = { "オーキシュグラップラー",				3 },
		[ "Orcish Mesmerizer"		] = { "オーキシュメズマライザー",			3 },
		[ "Orcish Serjeant"			] = { "オーキシュサージェント",				3 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Scarab Beetle"			] = { "スカラブビートル",					2 },
		[ "Tainted Hound"			] = { "テインテッドハウンド",				1 },
		[ "Tunnel Worm"				] = { "トンネルワーム",						0 },
		[ "Wild Rabbit"				] = { "ワイルドラビット",					0 },
		[ "Wild Sheep"				] = { "ワイルドシープ",						2 },

	},

	-- 東ロンフォール
	[ 101 ] = {
		[ "Carrion Worm"			] = { "キャリオンワーム",					0 },
		[ "Ding Bats"				] = { "ディングバッツ",						0 },
		[ "Enchanted Bones"			] = { "エンチャンテッドボーンズ",			1 },
		[ "Forest Funguar"			] = { "フォレストファンガー",				2 },
		[ "Forest Hare"				] = { "フォレストヘアー",					0 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Mouse Bat"				] = { "マウスバット",						2 },
		[ "Orcish Fodder"			] = { "オーキシュフォッダー",				3 },
		[ "Orcish Grappler"			] = { "オーキシュグラップラー",				3 },
		[ "Orcish Mesmerizer"		] = { "オーキシュメズマライザー",			3 },
		[ "Pugil"					] = { "プギル",								0 },
		[ "Scarab Beetle"			] = { "スカラブビートル",					2 },
		[ "Tainted Hound"			] = { "テインテッドハウンド",				1 },
		[ "Tunnel Worm"				] = { "トンネルワーム",						0 },
		[ "Wild Rabbit"				] = { "ワイルドラビット",					0 },
		[ "Wild Sheep"				] = { "ワイルドシープ",						2 },

		-- ノートリアスモンスター
		[ "Rambukk"					] = { "ラムブック",							0, '☆' },	-- Lv.13
	},

	-- ダンジョン

	-- ボストーニュ監獄
	[ 167 ] = {
		[ "Acid Grease"				] = { "アシッドグリース",					1 },
		[ "Dark Aspic"				] = { "ダークアスピック",					1 },
		[ "Funnel Bats"				] = { "ファネルバッツ",						3 },
		[ "Garm"					] = { "ガルム",								1 },
		[ "Gespenst"				] = { "ゲシュペンスト",						1 },
		[ "Haunt"					] = { "ホーント",							1 },
		[ "Hecatomb Hound"			] = { "ヘカトゥームハウンド",				1 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Werebat"					] = { "ウェアバット",						1 },
	},

	-- 龍王ランペールの墓
	[ 190 ] = {
		[ "Armet Beetle"			] = { "アーメットビートル",					3 },
		[ "Carrion Worm"			] = { "キャリオンワーム",					0 },
		[ "Cherry Sapling"			] = { "チェリーサプリング",					3 },
		[ "Crypt Ghost"				] = { "クリプトゴースト",					1 },
		[ "Cutlass Scorpion"		] = { "カトラススコーピオン",				1 },
		[ "Ding Bats"				] = { "ディングバッツ",						0 },
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Enchanted Bones"			] = { "エンチャンテッドボーンズ",			1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Gruel"			] = { "ゴブリングルール",					1 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Grave Bat"				] = { "グレイブバット",						3 },
		[ "Hati"					] = { "ハティ",								1 },
		[ "Lemures"					] = { "レムレス",							1 },
		[ "Mouse Bat"				] = { "マウスバット",						2 },
		[ "Nachzehrer"				] = { "ナハツェーラー",						1 },
		[ "Plague Bats"				] = { "プレイグバッツ",						3 },
		[ "Spartoi Sorcerer"		] = { "スパルトイソーサラー",				1 },
		[ "Spartoi Warrior"			] = { "スパルトイウォリアー",				1 },
		[ "Spook"					] = { "スプーク",							1 },
		[ "Tomb Bat"				] = { "トゥームバット",						3 },
		[ "Wind Bats"				] = { "ウィンドバッツ",						2 },

	},

	-- ゲルスバ野営陣
	[ 140 ] = {
		[ "Cheiroptera"				] = { "カイロプテラ",						1 },
		[ "Orcish Fodder"			] = { "オーキシュフォッダー",				3 },
		[ "Orcish Grappler"			] = { "オーキシュグラップラー",				3 },
		[ "Orcish Grunt"			] = { "オーキシュグラント",					3 },
		[ "Orcish Mesmerizer"		] = { "オーキシュメズマライザー",			3 },
		[ "Orcish Neckchopper"		] = { "オーキシュネックチョッパー",			3 },
		[ "Orcish Stonechucker"		] = { "オーキシュストーンチャッカー",		3 },
		[ "Orcish Stonelauncher"	] = { "オーキシュストーンランチャー",		3 },
		[ "Pugil"					] = { "プギル",								1 },
		[ "Spectacled Bats"			] = { "スペクタクルズバッツ",				0 },
		[ "Toadstool"				] = { "トードストゥール",					2 },

	},

	-- ゲルスバ砦
	[ 141 ] = {
		[ "Cheiroptera"				] = { "カイロプテラ",						1 },
		[ "Orcish Cursemaker"		] = { "オーキシュカースメーカー",			3 },
		[ "Orcish Fighter"			] = { "オーキシュファイター",				3 },
		[ "Orcish Flamethrower"		] = { "オーキシュフレイムスロワー",			3 },
		[ "Orcish Fodder"			] = { "オーキシュフォッダー",				3 },
		[ "Orcish Grappler"			] = { "オーキシュグラップラー",				3 },
		[ "Orcish Grunt"			] = { "オーキシュグラント",					3 },
		[ "Orcish Mesmerizer"		] = { "オーキシュメズマライザー",			3 },
		[ "Orcish Neckchopper"		] = { "オーキシュネックチョッパー",			3 },
		[ "Orcish Serjeant"			] = { "オーキシュサージェント",				3 },
		[ "Orcish Stonechucker"		] = { "オーキシュストーンチャッカー",		3 },
		[ "Spectacled Bats"			] = { "スペクタクルズバッツ",				2 },

	},

	-- ユグホトの岩屋
	[ 142 ] = {
		[ "Grotto Bats"				] = { "グロットバッツ",						3 },
		[ "Orcish Cursemaker"		] = { "オーキシュカースメーカー",			3 },
		[ "Orcish Fighter"			] = { "オーキシュファイター",				3 },
		[ "Orcish Grunt"			] = { "オーキシュグラント",					3 },
		[ "Orcish Neckchopper"		] = { "オーキシュネックチョッパー",			3 },
		[ "Orcish Serjeant"			] = { "オーキシュサージェント",				3 },
		[ "Orcish Stonechucker"		] = { "オーキシュストーンチャッカー",		3 },
		[ "Stealth Bat"				] = { "ステルスバット",						3 },

	},

	-----------------------------------------------------------
	-- ロンフォール戦線

	-- アルタナの神兵

	-- フィールド

	-- 東ロンフォール[S]
	[  81 ] = {
		[ "Carrion Worm"			] = { "キャリオンワーム",					0 },
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Ding Bats"				] = { "ディングバッツ",						0 },
		[ "Enchanted Bones"			] = { "エンチャンテッドボーンズ",			1 },
		[ "Forest Hare"				] = { "フォレストヘアー",					2 },
		[ "Giant Spider"			] = { "ジャイアントスパイダー",				2 },
		[ "Mouse Bat"				] = { "マウスバット",						2 },
		[ "Orcish Fodder"			] = { "オーキシュフォッダー",				3 },
		[ "Orcish Mesmerizer"		] = { "オーキシュメズマライザー",			3 },
		[ "Orcish Neckchopper"		] = { "オーキシュネックチョッパー",			3 },
		[ "Orcish Stonechucker"		] = { "オーキシュストーンチャッカー",		3 },
		[ "Pugil"					] = { "プギル",								2 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Scarab Beetle"			] = { "スカラブビートル",					2 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Walking Tree"			] = { "ウォーキングツリー",					1 },
		[ "Wild Sheep"				] = { "ワイルドシープ",						2 },

	},

	-----------------------------------------------------------
	-- グスタベルグ

	-- フィールド

	-- 北グスタベルグ
	[ 106 ] = {
		[ "Amber Quadav"			] = { "アンバークゥダフ",					3 },
		[ "Amethyst Quadav"			] = { "アメジストクゥダフ",					3 },
		[ "Black Wolf"				] = { "ブラックウルフ",						1 },
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Ding Bats"				] = { "ディングバッツ",						0 },
		[ "Enchanted Bones"			] = { "エンチャンテッドボーンズ",			1 },
		[ "Fledermaus"				] = { "フレダーマウス",						2 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Land Crab"				] = { "ランドクラブ",						1 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Ornery Sheep"			] = { "オーナリーシープ",					2 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Tunnel Worm"				] = { "トンネルワーム",						0 },
		[ "Vulture"					] = { "バルチャー",							2 },
		[ "Walking Sapling"			] = { "ウォーキングサプリング",				0 },
		[ "Young Quadav"			] = { "ヤングクゥダフ",						3 },

	},

	-- 南グスタベルグ
	[ 107 ] = {
		[ "Amber Quadav"			] = { "アンバークゥダフ",					3 },
		[ "Amethyst Quadav"			] = { "アメジストクゥダフ",					3 },
		[ "Black Wolf"				] = { "ブラックウルフ",						1 },
		[ "Ding Bats"				] = { "ディングバッツ",						0 },
		[ "Enchanted Bones"			] = { "エンチャンテッドボーンズ",			1 },
		[ "Fledermaus"				] = { "フレダーマウス",						2 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Land Crab"				] = { "ランドクラブ",						0 },	-- 釣りは 1
		[ "Ornery Sheep"			] = { "オーナリーシープ",					2 },
		[ "Tunnel Worm"				] = { "トンネルワーム",						0 },
		[ "Vulture"					] = { "バルチャー",							2 },
		[ "Walking Sapling"			] = { "ウォーキングサプリング",				0 },
		[ "Young Quadav"			] = { "ヤングクゥダフ",						3 },

	},

	-- ダンジョン

	-- ツェールン鉱山	
	[ 172 ] = {
		[ "Ding Bats"				] = { "ディングバッツ",						0 },
		[ "Giant Amoeba"			] = { "ジャイアントアメーバ",				1 },
		[ "Mouse Bat"				] = { "マウスバット",						0 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Tunnel Worm"				] = { "トンネルワーム",						0 },

	},

	-- パルブロ鉱山
	[ 143 ] = {
		[ "Amber Quadav"			] = { "アンバークゥダフ",					3 },
		[ "Amethyst Quadav"			] = { "アメジストクゥダフ",					3 },
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Cave Funguar"			] = { "ケイヴファンガー",					2 },
		[ "Copper Beetle"			] = { "カッパービートル",					2 },
		[ "Copper Quadav"			] = { "カッパークゥダフ",					3 },
		[ "Greater Quadav"			] = { "グレータークゥダフ",					3 },
		[ "Mine Scorpion"			] = { "マインスコーピオン",					1 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Onyx Quadav"				] = { "オニキスクゥダフ",					3 },
		[ "Pit Hare"				] = { "ピットヘアー",						2 },
		[ "Rabid Rat"				] = { "ラビッドラット",						2 },
		[ "Scimitar Scorpion"		] = { "シミタースコーピオン",				1 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Veteran Quadav"			] = { "ベテランクゥダフ",					3 },
		[ "Young Quadav"			] = { "ヤングクゥダフ",						3 },

	},

	-- ダングルフの涸れ谷
	[ 191 ] = {
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Hoarder Hare"			] = { "ホーダーヘアー",						2 },
		[ "Land Crab"				] = { "ランドクラブ",						1 },
		[ "Snipper"					] = { "スニッパー",							2 },
		[ "Wadi Crab"				] = { "ワジクラブ",							2 },
		[ "Wadi Hare"				] = { "ワジヘアー",							2 },

	},

	-- ジラートの幻影

	-- フィールド

	-- ダンジョン

	-- コロロカの洞門
	[ 173 ] = {
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Combat"					] = { "コンバット",							2 },
		[ "Gigas Foreman"			] = { "ギガースフォアマン",					3 },
		[ "Gigas Stonecarrier"		] = { "ギガースストーンキャリアー",			3 },
		[ "Gigas Stonegrinder"		] = { "ギガースストーングラインダー",		3 },
		[ "Gigas Stonemason"		] = { "ギガースストーンメイソン",			3 },
		[ "Goblin Bounty Hunter"	] = { "ゴブリンバウンティハンター",			3 },
		[ "Huge Spider"				] = { "ヒュージスパイダー",					2 },
		[ "Jelly"					] = { "ジェリー",							1 },
		[ "Scimitar Scorpion"		] = { "シミタースコーピオン",				1 },
		[ "Seeker Bats"				] = { "シーカーバッツ",						2 },
		[ "Snipper"					] = { "スニッパー",							1 },

	},

	-----------------------------------------------------------
	-- グスタベルグ戦線

	-- アルタナの神兵

	-- フィールド

	-- 北グスタベルグ[S]
	[  88 ] = {
		[ "Amber Quadav"			] = { "アンバークゥダフ",					3 },
		[ "Amethyst Quadav"			] = { "アメジストクゥダフ",					3 },
		[ "Black Wolf"				] = { "ブラックウルフ",						1 },
		[ "Copper Quadav"			] = { "カッパークゥダフ",					3 },
		[ "Ding Bats"				] = { "ディングバッツ",						0 },
		[ "Enchanted Bones"			] = { "エンチャンテッドボーンズ",			1 },
		[ "Fledermaus"				] = { "フレダーマウス",						2 },
		[ "Goblin Freelance"		] = { "ゴブリンフリーランス",				3 },
		[ "Greater Quadav"			] = { "グレータークゥダフ",					3 },
		[ "Huge Spider"				] = { "ヒュージスパイダー",					2 },
		[ "Land Crab"				] = { "ランドクラブ",						1 },
		[ "Ornery Sheep"			] = { "オーナリーシープ",					2 },
		[ "Onyx Quadav"				] = { "オニキスクゥダフ",					3 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Tunnel Worm"				] = { "トンネルワーム",						0 },
		[ "Veteran Quadav"			] = { "ベテランクゥダフ",					3 },
		[ "Vulture"					] = { "バルチャー",							0 },
		[ "Walking Sapling"			] = { "ウォーキングサプリング",				0 },
		[ "Young Quadav"			] = { "ヤングクゥダフ",						3 },

	},

	-- グロウベルグ[S]
	[  89 ] = {
		[ "Amethyst Quadav"			] = { "アメジストクゥダフ",					3 },
		[ "Black Wolf"				] = { "ブラックウルフ",						1 },
		[ "Blood Soul"				] = { "ブラッドソウル",						1 },
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Bronze Quadav"			] = { "ブロンズクゥダフ",					3 },
		[ "Copper Quadav"			] = { "カッパークゥダフ",					3 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Greater Quadav"			] = { "グレータークゥダフ",					3 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Onyx Quadav"				] = { "オニキスクゥダフ",					3 },
		[ "River Crab"				] = { "リバークラブ",						1 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					2 },
		[ "Veteran Quadav"			] = { "ベテランクゥダフ",					3 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				0 },
		[ "Wingrats"				] = { "ウィングラッツ",						2 },
		[ "Young Quadav"			] = { "ヤングクゥダフ",						3 },

	},

	-----------------------------------------------------------
	-- サルタバルタ

	-- フィールド

	-- 西サルタバルタ
	[ 115 ] = {
		[ "Carrion Crow"			] = { "キャリオンクロウ",					0 },
		[ "Crawler"					] = { "クロウラー",							2 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Land Crab"				] = { "ランドクラブ",						1 },
		[ "Mad Fox"					] = { "マッドフォックス",					1 },
		[ "Magicked Bones"			] = { "マジックドボーンズ",					1 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Savanna Rarab"			] = { "サバンナララブ",						0 },

	},

	-- 東サルタバルタ
	[ 116 ] = {
		[ "Carrion Crow"			] = { "キャリオンクロウ",					0 },
		[ "Crawler"					] = { "クロウラー",							2 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Mad Fox"					] = { "マッドフォックス",					1 },
		[ "Magicked Bones"			] = { "マジックドボーンズ",					1 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Savanna Rarab"			] = { "サバンナララブ",						0 },

	},

	-- ダンジョン

	-- トライマライ水路
	[ 169 ] = {
		[ "Bigclaw"					] = { "ビッグクロー",						1 },
		[ "Canal Bats"				] = { "カナルバッツ",						3 },
		[ "Cutlass Scorpion"		] = { "カトラススコーピオン",				1 },
		[ "Dark Aspic"				] = { "ダークアスピック",					1 },
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Fallen Knight"			] = { "フォーレンナイト",					1 },
		[ "Fleshcraver"				] = { "フレッシュクレイヴァー",				1 },
		[ "Girtab"					] = { "ギルタブ",							1 },
		[ "Hell Bat"				] = { "ヘルバット",							3 },
		[ "Hinge Oil"				] = { "ヒンジオイル",						1 },
		[ "Impish Bats"				] = { "インピッシュバッツ",					3 },
		[ "Lich"					] = { "リッチ",								1 },
		[ "Mindcraver"				] = { "マインドクレイヴァー",				1 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Rock Crab"				] = { "ロッククラブ",						1 },
		[ "Scavenger Crab"			] = { "スカベンジャークラブ",				1 },
		[ "Starmite"				] = { "スターマイト",						3 },

	},

	-- 内ホルトト遺跡
	[ 192 ] = {
		[ "Bat Battalion"			] = { "バットバタリオン",					2 },
		[ "Battle Bat"				] = { "バトルバット",						3 },
		[ "Battue Bats"				] = { "バチューバッツ",						0 },
		[ "Beady Beetle"			] = { "ビーディービートル",					1 },
		[ "Blade Bat"				] = { "ブレードバット",						2 },
		[ "Blob"					] = { "ブロブ",								1 },
		[ "Boggart"					] = { "ボガート",							1 },
		[ "Deathwatch Beetle"		] = { "デスウォッチビートル",				2 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Magicked Bones"			] = { "マジックドボーンズ",					1 },
		[ "Troika Bats"				] = { "トロイカバッツ",						2 },
		[ "Wendigo"					] = { "ウェンディゴ",						1 },

	},

	-- 外ホルトト遺跡
	[ 194 ] = {
		[ "Battue Bats"				] = { "バチューバッツ",						0 },
		[ "Black Slime"				] = { "ブラックスライム",					1 },
		[ "Blade Bat"				] = { "ブレードバット",						1 },
		[ "Combat"					] = { "コンバット",							2 },
		[ "Dancing Weapon"			] = { "ダンシングウェポン",					1 },
		[ "Eight of Batons"			] = { "エイトオブバトンズ",					3 },
		[ "Eight of Coins"			] = { "エイトオブコインズ",					3 },
		[ "Eight of Cups"			] = { "エイトオブカップス",					3 },
		[ "Eight of Swords"			] = { "エイトオブソーズ",					3 },
		[ "Five of Batons"			] = { "ファイブオブバトンズ",				3 },
		[ "Five of Coins"			] = { "ファイブオブコインズ",				3 },
		[ "Five of Cups"			] = { "ファイブオブカップス",				3 },
		[ "Five of Swords"			] = { "ファイブオブソーズ",					3 },
		[ "Four of Batons"			] = { "フォーオブバトンズ",					3 },
		[ "Four of Coins"			] = { "フォーオブコインズ",					3 },
		[ "Four of Cups"			] = { "フォーオブカップス",					3 },
		[ "Four of Swords"			] = { "フォーオブソーズ",					3 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Nine of Batons"			] = { "ナインオブバトンズ",					3 },
		[ "Nine of Coins"			] = { "ナインオブコインズ",					3 },
		[ "Nine of Cups"			] = { "ナインオブカップス",					3 },
		[ "Nine of Swords"			] = { "ナインオブソーズ",					3 },
		[ "Rotten Jam"				] = { "ロットゥンジャム",					1 },
		[ "Seven of Batons"			] = { "セブンオブバトンズ",					3 },
		[ "Seven of Coins"			] = { "セブンオブコインズ",					3 },
		[ "Seven of Cups"			] = { "セブンオブカップス",					3 },
		[ "Seven of Swords"			] = { "セブンオブソーズ",					3 },
		[ "Six of Batons"			] = { "シックスオブバトンズ",				3 },
		[ "Six of Coins"			] = { "シックスオブコインズ",				3 },
		[ "Six of Cups"				] = { "シックスオブカップス",				3 },
		[ "Six of Swords"			] = { "シックスオブソーズ",					3 },
		[ "Stink Bats"				] = { "スティンクバッツ",					2 },
		[ "Ten of Batons"			] = { "テンオブバトンズ",					3 },
		[ "Ten of Coins"			] = { "テンオブコインズ",					3 },
		[ "Ten of Cups"				] = { "テンオブカップス",					3 },
		[ "Ten of Swords"			] = { "テンオブソーズ",						3 },
		[ "Three of Batons"			] = { "スリーオブバトンズ",					3 },
		[ "Three of Coins"			] = { "スリーオブコインズ",					3 },
		[ "Three of Cups"			] = { "スリーオブカップス",					3 },
		[ "Three of Swords"			] = { "スリーオブソーズ",					3 },
		[ "Two of Batons"			] = { "トゥーオブバトンズ",					3 },
		[ "Two of Coins"			] = { "トゥーオブコインズ",					3 },
		[ "Two of Cups"				] = { "トゥーオブカップス",					3 },
		[ "Two of Swords"			] = { "トゥーオブソーズ",					3 },

	},

	-- ギデアス
	[ 145 ] = {
		[ "Pugil"					] = { "プギル",								1 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-----------------------------------------------------------
	-- サルタバルタ戦線

	-- アルタナの神兵

	-- フィールド

	-- 西サルタバルタ[S]
	[  95 ] = {
		[ "Carrion Crow"			] = { "キャリオンクロウ",					0 },
		[ "Crawler"					] = { "クロウラー",							2 },
		[ "Goblin's Rarab"			] = { "ゴブリンズララブ",					0 },
		[ "Mad Fox"					] = { "マッドフォックス",					1 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Savanna Rarab"			] = { "サバンナララブ",						0 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- カルゴナルゴ城砦[S]
	[  96 ] = {
		[ "Carrion Crow"			] = { "キャリオンクロウ",					2 },
		[ "Vorpal Bunny"			] = { "ボーパルバニー",						2 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },

	},

	-- ダンジョン

	-----------------------------------------------------------
	-- ザルクヘイム

	-- オリジナル

	-- フィールド

	-- ラテーヌ高原
	[ 102 ] = {
		[ "Acro Bat"				] = { "アクロバット",						0 },
		[ "Akbaba"					] = { "アクババ",							2 },
		[ "Battering Ram"			] = { "バタリングラム",						1 },
		[ "Gale Bats"				] = { "ゲイルバッツ",						0 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Grass Funguar"			] = { "グラスファンガー",					0 },
		[ "Mad Sheep"				] = { "マッドシープ",						2 },
		[ "Orcish Fodder"			] = { "オーキシュフォッダー",				3 },
		[ "Orcish Grappler"			] = { "オーキシュグラップラー",				3 },
		[ "Orcish Grunt"			] = { "オーキシュグラント",					3 },
		[ "Orcish Mesmerizer"		] = { "オーキシュメズマライザー",			3 },
		[ "Orcish Neckchopper"		] = { "オーキシュネックチョッパー",			3 },
		[ "Orcish Stonechucker"		] = { "オーキシュストーンチャッカー",		3 },
		[ "Plague Bats"				] = { "プレイグバッツ",						1 },
		[ "Poison Bat"				] = { "ポイズンバット",						1 },
		[ "Poison Funguar"			] = { "ポイズンファンガー",					1 },
		[ "Poltergeist"				] = { "ポルターガイスト",					1 },
		[ "Skeleton Warrior"		] = { "スケルトンウォリアー",				1 },
		[ "Skeleton Sorcerer"		] = { "スケルトンソーサラー",				1 },
		[ "Steppe Hare"				] = { "ステップヘアー",						2 },
		[ "Strolling Sapling"		] = { "ストローリングサプリング",			0 },
		[ "Thickshell"				] = { "シックシェル",						0 },
		[ "Wolf Zombie"				] = { "ウルフゾンビ",						1 },

	},

	-- コンシュタット高地
	[ 108 ] = {
		[ "Amber Quadav"			] = { "アンバークゥダフ",					3 },
		[ "Amethyst Quadav"			] = { "アメジストクゥダフ",					3 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Greater Quadav"			] = { "グレータークゥダフ",					3 },
		[ "Mad Sheep"				] = { "マッドシープ",						2 },
		[ "Onyx Quadav"				] = { "オニキスクゥダフ",					3 },
		[ "Poltergeist"				] = { "ポルターガイスト",					1 },
		[ "Skeleton Warrior"		] = { "スケルトンウォリアー",				1 },
		[ "Skeleton Sorcerer"		] = { "スケルトンソーサラー",				1 },
		[ "Strolling Sapling"		] = { "ストローリングサプリング",			0 },
		[ "Tremor Ram"				] = { "トレマーラム",						1 },
		[ "Veteran Quadav"			] = { "ベテランクゥダフ",					3 },
		[ "Young Quadav"			] = { "ヤングクゥダフ",						3 },
		[ "Wolf Zombie"				] = { "ウルフゾンビ",						1 },

	},

	-- バルクルム砂丘
	[ 103 ] = {
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Brutal Sheep"			] = { "ブルータルシープ",					2 },
		[ "Cutter"					] = { "カッター",							1 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Giant Bat"				] = { "ジャイアントバット",					1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Bounty Hunter"	] = { "ゴブリンバウンティハンター",			3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Sand Bats"				] = { "サンドバッツ",						1 },
		[ "Sand Hare"				] = { "サンドヘアー",						2 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Star Bat"				] = { "スターバット",						0 },

	},

	-- ダンジョン

	-- オルデール鍾乳洞
	[ 193 ] = {
		[ "Ancient Bat"				] = { "エインシェントバット",				3 },
		[ "Blood Bunny"				] = { "ブラッドバニー",						2 },
		[ "Clipper"					] = { "クリッパー",							2 },
		[ "Dung Beetle"				] = { "ダンビートル",						2 },
		[ "Fly Agaric"				] = { "フライアガリック",					2 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin's Bats"			] = { "ゴブリンズバッツ",					0 },
		[ "Goliath Beetle"			] = { "ゴリアテビートル",					3 },
		[ "Hognosed Bat"			] = { "ホグノーズドバット",					1 },
		[ "Jelly"					] = { "ジェリー",							1 },
		[ "Rancid Ooze"				] = { "ランシッドウーズ",					1 },
		[ "Seeker Bats"				] = { "シーカーバッツ",						3 },
		[ "Shrieker"				] = { "シュリーカー",						3 },
		[ "Slash Pine"				] = { "スラッシュパイン",					2 },
		[ "Snipper"					] = { "スニッパー",							2 },
		[ "Stalking Sapling"		] = { "ストーキングサプリング",				0 },
		[ "Stink Bats"				] = { "スティンクバッツ",					2 },
		[ "Stroper Chyme"			] = { "ストローパーカイム",					1 },
		[ "Vorpal Bunny"			] = { "ボーパルバニー",						2 },

	},

	-- グスゲン鉱山
	[ 196 ] = {
		[ "Bandersnatch"			] = { "バンダースナッチ",					1 },
		[ "Banshee"					] = { "バンシー",							1 },
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Fly Agaric"				] = { "フライアガリック",					2 },
		[ "Ghast"					] = { "ガスト",								1 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Jelly"					] = { "ジェリー",							1 },
		[ "Mauthe Doog"				] = { "モーザドゥーグ", 					1 },
		[ "Myconid"					] = { "マイコニド",							3 },
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Rancid Ooze"				] = { "ランシッドウーズ",					1 },
		[ "Skeleton Warrior"		] = { "スケルトンウォリアー",				1 },
		[ "Wendigo"					] = { "ウェンディゴ",						1 },
		[ "Wight"					] = { "ワイト",								1 },

	},

	-----------------------------------------------------------
	-- コルシュシュ

	-- オリジナル

	-- フィールド
	
	-- タロンギ大峡谷
	[ 117 ] = {
		[ "Akbaba"					] = { "アクババ",							2 },
		[ "Barghest"				] = { "バーゲスト",							1 },
		[ "Canyon Crawler"			] = { "キャニオンクロウラー",				2 },
		[ "Canyon Rarab"			] = { "キャニオンララブ",					2 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Poltergeist"				] = { "ポルターガイスト",					1 },
		[ "Skeleton Warrior"		] = { "スケルトンウォリアー",				1 },
		[ "Skeleton Sorcerer"		] = { "スケルトンソーサラー",				1 },
		[ "Strolling Sapling"		] = { "ストローリングサプリング",			0 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ブブリム半島
	[ 118 ] = {
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Carnivorous Crawler"		] = { "カーニボラスクロウラー",				2 },
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Bounty Hunter"	] = { "ゴブリンバウンティハンター",			3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin's Rabbit"			] = { "ゴブリンズラビット",					0 },
		[ "Mighty Rarab"			] = { "マイティーララブ",					2 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },
		[ "Zombie"					] = { "ゾンビ",								1 },
		[ "Zu"						] = { "ズー",								2 },

	},

	-- ダンジョン

	-- シャクラミの地下迷宮
	[ 198 ] = {
		[ "Ancient Bat"				] = { "エインシェントバット",				3 },
		[ "Carnivorous Crawler"		] = { "カーニボラスクロウラー",				2 },
		[ "Caterchipillar"			] = { "キャタチピラー",						3 },
		[ "Combat"					] = { "コンバット",							2 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin's Bat"			] = { "ゴブリンズバット",					0 },
		[ "Jelly"					] = { "ジェリー",							1 },
		[ "Labyrinth Scorpion"		] = { "ラビリンススコーピオン",				1 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Maze Scorpion"			] = { "メイズスコーピオン",					1 },
		[ "Protozoan"				] = { "プロウトゾウアン",					1 },
		[ "Seeker Bats"				] = { "シーカーバッツ",						3 },
		[ "Stink Bats"				] = { "スティンクバッツ",					2 },
		[ "Wendigo"					] = { "ウェンディゴ",						1 },
		[ "Wight"					] = { "ワイト",								1 },

	},

	-- ジラートの幻影

	-- フィールド

	-- ダンジョン

	-- オンゾゾの迷路
	[ 213 ] = {
		[ "Cockatrice"				] = { "コカトリス",							1 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Bandit"			] = { "ゴブリンバンディット",				3 },
		[ "Goblin Bouncer"			] = { "ゴブリンバウンサー",					3 },
		[ "Goblin Enchanter"		] = { "ゴブリンエンチャンター",				3 },
		[ "Goblin Hunter"			] = { "ゴブリンハンター",					3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Miner"			] = { "ゴブリンマイナー",					3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Shepherd"			] = { "ゴブリンシェパード",					3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Mushussu"				] = { "ムシュフシュ",						1 },
		[ "Torama"					] = { "トラマ",								1 },

	},

	-- プロマシアの呪縛

	-- フィールド
	
	-- マナクリッパー
	[   3 ] = {
		[ "Clot"					] = { "クロット",							1 },
		[ "Cutter"					] = { "カッター",							0 },
		[ "Uragnite"				] = { "ウラグナイト",						0 },
	},

	-- ビビキー湾
	[   4 ] = {
		[ "Coastal Opo-opo"			] = { "コースタルオポオポ",					2 },
		[ "Coralline Uragnite"		] = { "コーラルラインウラグナイト",			0 },
		[ "Eft"						] = { "エフト",								2 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin's Rarab"			] = { "ゴブリンズララブ",					0 },
		[ "Hobgoblin Alastor"		] = { "ホブゴブリンアラストール",			3 },
		[ "Hobgoblin Angler"		] = { "ホブゴブリンアングラー",				3 },
		[ "Hobgoblin Animalier"		] = { "ホブゴブリンアニマリアー",			3 },
		[ "Hobgoblin Blagger"		] = { "ホブゴブリンブラガー",				3 },
		[ "Hobgoblin Fascinator"	] = { "ホブゴブリンファシネーター",			3 },
		[ "Hobgoblin Martialist"	] = { "ホブゴブリンマーシャリスト",			3 },
		[ "Hobgoblin Physician"		] = { "ホブゴブリンフィジシャン",			3 },
		[ "Hobgoblin Toreador"		] = { "ホブゴブリントレアドール",			3 },
		[ "Hobgoblin Venerer"		] = { "ホブゴブリンベネラー",				3 },
		[ "Hypnos Eft"				] = { "ヒュプノスエフト",					2 },
		[ "Island Rarab"			] = { "アイランドララブ",					2 },
		[ "Raven"					] = { "レイブン",							2 },
		[ "Tartarus Eft"			] = { "タルタロスエフト",					2 },
		[ "Toucan"					] = { "トゥーカン",							0 },
		[ "Tragopan"				] = { "トラゴパン",							2 },
		[ "Tropical Rarab"			] = { "トロピカルララブ",					2 },
		[ "Viscous Clot"			] = { "ビスカスクロット",					1 },

	},

	-- ダンジョン

	-----------------------------------------------------------
	-- ノルバレン

	-- オリジナル

	-- フィールド

	-- ジャグナー森林
	[ 104 ] = {
		[ "Boggart"					] = { "ボガート",							1 },
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Brutal Sheep"			] = { "ブルータルシープ",					2 },
		[ "Forest Tiger"			] = { "フォレストタイガー",					1 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin's Beetle"			] = { "ゴブリンズビートル",					0 },
		[ "Jugner Funguar"			] = { "ジャグナーファンガー",				2 },
		[ "Knight Crab"				] = { "ナイトクラブ",						3 },
		[ "Orcish Cursemaker"		] = { "オーキシュカースメーカー",			3 },
		[ "Orcish Fighter"			] = { "オーキシュファイター",				3 },
		[ "Orcish Grunt"			] = { "オーキシュグラント",					3 },
		[ "Orcish Neckchopper"		] = { "オーキシュネックチョッパー",			3 },
		[ "Orcish Serjeant"			] = { "オーキシュサージェント",				3 },
		[ "Orcish Stonechucker"		] = { "オーキシュストーンチャッカー",		3 },
		[ "Scavenging Hound"		] = { "スカベンジングハウンド",				1 },
		[ "Screamer"				] = { "スクリーマー",						2 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Stag Beetle"				] = { "スタッグビートル",					2 },
		[ "Walking Tree"			] = { "ウォーキングツリー",					1 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },
		[ "Zombie"					] = { "ゾンビ",								1 },

	},

	-- バタリア丘陵
	[ 105 ] = {
		[ "Ba"						] = { "バー",								2 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Cutter"					] = { "カッター",							1 },
		[ "Evil Spirit"				] = { "イビルスピリット",					1 },
		[ "Evil Weapon"				] = { "イビルウェポン",						1 },
		[ "Goblin Bounty Hunter"	] = { "ゴブリンバウンティハンター",			3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Mauthe Doog"				] = { "モーザドゥーグ", 					1 },
		[ "Orcish Beastrider"		] = { "オーキシュビーストライダー",			3 },
		[ "Orcish Brawler"			] = { "オーキシュブロウラー",				3 },
		[ "Orcish Cursemaker"		] = { "オーキシュカースメーカー",			3 },
		[ "Orcish Fighter"			] = { "オーキシュファイター",				3 },
		[ "Orcish Impaler"			] = { "オーキシュインペイラー",				3 },
		[ "Orcish Nightraider"		] = { "オーキシュナイトレイダー",			3 },
		[ "Orcish Serjeant"			] = { "オーキシュサージェント",				3 },
		[ "Sabertooth Tiger"		] = { "サーベルトゥースタイガー",			1 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Sobbing Sapling"			] = { "ソビングサプリング",					3 },
		[ "Stalking Sapling"		] = { "ストーキングサプリング",				2 },
		[ "Treant"					] = { "トレント",							1 },
		[ "Weeping Willow"			] = { "ウィーピングウィロー",				1 },
		[ "Wight"					] = { "ワイト",								1 },

	},

	-- ダンジョン

	-- ダボイ
	[ 149 ] = {
		[ "Davoi Mush"				] = { "ダボイマッシュ",						1 },
		[ "Gloop"					] = { "グループ",							1 },
		[ "Oil Spill"				] = { "オイルスピル",						0 },
		[ "Orcish Beastrider"		] = { "オーキシュビーストライダー",			3 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Brawler"			] = { "オーキシュブロウラー",				3 },
		[ "Orcish Champion"			] = { "オーキシュチャンピオン",				3 },
		[ "Orcish Cursemaker"		] = { "オーキシュカースメーカー",			3 },
		[ "Orcish Dragoon"			] = { "オーキシュドラグーン",				3 },
		[ "Orcish Dreadnought"		] = { "オーキシュドレッドノート",			3 },
		[ "Orcish Farkiller"		] = { "オーキシュファーキラー",				3 },
		[ "Orcish Fighter"			] = { "オーキシュファイター",				3 },
		[ "Orcish Firebelcher"		] = { "オーキシュファイアーベルチャー",		3 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Impaler"			] = { "オーキシュインペイラー",				3 },
		[ "Orcish Nightraider"		] = { "オーキシュナイトレイダー",			3 },
		[ "Orcish Predator"			] = { "オーキシュプレデター",				3 },
		[ "Orcish Serjeant"			] = { "オーキシュサージェント",				3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Orcish Veteran"			] = { "オーキシュベテラン",					3 },
		[ "Orcish Warchief"			] = { "オーキシュウォーチーフ",				3 },
		[ "Orcish Zerker"			] = { "オーキシュザーカー",					3 },
		[ "Wolf Bat"				] = { "ウルフバット",						1 },
		[ "Wood Bats"				] = { "ウッドバッツ",						1 },

	},

	-- 修道窟
	[ 150 ] = {
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Champion"			] = { "オーキシュチャンピオン",				3 },
		[ "Orcish Dragoon"			] = { "オーキシュドラグーン",				3 },
		[ "Orcish Dreadnought"		] = { "オーキシュドレッドノート",			3 },
		[ "Orcish Farkiller"		] = { "オーキシュファーキラー",				3 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Predator"			] = { "オーキシュプレデター",				3 },
		[ "Orcish Protector"		] = { "オーキシュプロテクター",				3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Orcish Veteran"			] = { "オーキシュベテラン",					3 },
		[ "Orcish Warchief"			] = { "オーキシュウォーチーフ",				3 },
		[ "Orcish Zerker"			] = { "オーキシュザーカー",					3 },

	},

	-- エルディーム古墳
	[ 195 ] = {
		[ "Blood Soul"				] = { "ブラッドソウル",						1 },
		[ "Dark Stalker"			] = { "ダークストーカー",					3 },
		[ "Fallen Knight"			] = { "フォーレンナイト",					1 },
		[ "Haunt"					] = { "ホーント",							1 },
		[ "Hell Hound"				] = { "ヘルハウンド",						1 },
		[ "Ka"						] = { "カー",								3, nil, {  [ 148 ] =   60, [ 562 ] =   60 } },	-- 回避率ダウン
		[ "Lich"					] = { "リッチ",								1 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Marchosias"				] = { "マルコシアス",						1 },
		[ "Mummy"					] = { "マミー",								1 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "Shade"					] = { "シェイド",							3 },
		[ "Spriggan"				] = { "スプリガン",							3 },
		[ "Tomb Mage"				] = { "トゥームメイジ",						1 },
		[ "Tomb Warrior"			] = { "トゥームウォリアー",					1 },
		[ "Tomb Wolf"				] = { "トゥームウルフ",						1 },
		[ "Utukku"					] = { "ウトゥック",							1 },

	},


	-- プロマシアの呪縛

	-- フィールド

	-- ファノエ運河
	[   1 ] = {
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Protozoan"				] = { "プロウトゾウアン",					1 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Thickshell"				] = { "シックシェル",						0 },

	},

	-- ギルド桟橋
	[   2 ] = {
		[ "Beady Beetle"			] = { "ビーディービートル",					2 },
		[ "Bulldog Bats"			] = { "ブルドッグバッツ",					1 },
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Diving Beetle"			] = { "ダイビングビートル",					2 },
		[ "Forest Tiger"			] = { "フォレストタイガー",					1 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Marsh Funguar"			] = { "マーシュファンガー",					1 },
		[ "Orcish Cursemaker"		] = { "オーキシュカースメーカー",			3 },
		[ "Orcish Fighter"			] = { "オーキシュファイター",				3 },
		[ "Orcish Grunt"			] = { "オーキシュグラント",					3 },
		[ "Orcish Neckchopper"		] = { "オーキシュネックチョッパー",			3 },
		[ "Orcish Serjeant"			] = { "オーキシュサージェント",				3 },
		[ "Orcish Stonechucker"		] = { "オーキシュストーンチャッカー",		3 },
		[ "Poison Funguar"			] = { "ポイズンファンガー",					2 },
		[ "Sabertooth Tiger"		] = { "サーベルトゥースタイガー",			1 },
		[ "Shrieker"				] = { "シュリーカー",						1 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Specter Bat"				] = { "スペクターバット",					1 },
		[ "Stag Beetle"				] = { "スタッグビートル",					2 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },
		[ "Wendigo"					] = { "ウェンディゴ",						1 },
		[ "Wight"					] = { "ワイト",								1 },

	},

	-----------------------------------------------------------
	-- ノルバレン戦線

	-- アルタナの神兵

	-- フィールド

	-- ジャグナー森林[S]
	[  82 ] = {
		[ "Brutal Sheep"			] = { "ブルータルシープ",					2 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Jugner Funguar"			] = { "ジャグナーファンガー",				3 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Champion"			] = { "オーキシュチャンピオン",				3 },
		[ "Orcish Protector"		] = { "オーキシュプロテクター",				3 },
		[ "Orcish Veteran"			] = { "オーキシュベテラン",					3 },
		[ "Screamer"				] = { "スクリーマー",						0 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Stag Beetle"				] = { "スタッグビートル",					2 },
		[ "Walking Tree"			] = { "ウォーキングツリー",					1 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },

	},

	-- バタリア丘陵[S]
	[  84 ] = {
		[ "Ba"						] = { "バー",								2 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Cutter"					] = { "カッター",							1 },
		[ "Evil Spirit"				] = { "イビルスピリット",					1 },
		[ "Orcish Brawler"			] = { "オーキシュブロウラー",				3 },
		[ "Orcish Impaler"			] = { "オーキシュインペイラー",				3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Stalking Sapling"		] = { "ストーキングサプリング",				2 },
		[ "Wight"					] = { "ワイト",								1 },

	},

	-- ダンジョン

	-- ラヴォール村[S]
	[  85 ] = {
		[ "Gloop"					] = { "グループ",							1 },
		[ "Oil Spill"				] = { "オイルスピル",						1 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Champion"			] = { "オーキシュチャンピオン",				3 },
		[ "Orcish Dreadnought"		] = { "オーキシュドレッドノート",			3 },
		[ "Orcish Farkiller"		] = { "オーキシュファーキラー",				3 },
		[ "Orcish Firebelcher"		] = { "オーキシュファイアーベルチャー",		3 },
		[ "Orcish Protector"		] = { "オーキシュプロテクター",				3 },
		[ "Orcish Veteran"			] = { "オーキシュベテラン",					3 },
		[ "Wolf Bat"				] = { "ウルフバット",						0 },
		[ "Wood Bats"				] = { "ウッドバッツ",						1 },

	},

	-- エルディーム古墳[S]
	[ 175 ] = {
		[ "Hell Hound"				] = { "ヘルハウンド",						1 },
		[ "Lich"					] = { "リッチ",								1 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Orcish Brawler"			] = { "オーキシュブロウラー",				3 },
		[ "Orcish Cursemaker"		] = { "オーキシュカースメーカー",			3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Revenant"				] = { "レブナント",							1 },

	},

	-----------------------------------------------------------
	-- デルフラント

	-- オリジナル

	-- フィールド

	-- パシュハウ沼
	[ 109 ] = {
		[ "Black Bat"				] = { "ブラックバット",						2 },
		[ "Bog Bunny"				] = { "ボグバニー",							2 },
		[ "Bog Dog"					] = { "ボグドッグ",							1 },
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Carnivorous Crawler"		] = { "カーニボラスクロウラー",				2 },
		[ "Copper Quadav"			] = { "カッパークゥダフ",					3 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goobbue"					] = { "グゥーブー",							1 },
		[ "Greater Quadav"			] = { "グレータークゥダフ",					3 },
		[ "Marsh Funguar"			] = { "マーシュファンガー",					2 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Onyx Quadav"				] = { "オニキスクゥダフ",					3 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Veteran Quadav"			] = { "ベテランクゥダフ",					3 },
		[ "Zombie"					] = { "ゾンビ",								1 },

	},

	-- ロランベリー耕地
	[ 110 ] = {
		[ "Berry Grub"				] = { "ベリーグラブ",						2 },
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Bronze Quadav"			] = { "ブロンズクゥダフ",					3 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Copper Quadav"			] = { "カッパークゥダフ",					3 },
		[ "Evil Spirit"				] = { "イビルスピリット",					1 },
		[ "Evil Weapon"				] = { "イビルウェポン",						1 },
		[ "Garnet Quadav"			] = { "ガーネットクゥダフ",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goobbue Farmer"			] = { "グゥーブーファーマー",				1 },
		[ "Midnight Wings"			] = { "ミッドナイトウィングス",				2 },
		[ "Moon Bat"				] = { "ムーンバット",						2 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Wight"					] = { "ワイト",								1 },
		[ "Zircon Quadav"			] = { "ジルコンクゥダフ",					3 },

	},

	-- ダンジョン

	-- ベドー
	[ 147 ] = {
		[ "Ancient Quadav"			] = { "エインシェントクゥダフ",				3 },
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Bronze Quadav"			] = { "ブロンズクゥダフ",					3 },
		[ "Broo"					] = { "ブルー",								3 },
		[ "Caterpillar"				] = { "キャタピラー",						2 },
		[ "Charging Sheep"			] = { "チャージングシープ",					2 },
		[ "Copper Quadav"			] = { "カッパークゥダフ",					3 },
		[ "Darksteel Quadav"		] = { "ダークスチールクゥダフ",				3 },
		[ "Elder Quadav"			] = { "エルダークゥダフ",					3 },
		[ "Emerald Quadav"			] = { "エメラルドクゥダフ",					3 },
		[ "Garnet Quadav"			] = { "ガーネットクゥダフ",					3 },
		[ "Gloop"					] = { "グループ",							1 },
		[ "Gold Quadav"				] = { "ゴールドクゥダフ",					3 },
		[ "Iron Quadav"				] = { "アイアンクゥダフ",					3 },
		[ "Larva"					] = { "ラーバ",								3 },
		[ "Mythril Quadav"			] = { "ミスリルクゥダフ",					3 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Platinum Quadav"			] = { "プラチナクゥダフ",					3 },
		[ "Sapphire Quadav"			] = { "サファイアクゥダフ",					3 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Spinel Quadav"			] = { "スピネルクゥダフ",					3 },
		[ "Steel Quadav"			] = { "スチールクゥダフ",					3 },
		[ "Topaz Quadav"			] = { "トパーズクゥダフ",					3 },
		[ "Zircon Quadav"			] = { "ジルコンクゥダフ",					3 },

	},

	-- クゥルンの大伽藍
	[ 148 ] = {
		[ "Ancient Quadav"			] = { "エインシェントクゥダフ",				3 },
		[ "Darksteel Quadav"		] = { "ダークスチールクゥダフ",				3 },
		[ "Platinum Quadav"			] = { "プラチナクゥダフ",					3 },
		[ "Sapphire Quadav"			] = { "サファイアクゥダフ",					3 },

	},

	-- クロウラーの巣
	[ 197 ] = {
		[ "Blazer Beetle"			] = { "ブレザービートル",					3 },
		[ "Caveberry"				] = { "ケイブベリー",						2 },
		[ "Crawler Hunter"			] = { "クロウラーハンター",					3 },
		[ "Doom Scorpion"			] = { "ドゥームスコーピオン",				3 },
		[ "Exoray"					] = { "エクソレイ",							3 },
		[ "Helm Beetle"				] = { "ヘルムビートル",						3 },
		[ "Killer Mushroom"			] = { "キラーマッシュルーム",				2 },
		[ "Knight Crawler"			] = { "ナイトクロウラー",					3 },
		[ "Mushussu"				] = { "ムシュフシュ",						1 },
		[ "Nest Beetle"				] = { "ネストビートル",						2 },
		[ "Rumble Crawler"			] = { "ランブルクロウラー",					3 },
		[ "Soldier Crawler"			] = { "ソルジャークロウラー",				3 },
		[ "Witch Hazel"				] = { "ウィッチヘイゼル",					2 },
		[ "Worker Crawler"			] = { "ワーカークロウラー",					2 },

	},

	-----------------------------------------------------------
	-- デルフラント戦線

	-- アルタナの神兵

	-- フィールド

	-- パシュハウ沼[S]
	[  90 ] = {
		[ "Ancient Quadav"			] = { "エインシェントクゥダフ",				3 },
		[ "Bog Bunny"				] = { "ボグバニー",							2 },
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Elder Quadav"			] = { "エルダークゥダフ",					3 },
		[ "Garnet Quadav"			] = { "ガーネットクゥダフ",					3 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Gold Quadav"				] = { "ゴールドクゥダフ",					3 },
		[ "Goobbue"					] = { "グゥーブー",							1 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Mythril Quadav"			] = { "ミスリルクゥダフ",					3 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Zircon Quadav"			] = { "ジルコンクゥダフ",					3 },
		[ "Zombie"					] = { "ゾンビ",								1 },
	},

	-- ロランベリー耕地[S]
	[  91 ] = {
		[ "Berry Grub"				] = { "ベリーグラブ",						2 },
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Bronze Quadav"			] = { "ブロンズクゥダフ",					3 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Emerald Quadav"			] = { "エメラルドクゥダフ",					3 },
		[ "Evil Spirit"				] = { "イビルスピリット",					1 },
		[ "Goobbue Farmer"			] = { "グゥーブーファーマー",				1 },
		[ "Midnight Wings"			] = { "ミッドナイトウィングス",				2 },
		[ "Moon Bat"				] = { "ムーンバット",						2 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Wight"					] = { "ワイト",								1 },
		[ "Worker Crawler"			] = { "ワーカークロウラー",					2 },

	},

	-- ブンカール浦[S]
	[  83 ] = {
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Gigas's Tiger"			] = { "ギガースズタイガー",					0 },
		[ "Goblin's Bat"			] = { "ゴブリンズバット",					0 },
		[ "Goliath Beetle"			] = { "ゴリアテビートル",					2 },
		[ "Haunt"					] = { "ホーント",							1 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Zerker"			] = { "オーキシュザーカー",					3 },
		[ "Robber Crab"				] = { "ロバークラブ",						0 },
		[ "Treant"					] = { "トレント",							1 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },

	},

	-- ダンジョン

	-- ベドー[S]
	[  92 ] = {
		[ "Ancient Quadav"			] = { "エインシェントクゥダフ",				3 },
		[ "Gold Quadav"				] = { "ゴールドクゥダフ",					3 },
		[ "Iron Quadav"				] = { "アイアンクゥダフ",					3 },
		[ "Platinum Quadav"			] = { "プラチナクゥダフ",					3 },
		[ "Steel Quadav"			] = { "スチールクゥダフ",					3 },

	},

	-- クロウラーの巣[S]
	[ 171 ] = {
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Bronze Quadav"			] = { "ブロンズクゥダフ",					3 },
		[ "Doom Scorpion"			] = { "ドゥームスコーピオン",				3 },
		[ "Emerald Quadav"			] = { "エメラルドクゥダフ",					3 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Processionaire"			] = { "プロセッショネル",					3 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Witch Hazel"				] = { "ウィッチヘイゼル",					2 },

	},

	-----------------------------------------------------------
	-- アラゴーニュ

	-- オリジナル

	-- フィールド

	-- メリファト山地
	[ 119 ] = {
		[ "Axe Beak"				] = { "アクスビーク",						1 },
		[ "Black Bat"				] = { "ブラックバット",						2 },
		[ "Boggart"					] = { "ボガート",							1 },
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Coeurl"					] = { "クァール",							1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Jubjub"					] = { "ジャブジャブ",						2 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Scavenging Hound"		] = { "スカベンジングハウンド",				1 },
		[ "Stag Beetle"				] = { "スタッグビートル",					2 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },
		[ "Zombie"					] = { "ゾンビ",								1 },

	},

	-- ソロムグ原野
	[ 120 ] = {
		[ "Champaign Coeurl"		] = { "シャンペーンクァール",				1 },
		[ "Cutter"					] = { "カッター",							1 },
		[ "Diving Beetle"			] = { "ダイビングビートル",					2 },
		[ "Evil Spirit"				] = { "イビルスピリット",					1 },
		[ "Evil Weapon"				] = { "イビルウェポン",						1 },
		[ "Goblin Bounty Hunter"	] = { "ゴブリンバウンティハンター",			3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin's Beetle"			] = { "ゴブリンズビートル",					0 },
		[ "Midnight Wings"			] = { "ミッドナイトウィングス",				2 },
		[ "Moon Bat"				] = { "ムーンバット",						2 },
		[ "Old Sabertooth"			] = { "オールドサーベルトゥース",			3 },
		[ "Sabertooth Tiger"		] = { "サーベルトゥースタイガー",			3 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Tabar Beak"				] = { "タバールビーク",						1 },
		[ "Wight"					] = { "ワイト",								1 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ダンジョン

	-- オズトロヤ城
	[ 151 ] = {
		[ "Bastion Bats"			] = { "バスティオンバッツ",					1 },
		[ "Bulwark Bat"				] = { "ブルワークバット",					1 },
		[ "Cutter"					] = { "カッター",							1 },
		[ "Meat Maggot"				] = { "ミートマゴット",						3 },
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ガルレージュ要塞
	[ 200 ] = {
		[ "Acid Grease"				] = { "アシッドグリース",					1 },
		[ "Bhuta"					] = { "ブータ",								1 },
		[ "Borer Beetle"			] = { "ボーラービートル",					1 },
		[ "Chamber Beetle"			] = { "チェインバービートル",				3 },
		[ "Citadel Bats"			] = { "シタデルバッツ",						3 },
		[ "Demonic Weapon"			] = { "デモニックウェポン",					1 },
		[ "Fallen Evacuee"			] = { "フォーレンイヴァキュイー",			1 },
		[ "Fallen Mage"				] = { "フォーレンメイジ",					1 },
		[ "Fallen Major"			] = { "フォーレンメジャー",					1 },
		[ "Fallen Officer"			] = { "フォーレンオフィサー",				1 },
		[ "Fallen Soldier"			] = { "フォーレンソルジャー",				1 },
		[ "Funnel Bats"				] = { "ファネルバッツ",						3 },
		[ "Oil Spill"				] = { "オイルスピル",						1 },
		[ "Over Weapon"				] = { "オーバーウェポン",					1 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "Siege Bat"				] = { "シージバット",						2 },
		[ "Vault Weapon"			] = { "ボールトウェポン",					1 },
		[ "Wingrats"				] = { "ウィングラッツ",						2 },
		[ "Wraith"					] = { "レイス",								1 },

	},

	-- プロマシアの呪縛

	-- フィールド

	-- アットワ地溝
	[   7 ] = {
		[ "Arch Corse"				] = { "アークコース",						1 },
		[ "Attohwa Coeurl"			] = { "アットワクァール",					1 },
		[ "Burrow Antlion"			] = { "バロウアントリオン",					1 },
		[ "Cave Antlion"			] = { "ケイブアントリオン",					1 },
		[ "Corse"					] = { "コース",								1 },
		[ "Cutlass Scorpion"		] = { "カトラススコーピオン",				1 },
		[ "Doom Scorpion"			] = { "ドゥームスコーピオン",				3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Hunter Antlion"			] = { "ハンターアントリオン",				2 },
		[ "Lich"					] = { "リッチ",								1 },
		[ "Master Coeurl"			] = { "マスタークァール",					1 },
		[ "Mummy"					] = { "マミー",								1 },
		[ "Pit Antlion"				] = { "ピットアントリオン",					1 },
		[ "Tomb Mage"				] = { "トゥームメイジ",						1 },
		[ "Tomb Warrior"			] = { "トゥームウォリアー",					1 },
		[ "Tracer Antlion"			] = { "トレーサーアントリオン",				2 },
		[ "Tracker Antlion"			] = { "トラッカーアントリオン",				2 },
		[ "Trench Antlion"			] = { "トレンチアントリオン",				1 },
		[ "Tulwar Scorpion"			] = { "タルワールスコーピオン",				1 },

	},

	-- ダンジョン

	-----------------------------------------------------------
	-- アラゴーニュ戦線

	-- アルタナの神兵

	-- フィールド

	-- メリファト山地[S]
	[  97 ] = {
		[ "Axe Beak"				] = { "アクスビーク",						1 },
		[ "Black Bat"				] = { "ブラックバット",						2 },
		[ "Jubjub"					] = { "ジャブジャブ",						2 },
		[ "Mountain Jubjub"			] = { "マウンテンジャブジャブ",				2 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Scavenging Hound"		] = { "スカベンジングハウンド",				1 },
		[ "Stag Beetle"				] = { "スタッグビートル",					2 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ソロムグ原野[S]
	[  98 ] = {
		[ "Diving Beetle"			] = { "ダイビングビートル",					2 },
		[ "Goblin's Beetle"			] = { "ゴブリンズビートル",					0 },
		[ "Midnight Wings"			] = { "ミッドナイトウィングス",				2 },
		[ "Moon Bat"				] = { "ムーンバット",						2 },
		[ "Scavenging Hound"		] = { "スカベンジングハウンド",				1 },
		[ "Tabar Beak"				] = { "タバールビーク",						1 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ダンジョン

	-- オズトロヤ城[S]
	[  99 ] = {
		[ "Bastion Bats"			] = { "バスティオンバッツ",					2 },
		[ "Bulwark Bat"				] = { "ブルワークバット",					1 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ガルレージュ要塞[S]
	[ 164 ] = {
		[ "Dire Bat"				] = { "ダイアーバット",						2 },
		[ "Incubus Bats"			] = { "インキュバスバッツ",					3 },
		[ "Mousse"					] = { "ムース",								1 },

	},

	-----------------------------------------------------------
	-- クフィム

	-- オリジナル

	-- クフィム島
	[ 126 ] = {
		[ "Ancient Bat"				] = { "エインシェントバット",				1 },
		[ "Banshee"					] = { "バンシー",							1 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Dancing Weapon"			] = { "ダンシングウェポン",					1 },
		[ "Dark Bats"				] = { "ダークバッツ",						2 },
		[ "Giant Ascetic"			] = { "ジャイアントアセティック",			3 },
		[ "Giant Hunter"			] = { "ジャイアントハンター",				3 },
		[ "Giant Ranger"			] = { "ジャイアントレインジャー",			3 },
		[ "Giant Trapper"			] = { "ジャイアントトラッパー",				3 },
		[ "Glow Bat"				] = { "グロウバット",						2 },
		[ "Goblin Bounty Hunter"	] = { "ゴブリンバウンティハンター",			3 },
		[ "Seeker Bats"				] = { "シーカーバッツ",						2 },
		[ "Wight"					] = { "ワイト",								1 },

	},

	-- ベヒーモスの縄張り
	[ 127 ] = {
		[ "Bhuta"					] = { "ブータ",								1 },
		[ "Demonic Weapon"			] = { "デモニックウェポン",					1 },
		[ "Greater Gayla"			] = { "グレーターゲイラ",					1 },
		[ "Lesser Gaylas"			] = { "レッサーゲイラス",					3 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Master Coeurl"			] = { "マスタークァール",					1 },

	},

	-- ダンジョン

	-- デルクフの塔下層
	[ 184 ] = {
		[ "Ancient Bat"				] = { "エインシェントバット",				1 },
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Giant Gatekeeper"		] = { "ジャイアントゲートキーパー",			3 },
		[ "Giant Guard"				] = { "ジャイアントガード",					3 },
		[ "Giant Lobber"			] = { "ジャイアントロバー",					3 },
		[ "Giant Sentry"			] = { "ジャイアントセントリー",				3 },
		[ "Gigas Butcher"			] = { "ギガースブッチャー",					3 },
		[ "Gigas Hallwatcher"		] = { "ギガースホールウォッチャー",			3 },
		[ "Gigas Punisher"			] = { "ギガースパニッシャー",				3 },
		[ "Gigas Sculptor"			] = { "ギガーススカルプター",				3 },
		[ "Gigas's Bat"				] = { "ギガースズバット",					0 },
		[ "Gigas's Bats"			] = { "ギガースズバッツ",					0 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Seeker Bats"				] = { "シーカーバッツ",						1 },

	},

	-- デルクフの塔中層
	[ 157 ] = {
		[ "Banshee"					] = { "バンシー",							1 },
		[ "Big Bat"					] = { "ビッグバット",						1 },
		[ "Evil Spirit"				] = { "イビルスピリット",					1 },
		[ "Giant Gatekeeper"		] = { "ジャイアントゲートキーパー",			3 },
		[ "Giant Guard"				] = { "ジャイアントガード",					3 },
		[ "Giant Lobber"			] = { "ジャイアントロバー",					3 },
		[ "Giant Sentry"			] = { "ジャイアントセントリー",				3 },
		[ "Gigas Jailer"			] = { "ギガースジェイラー",					3 },
		[ "Gigas Kettlemaster"		] = { "ギガースケトルマスター",				3 },
		[ "Gigas Quarrier"			] = { "ギガースクオリアー",					3 },
		[ "Gigas Wallwatcher"		] = { "ギガースウォールウォッチャー",		3 },
		[ "Gigas's Bat"				] = { "ギガースズバット",					0 },
		[ "Gigas's Bats"			] = { "ギガースズバッツ",					0 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin's Bat"			] = { "ゴブリンズバット",					0 },
		[ "Mold Bats"				] = { "モールドバッツ",						1 },
		[ "Stirge"					] = { "スティージ",							1 },
		[ "Tower Bats"				] = { "タワーバッツ",						1 },

	},

	-- デルクフの塔上層
	[ 158 ] = {
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Gigas Bonecutter"		] = { "ギガースボーンカッター",				3 },
		[ "Gigas Spirekeeper"		] = { "ギガーススパイアキーパー",			3 },
		[ "Gigas Stonemason"		] = { "ギガースストーンメイソン",			3 },
		[ "Gigas Torturer"			] = { "ギガーストーチュラー",				3 },
		[ "Gigas's Bat"				] = { "ギガースズバット",					0 },
		[ "Gigas's Bats"			] = { "ギガースズバッツ",					0 },
		[ "Incubus Bats"			] = { "インキュバスバッツ",					3 },
		[ "Jotunn Gatekeeper"		] = { "ヨトゥンゲートキーパー",				3 },
		[ "Jotunn Hallkeeper"		] = { "ヨトゥンホールキーパー",				3 },
		[ "Jotunn Wallkeeper"		] = { "ヨトゥンウォールキーパー",			3 },
		[ "Jotunn Wildkeeper"		] = { "ヨトゥンワイルドキーパー",			3 },
		[ "Phasma"					] = { "ファスマ",							1 },

	},

	-----------------------------------------------------------
	-- フォルガンディ

	-- オリジナル

	-- フィールド

	--  ラングモント峠
	[ 166 ] = {
		[ "Bat Eye"					] = { "バットアイ",							3 },
		[ "Bilesucker"				] = { "バイルサッカー",						2 },
		[ "Blade Bat"				] = { "ブレードバット",						1 },
		[ "Cave Scorpion"			] = { "ケイブスコーピオン",					1 },
		[ "Evil Weapon"				] = { "イビルウェポン",						1 },
		[ "Floating Eye"			] = { "フローティングアイ",					1 },
		[ "Giant Scorpion"			] = { "ジャイアントスコーピオン",			1 },
		[ "Goblin Artificer"		] = { "ゴブリンアーティフィッサァー",		3 },
		[ "Goblin Chaser"			] = { "ゴブリンチェイサー",					3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Hoodoo"			] = { "ゴブリンフードゥー",					3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Goblin's Bats"			] = { "ゴブリンズバッツ",					0 },
		[ "Hovering Oculus"			] = { "ホバリングオキュラス",				1 },
		[ "Oil Slick"				] = { "オイルスリック",						1 },
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Seeker Bats"				] = { "シーカーバッツ",						2 },
		[ "Stirge"					] = { "スティージ",							3 },
		[ "Wind Bats"				] = { "ウィンドバッツ",						0 },

	},

	-- ボスディン氷河
	[ 111 ] = {
		[ "Bat Eye"					] = { "バットアイ",							3 },
		[ "Ghast"					] = { "ガスト",								1 },
		[ "Gigas's Tiger"			] = { "ギガースズタイガー",					0 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Goblin's Tiger"			] = { "ゴブリンズタイガー",					0 },
		[ "Lugat"					] = { "ルガト",								1 },
		[ "Rime Gigas"				] = { "ライムギガース",						3 },
		[ "Sleet Gigas"				] = { "スリートギガース",					3 },
		[ "Snow Gigas"				] = { "スノーギガース",						3 },
		[ "Stone Golem"				] = { "ストーンゴーレム",					1 },
		[ "Tundra Tiger"			] = { "ツンドラタイガー",					1 },

	},

	-- ダンジョン

	-- フェ・イン
	[ 204 ] = {
		[ "Camazotz"				] = { "カマソッソ",							3 },
		[ "Colossus"				] = { "コロッサス",							1 },
		[ "Hellish Weapon"			] = { "ヘリッシュウェポン",					1 },
		[ "Killing Weapon"			] = { "キリングウェポン",					1 },
		[ "Ore Golem"				] = { "オーレゴーレム",						1 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "Shadow"					] = { "シャドウ",							3 },
		[ "Specter"					] = { "スペクター",							3 },
		[ "Undead Bats"				] = { "アンデッドバッツ",					1 },
		[ "Underworld Bats"			] = { "アンダーワールドバッツ",				3 },
		[ "Utukku"					] = { "ウトゥック",							1 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					1 },

	},

	-- プロマシアの呪縛

	-- フィールド

	-- ダンジョン

	-- ソ・ジヤ
	[   9 ] = {
		[ "Avalanche"				] = { "アバランチ",							1 },
		[ "Camazotz"				] = { "カマソッソ",							1 },
		[ "Dire Bat"				] = { "ダイアーバット",						1 },
		[ "Diremite"				] = { "ダイアマイト",						0 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Bandit"			] = { "ゴブリンバンディット",				3 },
		[ "Goblin Bouncer"			] = { "ゴブリンバウンサー",					3 },
		[ "Goblin Enchanter"		] = { "ゴブリンエンチャンター",				3 },
		[ "Goblin Hunter"			] = { "ゴブリンハンター",					3 },
		[ "Goblin Jeweler"			] = { "ゴブリンジュウェラー",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Veterinarian"		] = { "ゴブリンベテレネリアン",				3 },
		[ "Goblin's Bat"			] = { "ゴブリンズバット",					0 },
		[ "Morozko"					] = { "モロズコ",							1 },
		[ "Purgatory Bat"			] = { "パーガトリーバット",					1 },
		[ "Snoll"					] = { "スノール",							1 },
		[ "Snowball"				] = { "スノーボール",						1 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					2 },

	},

	-----------------------------------------------------------
	-- フォルガンディ戦線

	-- アルタナの神兵

	-- フィールド

	-- ダンジョン

	-- ボスディン氷河[S]
	[ 136 ] = {
		[ "Gigas's Tiger"			] = { "ギガースズタイガー",					0 },

	},

	-----------------------------------------------------------
	-- バルドニア

	-- オリジナル

	-- フィールド

	-- ザルカバード
	[ 112 ] = {
		[ "Blizzard Gigas"			] = { "ブリザードギガース",					3 },
		[ "Cursed Weapon"			] = { "カースドウェポン",					1 },
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Etemmu"					] = { "エテンム",							1 },
		[ "Evil Eye"				] = { "イービルアイ",						1 },
		[ "Frost Gigas"				] = { "フロストギガース",					3 },
		[ "Gigas's Tiger"			] = { "ギガースズタイガー",					0 },
		[ "Goblin's Tiger"			] = { "ゴブリンズタイガー",					0 },
		[ "Graupel Gigas"			] = { "グラウパルギガース",					3 },
		[ "Hail Gigas"				] = { "ヘイルギガース",						3 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛

	},

	-- ダンジョン

	-- ズヴァール城外郭
	[ 161 ] = {
		[ "Ahriman"					] = { "アーリマン",							3 },
		[ "Evil Eye"				] = { "イービルアイ",						3 },
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Elder Quadav"			] = { "エルダークゥダフ",					3 },
		[ "Emerald Quadav"			] = { "エメラルドクゥダフ",					3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Goblin's Bats"			] = { "ゴブリンズバッツ",					0 },
		[ "Iron Quadav"				] = { "アイアンクゥダフ",					3 },
		[ "Morbid Eye"				] = { "モービッドアイ",						3 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Spinel Quadav"			] = { "スピネルクゥダフ",					3 },

	},

	-- ズヴァール城内郭
	[ 162 ] = {
		[ "Deadly Iris"				] = { "デッドリーアイリス",					3 },
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Elder Quadav"			] = { "エルダークゥダフ",					3 },
		[ "Emerald Quadav"			] = { "エメラルドクゥダフ",					3 },
		[ "Evil Eye"				] = { "イービルアイ",						3 },
		[ "Goblin Bouncer"			] = { "ゴブリンバウンサー",					3 },
		[ "Goblin Enchanter"		] = { "ゴブリンエンチャンター",				3 },
		[ "Goblin Hunter"			] = { "ゴブリンハンター",					3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Goblin's Bat"			] = { "ゴブリンズバット",					0 },
		[ "Gold Quadav"				] = { "ゴールドクゥダフ",					3 },
		[ "Iron Quadav"				] = { "アイアンクゥダフ",					3 },
		[ "Morbid Eye"				] = { "モービッドアイ",						3 },
		[ "Mythril Quadav"			] = { "ミスリルクゥダフ",					3 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Predator"			] = { "オーキシュプレデター",				3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Orcish Veteran"			] = { "オーキシュベテラン",					3 },
		[ "Orcish Warchief"			] = { "オーキシュウォーチーフ",				3 },
		[ "Orcish Zerker"			] = { "オーキシュザーカー",					3 },
		[ "Spinel Quadav"			] = { "スピネルクゥダフ",					3 },
		[ "Steel Quadav"			] = { "スチールクゥダフ",					3 },
		[ "Topaz Quadav"			] = { "トパーズクゥダフ",					3 },

	},

	-- プロマシアの呪縛

	-- フィールド

	-- ウルガラン山脈
	[   5 ] = {
		[ "Agloolik"				] = { "アグロリック",						1 },
		[ "Akselloak"				] = { "アクセローク",						1 },
		[ "Cwn Annwn"				] = { "クーンアンヌーン",					1 },
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Esbat"					] = { "エスバット",							1 },
		[ "Fachan"					] = { "ファハン",							1 },
		[ "Morozko"					] = { "モロズコ",							1 },
		[ "Nightmare Bats"			] = { "ナイトメアバッツ",					1 },
		[ "Phasma"					] = { "ファスマ",							1 },
		[ "Polar Hare"				] = { "ポーラーヘアー",						0 },
		[ "Smolenkos"				] = { "スモレンコス",						1 },
		[ "Snoll"					] = { "スノール",							1 },
		[ "Srei Ap"					] = { "スレイエイプ",						1 },
		[ "Succubus Bats"			] = { "サキュバスバッツ",					1 },
		[ "Uleguerand Tiger"		] = { "ウルガランタイガー",					1 },
		[ "Variable Hare"			] = { "バリアブルヘアー",					0 },

	},

	-- ダンジョン

	-----------------------------------------------------------
	-- バルドニア戦線

	-- アルタナの神兵

	-- フィールド

	-- ザルカバード[S]
	[ 137 ] = {
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Gigas's Tiger"			] = { "ギガースズタイガー",					0 },
	},

	-- ダンジョン

	-- ズヴァール城外郭[S]
	[ 138 ] = {
		[ "Ancient Quadav"			] = { "エインシェントクゥダフ",				3 },
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Gold Quadav"				] = { "ゴールドクゥダフ",					3 },
		[ "Iron Quadav"				] = { "アイアンクゥダフ",					3 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Champion"			] = { "オーキシュチャンピオン",				3 },
		[ "Orcish Protector"		] = { "オーキシュプロテクター",				3 },
		[ "Orcish Veteran"			] = { "オーキシュベテラン",					3 },

	},

	-- ズヴァール城内郭[S]
	[ 155 ] = {
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Orcish Dreadnought"		] = { "オーキシュドレッドノート",			3 },
		[ "Orcish Farkiller"		] = { "オーキシュファーキラー",				3 },
		[ "Platinum Quadav"			] = { "プラチナクゥダフ",					3 },
		[ "Steel Quadav"			] = { "スチールクゥダフ",					3 },

	},

	-----------------------------------------------------------
	-- 低地エルシモ

	-- ジラートの幻影

	-- フィールド

	-- ユタンガ大森林
	[ 123 ] = {
		[ "Bigclaw"					] = { "ビッグクロー",						1 },
		[ "Brook Sahagin"			] = { "ブルックサハギン",					3 },
		[ "Creek Sahagin"			] = { "クリークサハギン",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Ironshell"				] = { "アイアンシェル",						1 },
		[ "Jungle Coeurl"			] = { "ジャングルクァール",					1 },
		[ "Lake Sahagin"			] = { "レイクサハギン",						3 },
		[ "River Sahagin"			] = { "リバーサハギン",						3 },
		[ "Rivulet Sahagin"			] = { "リビュレットサハギン",				3 },
		[ "Soldier Crawler"			] = { "ソルジャークロウラー",				2 },
		[ "Stream Sahagin"			] = { "ストリームサハギン",					3 },
		[ "Young Opo-opo"			] = { "ヤングオポオポ",						2 },

	},

	-- ダンジョン

	-- 海蛇の岩窟
	[ 176 ] = {
		[ "Bigclaw"					] = { "ビッグクロー",						1 },
		[ "Bog Sahagin"				] = { "ボグサハギン",						3 },
		[ "Brook Sahagin"			] = { "ブルックサハギン",					3 },
		[ "Coastal Sahagin"			] = { "コースタルサハギン",					3 },
		[ "Delta Sahagin"			] = { "デルタサハギン",						3 },
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Ghast"					] = { "ガスト",								1 },
		[ "Greatclaw"				] = { "グレートクロー",						1 },
		[ "Ironshell"				] = { "アイアンシェル",						1 },
		[ "Lagoon Sahagin"			] = { "ラグーンサハギン",					3 },
		[ "Lake Sahagin"			] = { "レイクサハギン",						3 },
		[ "Marsh Sahagin"			] = { "マーシュサハギン",					3 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Nightmare Bats"			] = { "ナイトメアバッツ",					3 },
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Pond Sahagin"			] = { "ポンドサハギン",						3 },
		[ "Riparian Sahagin"		] = { "ライペアリアンサハギン",				3 },
		[ "Rivulet Sahagin"			] = { "リビュレットサハギン",				3 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },
		[ "Rock Crab"				] = { "ロッククラブ",						1 },
		[ "Shore Sahagin"			] = { "ショアーサハギン",					3 },
		[ "Spring Sahagin"			] = { "スプリングサハギン",					3 },
		[ "Swamp Sahagin"			] = { "スワンプサハギン",					3 },
		[ "Undead Bats"				] = { "アンデッドバッツ",					2 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					2 },

	},

	-----------------------------------------------------------
	-- 高地エルシモ

	-- ジラートの幻影

	-- フィールド

	-- ヨアトル大森林
	[ 124 ] = {
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Goblin Bouncer"			] = { "ゴブリンバウンサー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Hunter"			] = { "ゴブリンハンター",					3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Master Coeurl"			] = { "マスタークァール",					1 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },
		[ "Young Opo-opo"			] = { "ヤングオポオポ",						2 },
		[ "Worker Crawler"			] = { "ワーカークロウラー",					2 },
	},

	-- ダンジョン

	-- ヴガレピ寺院
	[ 159 ] = {
		[ "Rumble Crawler"			] = { "ランブルクロウラー",					2 },
		[ "Temple Opo-opo"			] = { "テンプルオポオポ",					2 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },
		[ "Torama"					] = { "トラマ",								1 },

	},

	-- 怨念洞
	[ 160 ] = {
		[ "Bullbeggar"				] = { "ブルベガー",							3 },
		[ "Cutlass Scorpion"		] = { "カトラススコーピオン",				1 },
		[ "Den Scorpion"			] = { "デンスコーピオン",					1 },
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Rock Crab"				] = { "ロッククラブ",						1 },
		[ "Succubus Bats"			] = { "サキュバスバッツ",					3 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },

	},

	-- イフリートの釜
	[ 205 ] = {
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Bandit"			] = { "ゴブリンバンディット",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Shepherd"			] = { "ゴブリンシェパード",					3 },
		[ "Goblin's Bats"			] = { "ゴブリンズバッツ",					0 },
		[ "Nightmare Bats"			] = { "ナイトメアバッツ",					3 },
		[ "Old Opo-opo"				] = { "オールドオポオポ",					2 },
		[ "Sulfur Scorpion"			] = { "サルファースコーピオン",				1 },

	},

	-----------------------------------------------------------
	-- クゾッツ

	-- ジラートの幻影

	-- フィールド

	-- 東アルテパ砂漠
	[ 114 ] = {
		[ "Antican Auxiliarius"		] = { "アンティカンアウクシリアーリウス",	3 },
		[ "Antican Centurio"		] = { "アンティカンセンチュリオ",			3 },
		[ "Antican Decurio"			] = { "アンティカンデクリオー",				3 },
		[ "Antican Faber"			] = { "アンティカンファベル",				3 },
		[ "Antican Funditor"		] = { "アンティカンフンディトル",			3 },
		[ "Antican Sagittarius"		] = { "アンティカンサジタリウス",			3 },
		[ "Antican Speculator"		] = { "アンティカンスペクラトール",			3 },
		[ "Antican Veles"			] = { "アンティカンウェーレス",				3 },
		[ "Bigclaw"					] = { "ビッグクロー",						1 },
		[ "Cutter"					] = { "カッター",							1 },
		[ "Doom Scorpion"			] = { "ドゥームスコーピオン",				3 },
		[ "Giant Spider"			] = { "ジャイアントスパイダー",				2 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Goblin's Spider"			] = { "ゴブリンズスパイダー",				0 },
		[ "Ironshell"				] = { "アイアンシェル",						1 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Sabotender"				] = { "サボテンダー",						1 },
		[ "Sand Beetle"				] = { "サンドビートル",						2 },

	},

	-- 西アルテパ砂漠
	[ 125 ] = {
		[ "Antican Eques"			] = { "アンティカンエクエス",				3 },
		[ "Antican Essedarius"		] = { "アンティカンエッセダーリウス",		3 },
		[ "Antican Hoplomachus"		] = { "アンティカンホプロマクス",			3 },
		[ "Antican Lanista"			] = { "アンティカンラニスタ",				3 },
		[ "Antican Retiarius"		] = { "アンティカンレティアーリウス",		3 },
		[ "Antican Secutor"			] = { "アンティカンセクトール",				3 },
		[ "Bigclaw"					] = { "ビッグクロー",						1 },
		[ "Cactuar"					] = { "カクター",							1 },
		[ "Desert Beetle"			] = { "デザートビートル",					2 },
		[ "Desert Spider"			] = { "デザートスパイダー",					2 },
		[ "Fallen Knight"			] = { "フォーレンナイト",					1 },
		[ "Goblin Bouncer"			] = { "ゴブリンバウンサー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Enchanter"		] = { "ゴブリンエンチャンター",				3 },
		[ "Goblin Hunter"			] = { "ゴブリンハンター",					3 },
		[ "Goblin Welldigger"		] = { "ゴブリンウェルディガー",				3 },
		[ "Ironshell"				] = { "アイアンシェル",						1 },
		[ "Lich"					] = { "リッチ",								1 },
		[ "Tulwar Scorpion"			] = { "タルワールスコーピオン",				1 },

	},

	-- ダンジョン

	-- 流砂洞
	[ 208 ] = {
		[ "Antican Aedilis"			] = { "アンティカンアエディーリス",			3 },
		[ "Antican Antesignanus"	] = { "アンティカンアンテシーグナーヌス",	3 },
		[ "Antican Hastatus"		] = { "アンティカンハスタートゥス",			3 },
		[ "Antican Princeps"		] = { "アンティカンプリンケプス",			3 },
		[ "Antican Quaestor"		] = { "アンティカンクワエストル",			3 },
		[ "Antican Signifer"		] = { "アンティカンシーグニフェル",			3 },
		[ "Antican Triarius"		] = { "アンティカントリアリーウス",			3 },
		[ "Girtab"					] = { "ギルタブ",							1 },
		[ "Girtablulu"				] = { "ギルタブリル",						1 },
		[ "Helm Beetle"				] = { "ヘルムビートル",						2 },
		[ "Sabotender Bailaor"		] = { "サボテンダーバイラオール",			1 },
		[ "Sand Spider"				] = { "サンドスパイダー",					2 },
		[ "Sand Tarantula"			] = { "サンドタランチュラ",					3 },
		[ "Spelunking Sabotender" 	] = { "スペランキングサボテンダー",			1 },
		
	},

	-----------------------------------------------------------
	-- ヴォルボー

	-- ジラートの幻影

	-- フィールド

	-- テリガン岬
	[ 113 ] = {
		[ "Beach Bunny"				] = { "ビーチバニー",						2 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Fantasma"				] = { "ファンタズマ",						1 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Bandit"			] = { "ゴブリンバンディット",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Shepherd"			] = { "ゴブリンシェパード",					3 },
		[ "Goblin's Rabbit"			] = { "ゴブリンズラビット",					0 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },
		[ "Rock Crab"				] = { "ロッククラブ",						1 },
		[ "Sand Cockatrice"			] = { "サンドコカトリス",					1 },

	},

	-- ダンジョン

	-- クフタルの洞門
	[ 174 ] = {
		[ "Diplopod"				] = { "ディプロポッド",						1 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Bandit"			] = { "ゴブリンバンディット",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Tamer"			] = { "ゴブリンテイマー",					3 },
		[ "Goblin's Spider"			] = { "ゴブリンズスパイダー",				0 },
		[ "Greater Cockatrice"		] = { "グレーターコカトリス",				1 },
		[ "Haunt"					] = { "ホーント",							1 },
		[ "Ovinnik"					] = { "オヴィンニク",						1 },
		[ "Recluse Spider"			] = { "レクルーススパイダー",				3 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },
		[ "Sabotender Sediendo"		] = { "サボテンダー セディエンド",			1 },
		[ "Scavenger Crab"			] = { "スカベンジャークラブ",				1 },

	},

	-- グスタフの洞門
	[ 212 ] = {
		[ "Antares"					] = { "アンタレス",							1 },
		[ "Doom Guard"				] = { "ドゥームガード",						1 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Doom Warlock"			] = { "ドゥームワーロック",					1 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Shepherd"			] = { "ゴブリンシェパード",					3 },
		[ "Greater Gaylas"			] = { "グレーターゲイラス",					2 },
		[ "Erlik"					] = { "エルリク",							1 },
		[ "Hell Bat"				] = { "ヘルバット",							2 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },

	},

	-----------------------------------------------------------
	-- リ・テロア

	-- ジラートの幻影

	-- フィールド

	-- 聖地ジ・タ
	[ 121 ] = {
		[ "Ancient Bat"				] = { "エインシェントバット",				3 },
		[ "Bigclaw"					] = { "ビッグクロー",						1 },
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Goblin Bouncer"			] = { "ゴブリンバウンサー",					3 },
		[ "Goblin Enchanter"		] = { "ゴブリンエンチャンター",				3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Goobbue Gardener"		] = { "グゥーブーガーデナー",				3 },
		[ "Hell Hound"				] = { "ヘルハウンド",						1 },
		[ "Lesser Gaylas"			] = { "レッサーゲイラス",					3 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Master Coeurl"			] = { "マスタークァール",					1 },
		[ "Myxomycete"				] = { "ミクソマイケイト",					2 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "Rock Golem"				] = { "ロックゴーレム",						1 },
		[ "Rot Prowler"				] = { "ロットプロウラー",					1 },

	},

	-- ボヤーダ樹
	[ 153 ] = {
		[ "Bark Spider"				] = { "バークスパイダー",					2 },
		[ "Bark Tarantula"			] = { "バークタランチュラ",					3 },
		[ "Boyahda Sapling"			] = { "ボヤーダサプリング",					2 },
		[ "Death Cap"				] = { "デスキャップ",						2 },
		[ "Elder Goobbue"			] = { "エルダーグゥーブー",					3 },
		[ "Knight Crawler"			] = { "ナイトクロウラー",					3 },
		[ "Moss Eater"				] = { "モスイーター",						2 },
		[ "Old Goobbue"				] = { "オールドグゥーブー",					3 },
		[ "Processionaire"			] = { "プロセッショネル",					3 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },
		[ "Scavenger Crab"			] = { "スカベンジャークラブ",				1 },
		[ "Steelshell"				] = { "スチールシェル",						1 },

	},

	-- ダンジョン

	-- ロ・メーヴ
	[ 122 ] = {
		[ "Apocalyptic Weapon"		] = { "アポカリプティックウェポン",			3 },
		[ "Darksteel Golem"			] = { "ダークスチールゴーレム",				1 },
		[ "Infernal Weapon"			] = { "インファーナルウェポン",				3 },
		[ "Killing Weapon"			] = { "キリングウェポン",					3 },
		[ "Mythril Golem"			] = { "ミスリルゴーレム",					1 },
		[ "Ominous Weapon"			] = { "オミナスウェポン",					3 },

	},

	-- 龍のねぐら
	[ 154 ] = {
		[ "Bark Tarantula"			] = { "バークタランチュラ",					3 },
	},

	-----------------------------------------------------------
	-- トゥーリア

	-- ジラートの幻影

	-- フィールド

	-- ル・オンの庭
	[ 130 ] = {
		[ "Flamingo"				] = { "フラミンゴ",							0 },
	},

	-- ダンジョン

	-- ヴェ・ルガノン宮殿
	[ 177 ] = {
		[ "Detector"				] = { "ディテクター",						1 },
		[ "Enkidu"					] = { "エンキドゥ",							1 },
		[ "Mystic Weapon"			] = { "ミスティックウェポン",				1 },
		[ "Ornamental Weapon"		] = { "オルナメンタルウェポン",				1 },

	},

	-- ル・アビタウ神殿
	[ 178 ] = {
		[ "Aura Statue"				] = { "オーラスタテュー",					1 },
		[ "Aura Weapon"				] = { "オーラウェポン",						1 },
		[ "Decorative Weapon"		] = { "デコラティブウェポン",				1 },
		[ "Defender"				] = { "ディフェンダー",						1 },

	},

	-----------------------------------------------------------
	-- タブナジア群島

	-- プロマシアの呪縛

	-- フィールド

	-- ルフェーゼ野
	[  24 ] = {
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Crimson Knight Crab"		] = { "クリムゾンナイトクラブ",				0 },
		[ "Fomor Bard"				] = { "フォモルバード",						1 },
		[ "Fomor Beastmaster"		] = { "フォモルビーストマスター",			1 },
		[ "Fomor Black Mage"		] = { "フォモルブラックメイジ",				1 },
		[ "Fomor Dark Knight"		] = { "フォモルダークナイト",				1 },
		[ "Fomor Dragoon"			] = { "フォモルドラグーン",					1 },
		[ "Fomor Monk"				] = { "フォモルモンク",						1 },
		[ "Fomor Ninja"				] = { "フォモルニンジャ",					1 },
		[ "Fomor Paladin"			] = { "フォモルパラディン",					1 },
		[ "Fomor Ranger"			] = { "フォモルレンジャー",					1 },
		[ "Fomor Red Mage"			] = { "フォモルレッドメイジ",				1 },
		[ "Fomor Samurai"			] = { "フォモルサムライ",					1 },
		[ "Fomor Summoner"			] = { "フォモルサマナー",					1 },
		[ "Fomor Thief"				] = { "フォモルシーフ",						1 },
		[ "Fomor Warrior"			] = { "フォモルウォリアー",					1 },
		[ "Fomor's Bat"				] = { "フォモルズバット",					0 },
		[ "Fomor's Elemental"		] = { "フォモルズエレメンタル",				0 },
		[ "Gigas Braver"			] = { "ギガースブレイバー",					3 },
		[ "Gigas Catapulter"		] = { "ギガースカタパルター",				3 },
		[ "Gigas Fighter"			] = { "ギガースファイター",					3 },
		[ "Gigas Martialist"		] = { "ギガースマーシャリスト",				3 },
		[ "Gigas Slinger"			] = { "ギガーススリンガー",					3 },
		[ "Gigas Warwolf"			] = { "ギガースウォーウルフ",				3 },
		[ "Gigas Wrestler"			] = { "ギガースレスラー",					3 },
		[ "Gigas's Sheep"			] = { "ギガースズシープ",					0 },
		[ "Leshachikha"				] = { "レシャチーハ",						2 },
		[ "Leshy"					] = { "レーシィ",							0 },
		[ "Orcish Beastrider"		] = { "オーキシュビーストライダー",			3 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Brawler"			] = { "オーキシュブロウラー",				3 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Impaler"			] = { "オーキシュインペイラー",				3 },
		[ "Orcish Nightraider"		] = { "オーキシュナイトレイダー",			3 },
		[ "Orcish Stonelauncher"	] = { "オーキシュストーンランチャー",		3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Tavnazian Ram"			] = { "タブナジアンラム",					3 },
		[ "Tavnazian Sheep"			] = { "タブナジアンシープ",					2 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					2 },
		[ "Wingrats"				] = { "ウィングラッツ",						2 },

	},

	-- ミザレオ海岸
	[  25 ] = {
		[ "Bigclaw"					] = { "ビッグクロー",						0 },
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Crimson Knight Crab"		] = { "クリムゾンナイトクラブ",				0 },
		[ "Fomor Bard"				] = { "フォモルバード",						1 },
		[ "Fomor Black Mage"		] = { "フォモルブラックメイジ",				1 },
		[ "Fomor Dark Knight"		] = { "フォモルダークナイト",				1 },
		[ "Fomor Dragoon"			] = { "フォモルドラグーン",					1 },
		[ "Fomor Monk"				] = { "フォモルモンク",						1 },
		[ "Fomor Ninja"				] = { "フォモルニンジャ",					1 },
		[ "Fomor Paladin"			] = { "フォモルパラディン",					1 },
		[ "Fomor Ranger"			] = { "フォモルレンジャー",					1 },
		[ "Fomor Red Mage"			] = { "フォモルレッドメイジ",				1 },
		[ "Fomor Samurai"			] = { "フォモルサムライ",					1 },
		[ "Fomor Summoner"			] = { "フォモルサマナー",					1 },
		[ "Fomor Thief"				] = { "フォモルシーフ",						1 },
		[ "Fomor Warrior"			] = { "フォモルウォリアー",					1 },
		[ "Fomor's Elemental"		] = { "フォモルズエレメンタル",				0 },
		[ "Gigas Braver"			] = { "ギガースブレイバー",					3 },
		[ "Gigas Catapulter"		] = { "ギガースカタパルター",				3 },
		[ "Gigas Martialist"		] = { "ギガースマーシャリスト",				3 },
		[ "Gigas Warwolf"			] = { "ギガースウォーウルフ",				3 },
		[ "Gigas's Sheep"			] = { "ギガースズシープ",					0 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Stonelauncher"	] = { "オーキシュストーンランチャー",		3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Seaboard Vulture"		] = { "シーボードバルチャー",				0 },
		[ "Tavnazian Sheep"			] = { "タブナジアンシープ",					2 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					2 },
		[ "Wingrats"				] = { "ウィングラッツ",						2 },

	},

	-- ダンジョン

	--フォミュナ水道
	[  27 ] = {
		[ "Canal Bats"				] = { "カナルバッツ",						2 },
		[ "Diremite"				] = { "ダイアマイト",						0 },
		[ "Fomor Bard"				] = { "フォモルバード",						1 },
		[ "Fomor Beastmaster"		] = { "フォモルビーストマスター",			1 },
		[ "Fomor Black Mage"		] = { "フォモルブラックメイジ",				1 },
		[ "Fomor Dark Knight"		] = { "フォモルダークナイト",				1 },
		[ "Fomor Dragoon"			] = { "フォモルドラグーン",					1 },
		[ "Fomor Monk"				] = { "フォモルモンク",						1 },
		[ "Fomor Ninja"				] = { "フォモルニンジャ",					1 },
		[ "Fomor Paladin"			] = { "フォモルパラディン",					1 },
		[ "Fomor Ranger"			] = { "フォモルレンジャー",					1 },
		[ "Fomor Red Mage"			] = { "フォモルレッドメイジ",				1 },
		[ "Fomor Samurai"			] = { "フォモルサムライ",					1 },
		[ "Fomor Summoner"			] = { "フォモルサマナー",					1 },
		[ "Fomor Thief"				] = { "フォモルシーフ",						1 },
		[ "Fomor Warrior"			] = { "フォモルウォリアー",					1 },
		[ "Fomor's Bat"				] = { "フォモルズバット",					0 },
		[ "Fomor's Elemental"		] = { "フォモルズエレメンタル",				0 },
		[ "Gloop"					] = { "グループ",							1 },
		[ "Hell Bat"				] = { "ヘルバット",							2 },
		[ "Oil Spill"				] = { "オイルスピル",						1 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					2 },

	},

	-- 礼拝堂
	[  28 ] = {
		[ "Fomor Bard"				] = { "フォモルバード",						1 },
		[ "Fomor Beastmaster"		] = { "フォモルビーストマスター",			1 },
		[ "Fomor Black Mage"		] = { "フォモルブラックメイジ",				1 },
		[ "Fomor Dark Knight"		] = { "フォモルダークナイト",				1 },
		[ "Fomor Dragoon"			] = { "フォモルドラグーン",					1 },
		[ "Fomor Monk"				] = { "フォモルモンク",						1 },
		[ "Fomor Ninja"				] = { "フォモルニンジャ",					1 },
		[ "Fomor Paladin"			] = { "フォモルパラディン",					1 },
		[ "Fomor Ranger"			] = { "フォモルレンジャー",					1 },
		[ "Fomor Red Mage"			] = { "フォモルレッドメイジ",				1 },
		[ "Fomor Samurai"			] = { "フォモルサムライ",					1 },
		[ "Fomor Summoner"			] = { "フォモルサマナー",					1 },
		[ "Fomor Thief"				] = { "フォモルシーフ",						1 },
		[ "Fomor Warrior"			] = { "フォモルウォリアー",					1 },
		[ "Fomor's Bats"			] = { "フォモルズバッツ",					0 },
		[ "Fomor's Elemental"		] = { "フォモルズエレメンタル",				0 },
		[ "Greater Gaylas"			] = { "グレーターゲイラス",					2 },
		[ "Lich"					] = { "リッチ",								1 },
		[ "Mummy"					] = { "マミー",								1 },
		[ "Utukku"					] = { "ウトゥック",							1 },

	},

	-- リヴェーヌ岩塊群サイトA01
	[  30 ] = {
		[ "Riverne Vulture"			] = { "リヴェーヌバルチャー",				0 },

	},

	-----------------------------------------------------------
	-- ムバルポロス

	-- プロマシアの呪縛

	-- フィールド

	-- ダンジョン

	-- ムバルポロス旧市街
	[  11 ] = {
		[ "Bugbear Bondman"			] = { "バグベアボンドマン",					3 },
		[ "Bugbear Servingman"		] = { "バグベアサービングマン",				3 },
		[ "Cutter"					] = { "カッター",							1 },
		[ "Dark Bats"				] = { "ダークバッツ",						2 },
		[ "Goblin Craftsman"		] = { "ゴブリンクラフツマン",				3 },
		[ "Goblin Doorman"			] = { "ゴブリンドアマン",					3 },
		[ "Goblin Freelance"		] = { "ゴブリンフリーランス",				3 },
		[ "Goblin Gutterman"		] = { "ゴブリンガターマン",					3 },
		[ "Goblin Hammerman"		] = { "ゴブリンハンマーマン",				3 },
		[ "Goblin Leadman"			] = { "ゴブリンリードマン",					3 },
		[ "Goblin Oilman"			] = { "ゴブリンオイルマン",					3 },
		[ "Goblin Shovelman"		] = { "ゴブリンショベルマン",				3 },
		[ "Goblin Tollman"			] = { "ゴブリントールマン",					3 },
		[ "Goblin's Bat"			] = { "ゴブリンズバット",					0 },
		[ "Moblin Ashman"			] = { "モブリンアッシュマン",				3 },
		[ "Moblin Chapman"			] = { "モブリンチャップマン",				3 },
		[ "Moblin Coalman"			] = { "モブリンコールマン",					3 },
		[ "Moblin Gasman"			] = { "モブリンガスマン",					3 },
		[ "Moblin Gurneyman"		] = { "モブリンガーニーマン",				3 },
		[ "Moblin Pickman"			] = { "モブリンピックマン",					3 },
		[ "Moblin Pikeman"			] = { "モブリンパイクマン",					3 },
		[ "Moblin Ragman"			] = { "モブリンラグマン",					3 },
		[ "Moblin Repairman"		] = { "モブリンリペアマン",					3 },
		[ "Moblin Rodman"			] = { "モブリンロッドマン",					3 },
		[ "Moblin Witchman"			] = { "モブリンウィッチマン",				3 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Stirge"					] = { "スティージ",							2 },

	},

	-- ムバルポロス新市街
	[  12 ] = {
		[ "Bugbear Deathsman"		] = { "バグベアデスマン",					3 },
		[ "Bugbear Trashman"		] = { "バグベアトラッシュマン",				3 },
		[ "Bugbear Watchman"		] = { "バグベアウォッチマン",				3 },
		[ "Dire Bat"				] = { "ダイアーバット",						2 },
		[ "Goblin Fireman"			] = { "ゴブリンファイアマン",				3 },
		[ "Goblin Foreman"			] = { "ゴブリンフォアマン",					3 },
		[ "Goblin Hangman"			] = { "ゴブリンハングマン",					3 },
		[ "Goblin Headman"			] = { "ゴブリンヘッドマン",					3 },
		[ "Goblin Junkman"			] = { "ゴブリンジャンクマン",				3 },
		[ "Goblin Lengthman"		] = { "ゴブリンレンクスマン",				3 },
		[ "Goblin Marksman"			] = { "ゴブリンマークスマン",				3 },
		[ "Goblin Packman"			] = { "ゴブリンパックマン",					3 },
		[ "Goblin Swordsman"		] = { "ゴブリンソーヅマン",					3 },
		[ "Goblin's Bat"			] = { "ゴブリンズバット",					0 },
		[ "Moblin Aidman"			] = { "モブリンエイドマン",					3 },
		[ "Moblin Draftsman"		] = { "モブリンドラフツマン",				3 },
		[ "Moblin Engineman"		] = { "モブリンエンジンマン",				3 },
		[ "Moblin Groundman"		] = { "モブリングラウンドマン",				3 },
		[ "Moblin Scalpelman"		] = { "モブリンスカルポルマン",				3 },
		[ "Moblin Roadman"			] = { "モブリンロードマン",					3 },
		[ "Moblin Tankman"			] = { "モブリンタンクマン",					3 },
		[ "Moblin Topsman"			] = { "モブリントップスマン",				3 },
		[ "Moblin Workman"			] = { "モブリンワークマン",					3 },
		[ "Moblin Yardman"			] = { "モブリンヤードマン",					3 },
		[ "Nightmare Bats"			] = { "ナイトメアバッツ",					2 },
		[ "Purgatory Bat"			] = { "パーガトリーバット",					2 },
		[ "Succubus Bats"			] = { "サキュバスバッツ",					2 },

	},

	-----------------------------------------------------------
	-- プロミヴォン

	-- プロマシアの呪縛

	-- ダンジョン

	-- プロミヴォン－ホラ
	[  16 ] = {
		[ "Livid Seether"			] = { "リヴィドシーザー",					1 },
		[ "Seether"					] = { "シーザー",							1 },
		[ "Thinker"					] = { "シンカー",							1 },
		[ "Weeper"					] = { "ウィーパー",							1 },
	},

	-- プロミヴォン－デム
	[  18 ] = {
		[ "Gorger"					] = { "ゴージャー",							1 },
		[ "Livid Seether"			] = { "リヴィドシーザー",					1 },
		[ "Seether"					] = { "シーザー",							1 },
		[ "Weeper"					] = { "ウィーパー",							1 },
	},

	-- プロミヴォン－メア
	[  20 ] = {
		[ "Craver"					] = { "クレイバー",							1 },
		[ "Livid Seether"			] = { "リヴィドシーザー",					1 },
		[ "Seether"					] = { "シーザー",							1 },
		[ "Weeper"					] = { "ウィーパー",							1 },
	},

	-- プロミヴォン－ヴァズ
	[  22 ] = {
		[ "Craver"					] = { "クレイバー",							1 },
		[ "Gorger"					] = { "ゴージャー",							1 },
		[ "Livid Seether"			] = { "リヴィドシーザー",					1 },
		[ "Seether"					] = { "シーザー",							1 },
		[ "Thinker"					] = { "シンカー",							1 },
		[ "Weeper"					] = { "ウィーパー",							1 },
	},

	-----------------------------------------------------------
	-- ルモリア

	-- プロマシアの呪縛

	-- フィールド

	-- アル・タユ
	[  33 ] = {
		[ "Aern's Elemental"		] = { "アーンズエレマンタル",				0 },
		[ "Aern's Xzomit"			] = { "アーンズゾミト",						0 },
		[ "Om'aern"					] = { "Om'アーン",							2 },
		[ "Om'xzomit"				] = { "Om'ゾミト",							0 },
		[ "Ul'aern"					] = { "Ul'アーン",							2 },
		[ "Ul'xzomit"				] = { "Ul'ゾミト",							2 },

	},

	-- ダンジョン

	-- ル・メトの園
	[  35 ] = {
		[ "Aern's Elemental"		] = { "アーンズエレマンタル",				0 },
		[ "Aw'aern"					] = { "Aw'アーン",							2 },
		[ "Aw'ghrah"				] = { "Aw'ゴラホ",							1 },
		[ "Aw'zdei"					] = { "Aw'ゼデー",							1 },

	},

	-- フ・ゾイの王宮
	[  34 ] = {
		[ "Aern's Elemental"		] = { "アーンズエレマンタル",				0 },
		[ "Eo'aern"					] = { "Eo'アーン",							2 },
		[ "Eo'ghrah"				] = { "Eo'ゴラホ",							1 },
		[ "Eo'zdei"					] = { "Eo'ゼデー",							1 },

	},

	-----------------------------------------------------------
	-- 西アトルガン地方

	-- アトルガンの秘宝

	-- フィールド

	-- バフラウ段丘
	[  52 ] = {
		[ "Fomor Bard"				] = { "フォモルバード",						1 },
		[ "Fomor Beastmaster"		] = { "フォモルビーストマスター",			1 },
		[ "Fomor Paladin"			] = { "フォモルパラディン",					1 },
		[ "Fomor Thief"				] = { "フォモルシーフ",						1 },
		[ "Fomor's Bats"			] = { "フォモルズバッツ",					0 },
		[ "Gespenst"				] = { "ゲシュペンスト",						1 },
		[ "Haunt"					] = { "ホーント",							1 },
		[ "Incubus Bats"			] = { "インキュバスバッツ",					2 },

	},

	-----------------------------------------------------------
	-- マムージャ藩国

	-- アトルガンの秘宝

	-- フィールド

	-- ワジャーム樹林
	[  51 ] = {
		[ "Fomor Bard"				] = { "フォモルバード",						1 },
		[ "Fomor Beastmaster"		] = { "フォモルビーストマスター",			1 },
		[ "Fomor Paladin"			] = { "フォモルパラディン",					1 },
		[ "Fomor Thief"				] = { "フォモルシーフ",						1 },
		[ "Fomor's Bats"			] = { "フォモルズバッツ",					0 },
		[ "Haunt"					] = { "ホーント",							1 },

	},

	-----------------------------------------------------------
	-- アラパゴ諸島

	-- アトルガンの秘宝

	-- フィールド

	-- カダーバの浮沼
	[  79 ] = {
		[ "Oil Slick"				] = { "オイルスリック",						1 },

	},

	-- ダンジョン

	-- アラパゴ暗礁域
	[  54 ] = {
		[ "Phasma"					] = { "ファスマ",							1 },
		[ "Purgatory Bat"			] = { "パーガトリーバット",					2 },

	},

	-----------------------------------------------------------
	-- ハルブーン傭兵団領

	-- アトルガンの秘宝

	-- フィールド

	-- ゼオルム火山
	[  61 ] = {
		[ "Phasma"					] = { "ファスマ",							1 },

	},

	-- ダンジョン

	-- ハルブーン
	[  62 ] = {
		[ "Antares"					] = { "アンタレス",							1 },
		[ "Purgatory Bat"			] = { "パーガトリーバット",					3 },

	},

	-----------------------------------------------------------
	-- 航路

	-- オリジナル

	-- フィールド

	-- 機船航路：セルビナ行き
	[ 220 ] = {
		[ "Phantom"					] = { "ファントム",							1 },
		[ "Sea Crab"				] = { "シークラブ",							0 },

	},

	-- 機船航路：マウラ行き
	[ 221 ] = {
		[ "Phantom"					] = { "ファントム",							1 },
		[ "Sea Crab"				] = { "シークラブ",							0 },

	},

	-- 機船航路：セルビナ行き(海賊)
	[ 227 ] = {
		[ "Crossbones"				] = { "クロスボーンズ",						1 },
		[ "Phantom"					] = { "ファントム",							1 },
		[ "Sea Crab"				] = { "シークラブ",							0 },
		[ "Ship Wight"				] = { "シップワイト",						1 },

	},

	-- 機船航路：マウラ行き(海賊)
	[ 228 ] = {
		[ "Crossbones"				] = { "クロスボーンズ",						1 },
		[ "Phantom"					] = { "ファントム",							1 },
		[ "Sea Crab"				] = { "シークラブ",							0 },
		[ "Ship Wight"				] = { "シップワイト",						1 },

	},

	-- アトルガンの秘宝

	-- フィールド

	-- 外洋航路：マウラ行き
	[  47 ] = {
		[ "Revenant"				] = { "レブナント",							1 },

	},

	-- 銀海航路：ナシュモ行き
	[  58 ] = {
		[ "Bigclaw"					] = { "ビッグクロー",						0 },
		[ "Utukku"					] = { "ウトゥック",							1 },

	},

	-- 銀海航路：アルザビ行き
	[  59 ] = {
		[ "Bigclaw"					] = { "ビッグクロー",						0 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "Utukku"					] = { "ウトゥック",							1 },

	},

	-----------------------------------------------------------
	-- アビセア

	-- 禁断の地アビセア

	-- フィールド

	-- アビセア－タロンギ
	[  45 ] = {
		[ "Canyon Eft"				] = { "キャニオンエフト",					0 },
	},

	-----------------------------------------------------------
	-- 共通
	[ 999 ] = {
		[ "Air Elemental"			] = { "エアエレメンタル",					4 },
		[ "Dark Elemental"			] = { "ダークエレメンタル",					4 },
		[ "Earth Elemental"			] = { "アースエレメンタル",					4 },
		[ "Fire Elemental"			] = { "ファイアエレメンタル",				4 },
		[ "Ice Elemental"			] = { "アイスエレメンタル",					4 },
		[ "Light Elemental"			] = { "ライトエレメンタル",					4 },
		[ "Thunder Elemental"		] = { "サンダーエレメンタル",				4 },
		[ "Water Elemental"			] = { "ウォーターエレメンタル",				4 },
		
	},

	-----------------------------------------------------------
	-- ノーマルモンスター

	-- ダイアマイト族
--	[ "Diremite"				] = { 0 },	-- Fix
	[ "Diremite Assaulter"		] = { 1 },	-- Fix
	[ "Diremite Dominator"		] = { 1 },	-- Fix
	[ "Diremite Stalker"		] = { 0 },	-- Fix

	-- タウルス族
	[ "Brontotaur"				] = { 3 },	-- Fix
	[ "Molech"					] = { 3 },	-- Fix
	[ "Stegotaur"				] = { 3 },	-- Fix
	[ "Taurus"					] = { 3 },	-- Fix
	[ "Teratotaur"				] = { 3 },	-- Fix
	[ "Tyrannotaur"				] = { 3 },	-- Fix

	-- ダルメル族
	[ "Bull Dhalmel"			] = { 2 },	-- Fix
	[ "Catoblepas"				] = { 2 },	-- Fix
	[ "Desert Dhalmel"			] = { 2 },	-- Fix
	[ "Marine Dhalmel"			] = { 2 },	-- Fix
	[ "Wild Dhalmel"			] = { 2 },	-- Fix

	-- チゴー族

	-- デーモン族
	[ "Abyssal Demon"			] = { 3 },	-- Fix
	[ "Arch Demon"				] = { 3 },	-- Fix
	[ "Blood Demon"				] = { 3 },	-- Fix
	[ "Demon Chancellor"		] = { 3 },	-- Fix
	[ "Demon Commander"			] = { 3 },	-- Fix
	[ "Demon General"			] = { 3 },	-- Fix
	[ "Demon Knight"			] = { 3 },	-- Fix
	[ "Demon Magistrate"		] = { 3 },	-- Fix
	[ "Demon Pawn"				] = { 3 },	-- Fix
	[ "Demon Warlock"			] = { 3 },	-- Fix
	[ "Demon Wizard"			] = { 3 },	-- Fix
	[ "Doom Demon"				] = { 3 },	-- Fix
	[ "Dread Demon"				] = { 3 },	-- Fix
	[ "Gore Demon"				] = { 3 },	-- Fix
	[ "Judicator Demon"			] = { 3 },	-- Fix
	[ "Kindred Black Mage"		] = { 3 },	-- Fix
	[ "Kindred Dark Knight"		] = { 3 },	-- Fix
	[ "Kindred Summoner"		] = { 3 },	-- Fix
	[ "Kindred Warrior"			] = { 3 },	-- Fix
	[ "Stygian Demon"			] = { 3 },	-- Fix

	-- ドゥーム族
	[ "Addled Tumor"			] = { 1 },	-- Fix
	[ "Doom Toad"				] = { 1 },	-- Fix
	[ "Fetid Flesh"				] = { 1 },	-- Fix
	[ "Foul Meat"				] = { 1 },	-- Fix
	[ "Rotten Sod"				] = { 1 },	-- Fix
	[ "Tainted Flesh"			] = { 1 },	-- Fix

	-- 頭足族
	[ "Colossal Calamari"		] = { 1 },	-- Fix
	[ "Devil Manta"				] = { 1 },	-- Fix
	[ "Flying Manta"			] = { 1 },	-- Fix
	[ "Kraken"					] = { 1 },	-- Fix
	[ "Sea Bonze"				] = { 1 },	-- Fix
	[ "Sea Monk"				] = { 1 },	-- Fix

	-- ドール族
	[ "Aura Gear"				] = { 1 },	-- Fix
	[ "Aura Butler"				] = { 4 },	-- Fix
	[ "Caretaker"				] = { 1 },	-- Fix
	[ "Chaos Idol"				] = { 4 },	-- Fix
	[ "Cursed Puppet"			] = { 4 },	-- Fix
	[ "Demonic Doll"			] = { 4 },	-- Fix
	[ "Drone"					] = { 4 },	-- Fix
	[ "Gargoyle"				] = { 4 },	-- Fix
	[ "Groundskeeper"			] = { 4 },	-- Fix
	[ "Iron Maiden"				] = { 4 },	-- Fix
	[ "Jagd Doll"				] = { 4 },	-- Fix
	[ "Living Statue"			] = { 4 },	-- Fix
	[ "Panzer Doll"				] = { 4 },	-- Fix
	[ "Talos"					] = { 4 },	-- Fix

	-- トカゲ族
	[ "Ash Lizard"				] = { 2 },	-- Fix
	[ "Bane Lizard"				] = { 2 },	-- Fix
	[ "Chasm Lizard"			] = { 2 },	-- Fix
	[ "Frost Lizard"			] = { 2 },	-- Fix
	[ "Geezard"					] = { 3 },	-- Fix
	[ "Hill Lizard"				] = { 2 },	-- Fix
	[ "Ivory Lizard"			] = { 2 },	-- Fix
	[ "Labyrinth Lizard"		] = { { [   0 ] = 2, [ 197 ] = 3, [ 171 ] = 3 } },	-- Fix
	[ "Maze Lizard"				] = { 2 },	-- Fix
	[ "Mist Lizard"				] = { 2 },	-- Fix
	[ "Riding Lizard"			] = { 2 },	-- Fix
	[ "Rock Lizard"				] = { 2 },	-- Fix
	[ "Sand Lizard"				] = { 2 },	-- Fix
	[ "Sentry Lizard"			] = { 2 },	-- Fix
	[ "Snow Lizard"				] = { 2 },	-- Fix
	[ "Tormentor"				] = { 2 },	-- Fix
	[ "War Lizard"				] = { 2 },	-- Fix
	[ "Watch Lizard"			] = { 2 },	-- Fix
	[ "White Lizard"			] = { 2 },	-- Fix

	-- ドラゴン族
	[ "Shadow Dragon"			] = { 1 },	-- Fix

	-- ダハク・ドラゴン族

	-- トロール族

	-- トンベリ族
	[ "Cyptonberry Cutter"		] = { 3 },	-- Fix
	[ "Cyptonberry Harrier"		] = { 3 },	-- Fix
	[ "Cyptonberry Plaguer"		] = { 3 },	-- Fix
	[ "Cyptonberry Stalker"		] = { 3 },	-- Fix
	[ "Tonberry Beleaguerer"	] = { 3 },	-- Fix
	[ "Tonberry Chopper"		] = { 3 },	-- Fix
	[ "Tonberry Creeper"		] = { 3 },	-- Fix
	[ "Tonberry Cutter"			] = { 3 },	-- Fix
	[ "Tonberry Dismayer"		] = { 3 },	-- Fix
	[ "Tonberry Harasser"		] = { 3 },	-- Fix
	[ "Tonberry Harrier"		] = { 3 },	-- Fix
	[ "Tonberry Hexer"			] = { 3 },	-- Fix
	[ "Tonberry Imprecator"		] = { 3 },	-- Fix
	[ "Tonberry Jinxer"			] = { 3 },	-- Fix
	[ "Tonberry Maledictor"		] = { 3 },	-- Fix
	[ "Tonberry Pursuer"		] = { 3 },	-- Fix
	[ "Tonberry Shadower"		] = { 3 },	-- Fix
	[ "Tonberry Slasher"		] = { 3 },	-- Fix
	[ "Tonberry Stabber"		] = { 3 },	-- Fix
	[ "Tonberry Stalker"		] = { 3 },	-- Fix
	[ "Tonberry Trailer"		] = { 3 },	-- Fix

	-- ハイドラ族

	-- 蜂族
	[ "Bumblebee"				] = { 0 },	-- Fix
	[ "Davoi Hornet"			] = { 2 },	-- Fix
	[ "Davoi Wasp"				] = { 3 },	-- Fix
	[ "Death Jacket"			] = { 2 },	-- Fix
	[ "Death Wasp"				] = { 2 },	-- Fix
	[ "Digger Wasp"				] = { { [   0 ] = 3, [   2 ] = 2 } },	-- Fix
	[ "Giant Bee"				] = { 0 },	-- Fix
	[ "Giddeus Bee"				] = { 2 },	-- Fix
	[ "Goblin's Bee"			] = { 0 },	-- Fix
	[ "Huge Hornet"				] = { 0 },	-- Fix
	[ "Huge Wasp"				] = { 0 },	-- Fix
	[ "Killer Bee"				] = { 0 },	-- Fix
	[ "Maneating Hornet"		] = { 0 },	-- Fix
	[ "Miner Bee"				] = { 2 },	-- Fix
	[ "Soul Stinger"			] = { 3 },	-- Fix
	[ "Spider Wasp"				] = { 2 },	-- Fix
	[ "Temple Bee"				] = { 3 },	-- Fix
	[ "Volcano Wasp"			] = { 2 },	-- Fix
	[ "Water Wasp"				] = { 2 },	-- Fix
	[ "Wespe"					] = { 3 },	-- Fix
	[ "Yhoator Wasp"			] = { 2 },	-- Fix

	-- バッファロー族
	[ "Buffalo"					] = { 1 },	-- Fix
	[ "Giant Buffalo"			] = { 1 },	-- Fix
	[ "King Buffalo"			] = { 1 },	-- Fix

	-- ヒッポグリフ族
	[ "Cloud Hippogryph"		] = { 1 },	-- Fix
	[ "Hippogryph"				] = { 1 },	-- Fix
	[ "Nimbus Hippogryph"		] = { 1 },	-- Fix
	[ "Strato Hippogryph"		] = { 1 },	-- Fix


	-- プーク族

	-- ブガード族
	[ "Bugard"					] = { 1 },	-- Fix
	[ "Gigantobugard"			] = { 1 },	-- Fix

	-- プギル族(釣り)
	[ "Beach Pugil"				] = { 0 },	-- Fix
	[ "Big Jaw"					] = { { [   0 ] = 1, [  27 ] = 0 } },	-- Fix
	[ "Canal Pugil"				] = { 1 },	-- Fix
	[ "Davoi Pugil"				] = { 1 },	-- Fix
	[ "Demonic Pugil"			] = { 1 },	-- Fix
	[ "Fatty Pugil"				] = { 0 },	-- Fix
	[ "Fosse Pugil"				] = { 0 },	-- Fix
	[ "Ghelsba Pugil"			] = { 1 },	-- Fix
	[ "Giant Pugil"				] = { { [   0 ] = 1, [   1 ] = 0 } },	-- Fix
	[ "Giddeus Pugil"			] = { 1 },	-- Fix
	[ "Greater Pugil"			] = { { [   0 ] = 1, [ 126 ] = 2 } },	-- Fix
	[ "Grotto Pugil"			] = { 1 },	-- Fix
	[ "Jagil"					] = { 0 },	-- Fix
	[ "Land Pugil"				] = { { [   0 ] = 1, [ 104 ] = 0, [   2 ] = 0, [ 109 ] = 0, [  82 ] = 2 } },	-- Fix
	[ "Makara"					] = { { [   0 ] = 1, [  27 ] = 2 } },	-- Fix
--	[ "Pugil"					] = { { [   0 ] = 0, [ 140 ] = 1, [ 145 ] = 1 } },	-- Fix
	[ "Pug Pugil"				] = { { [   0 ] = 1, [ 116 ] = 0 } },	-- Fix
	[ "Razorjaw Pugil"			] = { 1 },	-- Fix
	[ "Sand Pugil"				] = { 1 },	-- Fix
	[ "Sea Pugil"				] = { 0 },	-- Fix
	[ "Shoal Pugil"				] = { 0 },	-- Fix
	[ "Spinous Pugil"			] = { 0 },	-- Fix
	[ "Stygian Pugil"			] = { { [   0 ] = 1, [  83 ] = 2 } },	-- Fix
	[ "Terror Pugil"			] = { 1 },	-- Fix

	-- フライ族
	[ "Crane Fly"				] = { 2 },	-- Fix
	[ "Damselfly"				] = { 2 },	-- Fix
	[ "Darter"					] = { 2 },	-- Fix
	[ "Dragonfly"				] = { { [   0 ] = 2, [ 197 ] = 3 } },	-- Fix
	[ "Gadfly"					] = { 2 },	-- Fix
	[ "Gallinipper"				] = { { [   0 ] = 3, [   7 ] = 2 } },	-- Fix
	[ "Goblin's Dragonfly"		] = { 0 },	-- Fix
	[ "Goblin's Gallinipper"	] = { 0 },	-- Fix
	[ "Goblin's Ogrefly"		] = { 0 },	-- Fix
	[ "Hawker"					] = { 2 },	-- Fix
	[ "Hornfly"					] = { 2 },	-- Fix
	[ "Madfly"					] = { 0 },	-- Fix
	[ "May Fly"					] = { 2 },	-- Fix
	[ "Monarch Ogrefly"			] = { 2 },	-- Fix
	[ "Ogrefly"					] = { 2 },	-- Fix
	[ "Sadfly"					] = { 2 },	-- Fix
	[ "Skimmer"					] = { 2 },	-- Fix

	-- フライトラップ族
	[ "Battrap"					] = { 0 },	-- Fix
	[ "Birdtrap"				] = { 0 },	-- Fix
	[ "Flytrap"					] = { 0 },	-- Fix
	[ "Hawkertrap"				] = { 0 },	-- Fix
	[ "Mantrap"					] = { 0 },	-- Fix

	-- フラン族

	-- フワボ族
	[ "Ul'phuabo"				] = { 1 },	-- Fix
	[ "Om'phuabo"				] = { 1 },	-- Fix

	-- ヘクトアイズ族
	[ "Blubber Eyes"			] = { { [   0 ] = 1, [   9 ] = 0 } },	-- Fix
	[ "Dodomeki"				] = { 1 },	-- Fix
	[ "Gazer"					] = { 1 },	-- Fix
	[ "Hecteyes"				] = { 1 },	-- Fix
	[ "Million Eyes"			] = { 1 },	-- Fix
	[ "Mindgazer"				] = { 1 },	-- Fix
	[ "Taisai"					] = { 1 },	-- Fix
	[ "Thousand Eyes"			] = { 1 },	-- Fix

	-- ベヒーモス族

	-- ペミデ族
	[ "Om'hpemde"				] = { 0 },	-- Fix
	[ "Ul'hpemde"				] = { 0 },	-- Fix

	-- ボム族
	[ "Ancient Bomb"			] = { 1 },	-- Fix
	[ "Azer"					] = { 1 },	-- Fix
	[ "Balloon"					] = { 1 },	-- Fix
	[ "Bifrons"					] = { 1 },	-- Fix
	[ "Bomb"					] = { 1 },	-- Fix
	[ "Enna-enna"				] = { 1 },	-- Fix
	[ "Explosure"				] = { 1 },	-- Fix
	[ "Feu Follet"				] = { 1 },	-- Fix
	[ "Fox Fire"				] = { 1 },	-- Fix
	[ "Glide Bomb"				] = { 1 },	-- Fix
	[ "Grenade"					] = { 1 },	-- Fix
	[ "Hellmine"				] = { 1 },	-- Fix
	[ "Ignis Fatuus"			] = { 1 },	-- Fix
	[ "Lava Bomb"				] = { 1 },	-- Fix
	[ "Napalm"					] = { 1 },	-- Fix
	[ "Puroboros"				] = { 1 },	-- Fix
	[ "Shrapnel"				] = { 1 },	-- Fix
	[ "Spunkie"					] = { 1 },	-- Fix
	[ "Teine Sith"				] = { 1 },	-- Fix
	[ "Volcanic Bomb"			] = { 1 },	-- Fix
	[ "Volcanic Gas"			] = { 1 },	-- Fix
	[ "Will-o'-the-Wisp"		] = { 1 },	-- Fix

	-- ボム族(クラスター)
	[ "Atomic Cluster"			] = { 1 },	-- Fix
	[ "Cluster"					] = { 1 },	-- Fix
	[ "Nitro Cluster"			] = { 1 },	-- Fix

	-- ポロッゴ族

	-- マーリド族

	-- マジックポット族
	[ "Aura Pot"				] = { 4 },	-- Fix
	[ "Clockwork Pod"			] = { 4 },	-- Fix
	[ "Demonic Millstone"		] = { 4 },	-- Fix
	[ "Droma"					] = { 4 },	-- Fix
	[ "Dustbuster"				] = { 4 },	-- Fix
	[ "Hover Tank"				] = { 4 },	-- Fix
	[ "Magic Flagon"			] = { 4 },	-- Fix
	[ "Magic Jar"				] = { 4 },	-- Fix
	[ "Magic Jug"				] = { 4 },	-- Fix
	[ "Magic Pot"				] = { 4 },	-- Fix
	[ "Magic Urn"				] = { 4 },	-- Fix
	[ "Magic Millstone"			] = { 4 },	-- Fix
	[ "Maledict Millstone"		] = { 4 },	-- Fix
	[ "Sprinkler"				] = { 4 },	-- Fix

	-- マムージャ族

	-- マメット族

	-- マンティコア族
	[ "Desert Manticore"		] = { 1 },	-- Fix
	[ "Greater Manticore"		] = { 1 },	-- Fix
	[ "Labyrinth Manticore"		] = { 1 },	-- Fix
	[ "Lesser Manticore"		] = { 1 },	-- Fix
	[ "Valley Manticore"		] = { 3 },	-- Fix

	-- マンドラゴラ族
	[ "Alraune"					] = { 2 },	-- Fix
	[ "Korrigan"				] = { 3 },	-- Fix
	[ "Mandragora"				] = { 0 },	-- Fix
	[ "Mourioche"				] = { 2 },	-- Fix
	[ "Puck"					] = { 3 },	-- Fix
	[ "Pygmaioi"				] = { 0 },	-- Fix
	[ "Sylvestre"				] = { 0 },	-- Fix
	[ "Tiny Mandragora"			] = { 0 },	-- Fix
	[ "Yhoator Mandragora"		] = { 0 },	-- Fix
	[ "Yuhtunga Mandragora"		] = { 0 },	-- Fix

	-- ミミック族
	[ "Archaic Chest"			] = { 1 },	-- Fix
	[ "Treasure Chest"			] = { 1 },	-- Fix

	-- メロー族

	-- モルボル族
	[ "Anemone"					] = { 1 },	-- Fix
	[ "Demonic Rose"			] = { 1 },	-- Fix
	[ "Malboro"					] = { 1 },	-- Fix
	[ "Morbol"					] = { { [   0 ] = 1, [  15 ] = 0 } },	-- Fix
	[ "Morbol Menace"			] = { 1 },	-- Fix
	[ "Lunantishee"				] = { 1 },	-- Fix
	[ "Ochu"					] = { 1 },	-- Fix
	[ "Overgrown Rose"			] = { { [   0 ] = 1, [  25 ] = 3 } },	-- Fix
	[ "Stroper"					] = { 1 },	-- Fix

	-- アムルタート・モルボル族

	-- ヤグード族
	[ "Yagudo Acolyte"			] = { 3 },	-- Fix
	[ "Yagudo Abbot"			] = { 3 },	-- Fix
	[ "Yagudo Assassin"			] = { 3 },	-- Fix
	[ "Yagudo Chanter"			] = { 3 },	-- Fix
	[ "Yagudo Conductor"		] = { 3 },	-- Fix
	[ "Yagudo Conquistador"		] = { 3 },	-- Fix
	[ "Yagudo Drummer"			] = { 3 },	-- Fix
	[ "Yagudo Flagellant"		] = { 3 },	-- Fix
	[ "Yagudo Herald"			] = { 3 },	-- Fix
	[ "Yagudo Initiate"			] = { 3 },	-- Fix
	[ "Yagudo Inquisitor"		] = { 3 },	-- Fix
	[ "Yagudo Interrogator"		] = { 3 },	-- Fix
	[ "Yagudo Lutenist"			] = { 3 },	-- Fix
	[ "Yagudo Mendicant"		] = { 3 },	-- Fix
	[ "Yagudo Persecutor"		] = { 3 },	-- Fix
	[ "Yagudo Oracle"			] = { 3 },	-- Fix
	[ "Yagudo Piper"			] = { 3 },	-- Fix
	[ "Yagudo Prelate"			] = { 3 },	-- Fix
	[ "Yagudo Priest"			] = { 3 },	-- Fix
	[ "Yagudo Prior"			] = { 3 },	-- Fix
	[ "Yagudo Scribe"			] = { 3 },	-- Fix
	[ "Yagudo Sentinel"			] = { 3 },	-- Fix
	[ "Yagudo Theologist"		] = { 3 },	-- Fix
	[ "Yagudo Votary"			] = { 3 },	-- Fix
	[ "Yagudo Zealot"			] = { 3 },	-- Fix

	-- ユブヒ族
	[ "Aern's Euvhi"			] = { 0 },	-- Fix
	[ "Aw'euvhi"				] = { { [   0 ] = 0, [  35 ] = 3 }, { [   0 ] = '☆', [  35 ] = '' } },	-- NM としても出現するので注意 Fix
	[ "Eo'euvhi"				] = { 3 },	-- Fix

	-- ヨヴラ族
	[ "Om'yovra"				] = { 1 },	-- Fix
	[ "Ul'yovra"				] = { 1 },	-- Fix

	-- ラプトル族
	[ "Deinonychus"				] = { 1 },	-- Fix
	[ "Eotyrannus"				] = { 1 },	-- Fix
	[ "Nival Raptor"			] = { 1 },	-- Fix
	[ "Raptor"					] = { 1 },	-- Fix
	[ "Sauromugue Skink"		] = { 1 },	-- Fix
	[ "Velociraptor"			] = { 1 },	-- Fix

	-- ラミア族

	-- リーチ族(釣り)
	[ "Acrophies"				] = { 2 },	-- Fix
	[ "Bleeder Leech"			] = { 2 },	-- Fix
	[ "Blood Ball"				] = { 2 },	-- Fix
	[ "Bloodsucker"				] = { { [   0 ] = 1, [ 169 ] = 3, [ 167 ] = 3 } },	-- Fix
	[ "Bouncing Ball"			] = { { [   0 ] = 1, [ 169 ] = 3 } },	-- Fix
	[ "Forest Leech"			] = { 2 },	-- Fix
	[ "Gigas's Leech"			] = { 0 },	-- Fix
	[ "Goblin's Leech"			] = { 0 },	-- Fix
	[ "Goobbue Parasite"		] = { 2 },	-- Fix
	[ "Labyrinth Leech"			] = { 2 },	-- Fix
	[ "Leech"					] = { 2 },	-- Fix
	[ "Poison Leech"			] = { { [  0 ] = 2, [ 193 ] = 3 } },	-- Fix
	[ "Royal Leech"				] = { 2 },	-- Fix
	[ "Sahagin Parasite"		] = { 2 },	-- Fix
	[ "Stickpin"				] = { 2 },	-- Fix
	[ "Thread Leech"			] = { { [   0 ] = 1, [ 193 ] = 2, [ 109 ] = 2, [ 103 ] = 2, [ 173 ] = 2, [  90 ] = 2 } },	-- Fix
	[ "Yagudo Parasite"			] = { 3 },	-- Fix
	[ "Wadi Leech"				] = { 2 },	-- Fix

	-- ロック族
	[ "Abraxas"					] = { 3 },	-- Fix
	[ "Diatryma"				] = { { [   0 ] = 1, [  25 ] = 2 } },
	[ "Lesser Roc"				] = { 2 },	-- Fix
	[ "Peryton"					] = { 1 },	-- Fix
	[ "Phorusrhacos"			] = { 3 },	-- Fix

	-- ワーム族
	[ "Abyss Worm"				] = { 3 },	-- Fix
	[ "Amphisbaena"				] = { 3 },	-- Fix
--	[ "Carrion Worm"			] = { 0 },	-- Fix
	[ "Cave Worm"				] = { 2 },	-- Fix
	[ "Desert Worm"				] = { 1 },	-- Fix
	[ "Dirt Eater"				] = { 1 },	-- Fix
	[ "Earth Eater"				] = { 3 },	-- Fix
	[ "Flesh Eater"				] = { { [   0 ] = 2, [ 114 ] = 1 } },	-- Fix
	[ "Giant Grub"				] = { 1 },	-- Fix
	[ "Glacier Eater"			] = { 2 },	-- Fix
	[ "Kuftal Digger"			] = { 2 },	-- Fix
	[ "Land Worm"				] = { { [   0 ] = 2, [ 126 ] = 3 } },	-- Fix
	[ "Maze Maker"				] = { 2 },	-- Fix
	[ "Mountain Worm"			] = { 2 },	-- Fix
	[ "Ore Eater"				] = { 2 },	-- Fix
	[ "Rock Eater"				] = { { [   0 ] = 2, [  88 ] = 0, [  89 ] = 0, [ 190 ] = 1 } },	-- Fix
	[ "Rockmill"				] = { 0 },	-- Fix
	[ "Sand Digger"				] = { 3 },	-- Fix
	[ "Sand Eater"				] = { 2 },	-- Fix
	[ "Stone Eater"				] = { { [   0 ] = 0, [ 190 ] = 1 } },	-- Fix
	[ "Tomb Worm"				] = { 0 },	-- Fix
--	[ "Tunnel Worm"				] = { 0 },	-- Fix
	[ "Ziryu"					] = { 1 },	-- Fix

	-- ワイバーン族
	[ "Firedrake"				] = { 1 },	-- Fix
	[ "Flamedrake"				] = { 1 },	-- Fix
	[ "Hurricane Wyvern"		] = { 1 },	-- Fix
	[ "Ignidrake"				] = { 1 },	-- Fix
	[ "Ladon"					] = { 1 },	-- Fix
	[ "Pyrodrake"				] = { 1 },	-- Fix
	[ "Typhoon Wyvern"			] = { 1 },	-- Fix
	[ "Wyvern"					] = { 1 },	-- Fix

	-- ワモーラ族(成虫)

	-- ワモーラ族(幼虫)

	-- ワンダラー族
	[ "Stray"					] = { 1 },		-- Fix
	[ "Wanderer"				] = { 1 },		-- Fix

	-----------------------------------------------------------
	-- その他

	-- 子竜
	[ "Aern's Wynav"			] = { 0 },		-- Fix
	[ "Fomor's Wyvern"			] = { 0 },		-- Fix

	-- メモリーレセプタクル
	[ "Memory Receptacle"		] = { 0 },		-- Fix

	-------------------------------------------------------------------------------------------
	-- ノートリアスモンスター


	-- アーリマン族
	[ "Shadow Eye"				] = { 1, '☆'	},	-- Lv.49

	-- アーン族

	-- アダマンタス族

	-- アプカル族

	-- アルテマ族

	-- アンティカ族

	-- アントリオン族

	-- イビルウェポン族
	[ "Juggler Hecatomb"		] = { 1, '☆'	},	-- Lv.47
	[ "Prankster Maverix"		] = { 1, '☆'	},
	
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
	[ "Mimas"					] = { 3, '☆'	},	-- Lv.36
	[ "Porphyrion"				] = { 3, '☆'	},	-- Lv.36

	-- クァール族

	-- グゥーブー族

	-- クゥダフ族
	[ "De'Vyu Headhunter"		] = { 3, '☆'	},	-- Lv.45
	[ "Go'Bhu Gascon"			] = { 3, '☆'	},	-- Lv.41

	-- クトゥルブ族

	-- クラブ族

	-- クレイヴァー族

	-- クロウラー族
	[ "Spiny Spipi"				] = { 0, '☆'	},

	-- エルカ・クロウラー族

	-- ケルベロス族

	-- 剣虎族

	-- 甲虫族

	-- コウモリ族(1匹)
	[ "Old Two-Wings"			] = { 3, '☆'	},	-- Lv.52

	-- コウモリ族(3匹)

	-- ゴージャー族

	-- コース族

	-- ゴースト族
	[ "Holey Horror"			] = { 0, '☆'	},	-- Lv.60
	[ "Sluagh"					] = { 1, '★'	},	-- Lv.78

	-- ブフート・ゴースト族

	-- ゴーレム族

	-- コカトリス族
	[ "Skewer Sam"				] = { 1, '☆'	},	-- Lv.54

	-- ジズ・コカトリス族

	-- ゴブリン族

	-- ゴブリン族(バグベア)

	-- ゴブリン族(モブリン)

	-- ゴラホ族

	-- コリブリ族

	-- サソリ族
	[ "Aqrabuamelu"				] = { 3 	, '☆'	},	-- Lv.70

	-- サハギン族

	-- サボテンダー族

	-- シーザー族

	-- 屍犬族

	-- 死鳥族

	-- シャドウ族
	[ "Doppelganger Dio"		] = { 1, '☆'	},		-- Lv.23

	-- シャドウ族(フォモル)

	-- 樹人族
	[ "Fraelissa"				] = { 1, '☆'	},

	-- 樹人族(若木)
	[ "Sappy Sycamore"			] = { 2, '☆' },			-- Lv.41

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
	[ "Frogamander"				] = { 1, '☆' },		-- Lv.72

	-- 頭足族

	-- ドール族
	[ "Autarch"					] = { 4, '★'	},	-- Lv.84

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
	[ "Qoofim"					] = { 2, '☆' },		-- lv.47

	-- フライ族

	-- フライトラップ族

	-- フラン族
	[ "Botulus Rex"				] = { 1, '★' },		-- lv.95

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
	[ "Frostmane"				] = { 1, '☆'	},	-- Lv.80

	-- マンドラゴラ族

	-- ミミック族

	-- メロー族

	-- モルボル族
	[ "Toxic Tamlyn"			] = { 1, '☆'	},	-- Lv.45

	-- アムルタート・モルボル族

	-- ヤグード族
	[ "Eyy Mon the Ironbreaker"	] = { 3, '☆'	},	-- Lv.16
	[ "Lii Jixa the Somnolist"	] = { 3, '☆'	},	-- Lv.25
	[ "Quu Xijo the Illusory"	] = { 3, '☆'	},	-- Lv.25
	[ "Yagudo High Priest"		] = { 3, '☆'	},	-- Lv.25
	[ "Zhuu Buxu the Silent"	] = { 3, '☆'	},	-- Lv.16

	-- ユブヒ族

	-- ヨヴラ族

	-- ラプトル族
	[ "Lindwurm"				] = { 1, '★'	},	-- Lv.76

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


