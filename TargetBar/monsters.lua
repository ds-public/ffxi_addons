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
		[ "Bomb"					] = { "ボム",								1 },
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
		[ "Bomb"					] = { "ボム",								1 },
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
		[ "Pug Pugil"				] = { "パグプギル",							1 },
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
		[ "Bloodsucker"				] = { "ブラッドサッカー",					3 },	-- 	釣りは 1 で同名 NM が釣れる事がある
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
		[ "Rock Eater"				] = { "ロックイーター",						1 },
		[ "Spartoi Sorcerer"		] = { "スパルトイソーサラー",				1 },
		[ "Spartoi Warrior"			] = { "スパルトイウォリアー",				1 },
		[ "Spook"					] = { "スプーク",							1 },
		[ "Stone Eater"				] = { "ストーンイーター",					1 },
		[ "Thousand Eyes"			] = { "サウザンドアイズ",					1 },
		[ "Tomb Bat"				] = { "トゥームバット",						3 },
		[ "Tomb Worm"				] = { "トゥームワーム",						0 },
		[ "Wind Bats"				] = { "ウィンドバッツ",						2 },

	},

	-- ゲルスバ野営陣
	[ 140 ] = {
		[ "Cheiroptera"				] = { "カイロプテラ",						1 },
		[ "Ghelsba Pugil"			] = { "ゲルスバプギル",						1 },
		[ "Giant Pugil"				] = { "ジャイアントプギル",					1 },
		[ "Orcish Fodder"			] = { "オーキシュフォッダー",				3 },
		[ "Orcish Grappler"			] = { "オーキシュグラップラー",				3 },
		[ "Orcish Grunt"			] = { "オーキシュグラント",					3 },
		[ "Orcish Mesmerizer"		] = { "オーキシュメズマライザー",			3 },
		[ "Orcish Neckchopper"		] = { "オーキシュネックチョッパー",			3 },
		[ "Orcish Stonechucker"		] = { "オーキシュストーンチャッカー",		3 },
		[ "Orcish Stonelauncher"	] = { "オーキシュストーンランチャー",		3 },
		[ "Pugil"					] = { "プギル",								1 },
		[ "Pug Pugil"				] = { "パグプギル",							1 },
		[ "Spectacled Bats"			] = { "スペクタクルズバッツ",				0 },
		[ "Toadstool"				] = { "トードストゥール",					2 },
		[ "Watch Lizard"			] = { "ウォッチリザード",					2 },

	},

	-- ゲルスバ砦
	[ 141 ] = {
		[ "Cheiroptera"				] = { "カイロプテラ",						1 },
		[ "Giant Pugil"				] = { "ジャイアントプギル",					1 },
		[ "Land Pugil"				] = { "ランドプギル",						1 },
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
		[ "Pug Pugil"				] = { "パグプギル",							1 },
		[ "Sentry Lizard"			] = { "セントリーリザード",					2 },
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
		[ "Riding Lizard"			] = { "ライディングリザード",				2 },
		[ "Stealth Bat"				] = { "ステルスバット",						3 },

	},

	-----------------------------------------------------------
	-- ロンフォール戦線

	-- アルタナの神兵

	-- フィールド

	-- 東ロンフォール[S]
	[  81 ] = {
		[ "Battrap"					] = { "バットトラップ",						0 },
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
		[ "Pug Pugil"				] = { "パグプギル",							1 },
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
		[ "Huge Hornet"				] = { "ヒュージホーネット",					0 },
		[ "Land Crab"				] = { "ランドクラブ",						1 },
		[ "Maneating Hornet"		] = { "マンイーティングホーネット",			0 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Ornery Sheep"			] = { "オーナリーシープ",					2 },
		[ "Pug Pugil"				] = { "パグプギル",							1 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Rock Lizard"				] = { "ロックリザード",						2 },
		[ "Sand Pugil"				] = { "サンドプギル",						1 },
		[ "Shrapnel"				] = { "シュラップネル",						1 },
		[ "Stone Eater"				] = { "ストーンイーター",					0 },
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
		[ "Huge Hornet"				] = { "ヒュージホーネット",					0 },
		[ "Land Crab"				] = { "ランドクラブ",						0 },	-- 釣りは 1
		[ "Maneating Hornet"		] = { "マンイーティングホーネット",			0 },
		[ "Ornery Sheep"			] = { "オーナリーシープ",					2 },
		[ "Rock Lizard"				] = { "ロックリザード",						2 },
		[ "Shrapnel"				] = { "シュラップネル",						1 },
		[ "Stone Eater"				] = { "ストーンイーター",					0 },
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
		[ "Leech"					] = { "リーチ",								2 },
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
		[ "Giant Grub"				] = { "ジャイアントグラブ",					1 },
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
		[ "Rock Lizard"				] = { "ロックリザード",						2 },
		[ "Snipper"					] = { "スニッパー",							2 },
		[ "Stickpin"				] = { "スティックピン",						2 },
		[ "Stone Eater"				] = { "ストーンイーター",					0 },
		[ "Thread Leech"			] = { "スレッドリーチ",						1 },
		[ "Wadi Crab"				] = { "ワジクラブ",							2 },
		[ "Wadi Hare"				] = { "ワジヘアー",							2 },
		[ "Wadi Leech"				] = { "ワジリーチ",							2 },	-- 釣りは 1

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
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Huge Spider"				] = { "ヒュージスパイダー",					2 },
		[ "Jelly"					] = { "ジェリー",							1 },
		[ "Kraken"					] = { "クラーケン",							1 },
		[ "Land Worm"				] = { "ランドワーム",						2 },
		[ "Scimitar Scorpion"		] = { "シミタースコーピオン",				1 },
		[ "Sea Monk"				] = { "シーモンク",							1 },
		[ "Seeker Bats"				] = { "シーカーバッツ",						2 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Thread Leech"			] = { "スレッドリーチ",						2 },

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
		[ "Goblin's Bee"			] = { "ゴブリンズビー",						0 },
		[ "Greater Quadav"			] = { "グレータークゥダフ",					3 },
		[ "Huge Hornet"				] = { "ヒュージホーネット",					0 },
		[ "Huge Spider"				] = { "ヒュージスパイダー",					2 },
		[ "Land Crab"				] = { "ランドクラブ",						1 },
		[ "Maneating Hornet"		] = { "マンイーティングホーネット",			0 },
		[ "Ornery Sheep"			] = { "オーナリーシープ",					2 },
		[ "Onyx Quadav"				] = { "オニキスクゥダフ",					3 },
		[ "Pug Pugil"				] = { "パグプギル",							1 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Rock Eater"				] = { "ロックイーター",						0 },
		[ "Rock Lizard"				] = { "ロックリザード",						2 },
		[ "Stone Eater"				] = { "ストーンイーター",					0 },
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
		[ "Pug Pugil"				] = { "パグプギル",							1 },
		[ "River Crab"				] = { "リバークラブ",						1 },
		[ "Rock Eater"				] = { "ロックイーター",						0 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					2 },
		[ "Veteran Quadav"			] = { "ベテランクゥダフ",					3 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				0 },
		[ "War Lizard"				] = { "ウォーリザード",						2 },
		[ "Wingrats"				] = { "ウィングラッツ",						2 },
		[ "Young Quadav"			] = { "ヤングクゥダフ",						3 },

	},

	-----------------------------------------------------------
	-- サルタバルタ

	-- フィールド

	-- 西サルタバルタ
	[ 115 ] = {
		[ "Balloon"					] = { "バルーン",							1 },
		[ "Bumblebee"				] = { "バンブルビー",						0 },
		[ "Carrion Crow"			] = { "キャリオンクロウ",					0 },
		[ "Crawler"					] = { "クロウラー",							2 },
		[ "Giant Bee"				] = { "ジャイアントビー",					0 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Land Crab"				] = { "ランドクラブ",						1 },
		[ "Mad Fox"					] = { "マッドフォックス",					1 },
		[ "Magicked Bones"			] = { "マジックドボーンズ",					1 },
		[ "Mandragora"				] = { "マンドラゴラ",						0 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Savanna Rarab"			] = { "サバンナララブ",						0 },
		[ "Tiny Mandragora"			] = { "タイニーマンドラゴラ",				0 },
		[ "Yagudo Acolyte"			] = { "ヤグードアコライト",					3 },
		[ "Yagudo Initiate"			] = { "ヤグードイニシエイト",				3 },
		[ "Yagudo Priest"			] = { "ヤグードプリースト",					3 },
		[ "Yagudo Scribe"			] = { "ヤグードスクライブ",					3 },
		[ "Yagudo Theologist"		] = { "ヤグードセオロジスト",				3 },
		[ "Yagudo Votary"			] = { "ヤグードボウタリー",					3 },

	},

	-- 東サルタバルタ
	[ 116 ] = {
		[ "Balloon"					] = { "バルーン",							1 },
		[ "Bumblebee"				] = { "バンブルビー",						0 },
		[ "Carrion Crow"			] = { "キャリオンクロウ",					0 },
		[ "Crawler"					] = { "クロウラー",							2 },
		[ "Giant Bee"				] = { "ジャイアントビー",					0 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Mad Fox"					] = { "マッドフォックス",					1 },
		[ "Magicked Bones"			] = { "マジックドボーンズ",					1 },
		[ "Mandragora"				] = { "マンドラゴラ",						0 },
		[ "Pug Pugil"				] = { "パグプギル",							0 },	-- 釣りは 1
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Savanna Rarab"			] = { "サバンナララブ",						0 },
		[ "Tiny Mandragora"			] = { "タイニーマンドラゴラ",				0 },
		[ "Yagudo Acolyte"			] = { "ヤグードアコライト",					3 },
		[ "Yagudo Initiate"			] = { "ヤグードイニシエイト",				3 },
		[ "Yagudo Scribe"			] = { "ヤグードスクライブ",					3 },

	},

	-- ダンジョン

	-- トライマライ水路
	[ 169 ] = {
		[ "Bigclaw"					] = { "ビッグクロー",						1 },
		[ "Bloodsucker"				] = { "ブラッドサッカー",					3 },	-- 	釣りは 1
		[ "Bouncing Ball"			] = { "バウンシングボール",					3 },
		[ "Canal Bats"				] = { "カナルバッツ",						3 },
		[ "Canal Pugil"				] = { "カナルプギル",						1 },
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
		[ "Makara"					] = { "マカラ",								1 },
		[ "Mindcraver"				] = { "マインドクレイヴァー",				1 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Rock Crab"				] = { "ロッククラブ",						1 },
		[ "Rotten Sod"				] = { "ロットゥンサッド",					1 },
		[ "Scavenger Crab"			] = { "スカベンジャークラブ",				1 },
		[ "Starmite"				] = { "スターマイト",						3 },
		[ "Stygian Pugil"			] = { "スティジアンプギル",					1 },

	},

	-- 内ホルトト遺跡
	[ 192 ] = {
		[ "Balloon"					] = { "バルーン",							1 },
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
		[ "Will-o'-the-Wisp"		] = { "ウィル・オ・ザ・ウィスプ",			1 },

	},

	-- 外ホルトト遺跡
	[ 194 ] = {
		[ "Balloon"					] = { "バルーン",							1 },
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

		-- NM
		[ "Legalox Heftyhind"		] = { "レガロックス・ヘフティハインド",		3, "☆" },	-- Lv. 32

	},

	-- ギデアス
	[ 145 ] = {
		[ "Digger Wasp"				] = { "ディガーワスプ",						3 },
		[ "Dirt Eater"				] = { "ダートイーター",						1 },
		[ "Earth Eater"				] = { "アースイーター",						3 },
		[ "Giant Pugil"				] = { "ジャイアントプギル",					1 },
		[ "Giddeus Bee"				] = { "ギデアスビー",						2 },
		[ "Giddeus Pugil"			] = { "ギデアスプギル",						1 },
		[ "Land Pugil"				] = { "ランドプギル",						1 },
		[ "Pugil"					] = { "プギル",								1 },
		[ "Pug Pugil"				] = { "パグプギル",							1 },
		[ "Yagudo Acolyte"			] = { "ヤグードアコライト",					3 },
		[ "Yagudo Initiate"			] = { "ヤグードイニシエイト",				3 },
		[ "Yagudo Mendicant"		] = { "ヤグードメンディカント",				3 },
		[ "Yagudo Persecutor"		] = { "ヤグードパーセキューター",			3 },
		[ "Yagudo Piper"			] = { "ヤグードパイパー",					3 },
		[ "Yagudo Priest"			] = { "ヤグードプリースト",					3 },
		[ "Yagudo Scribe"			] = { "ヤグードスクライブ",					3 },
		[ "Yagudo Theologist"		] = { "ヤグードセオロジスト",				3 },
		[ "Yagudo Votary"			] = { "ヤグードボウタリー",					3 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

		-- NM
		[ "Eyy Mon the Ironbreaker"	] = { "エー・モン・ザ・アイアンブレーカー",	3, '☆'	},	-- Lv.16
		[ "Zhuu Buxu the Silent"	] = { "ズー・ブシュ・ザ・サイレント",		3, '☆'	},	-- Lv.16

	},

	-----------------------------------------------------------
	-- サルタバルタ戦線

	-- アルタナの神兵

	-- フィールド

	-- 西サルタバルタ[S]
	[  95 ] = {
		[ "Bumblebee"				] = { "バンブルビー",						0 },
		[ "Carrion Crow"			] = { "キャリオンクロウ",					0 },
		[ "Crawler"					] = { "クロウラー",							2 },
		[ "Goblin's Rarab"			] = { "ゴブリンズララブ",					0 },
		[ "Mad Fox"					] = { "マッドフォックス",					1 },
		[ "Pug Pugil"				] = { "パグプギル",							1 },
		[ "River Crab"				] = { "リバークラブ",						0 },
		[ "Savanna Rarab"			] = { "サバンナララブ",						0 },
		[ "Yagudo Acolyte"			] = { "ヤグードアコライト",					3 },
		[ "Yagudo Initiate"			] = { "ヤグードイニシエイト",				3 },
		[ "Yagudo Mendicant"		] = { "ヤグードメンディカント",				3 },
		[ "Yagudo Persecutor"		] = { "ヤグードパーセキューター",			3 },
		[ "Yagudo Piper"			] = { "ヤグードパイパー",					3 },
		[ "Yagudo Scribe"			] = { "ヤグードスクライブ",					3 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- カルゴナルゴ城砦[S]
	[  96 ] = {
		[ "Carrion Crow"			] = { "キャリオンクロウ",					2 },
		[ "Death Jacket"			] = { "デスジャケット",						2 },
		[ "Dragonfly"				] = { "ドラゴンフライ",						2 },
		[ "Vorpal Bunny"			] = { "ボーパルバニー",						2 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },
		[ "War Lizard"				] = { "ウォーリザード",						2 },
		[ "Yagudo Drummer"			] = { "ヤグードドラマー",					3 },
		[ "Yagudo Herald"			] = { "ヤグードヘラルド",					3 },
		[ "Yagudo Interrogator"		] = { "ヤグードインテロゲイター",			3 },
		[ "Yagudo Priest"			] = { "ヤグードプリースト",					3 },
		[ "Yagudo Theologist"		] = { "ヤグードセオロジスト",				3 },
		[ "Yagudo Votary"			] = { "ヤグードボウタリー",					3 },

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
		[ "Giant Pugil"				] = { "ジャイアントプギル",					1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Fisher"			] = { "ゴブリンフィッシャー",				3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Thug"				] = { "ゴブリンサグ",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin Weaver"			] = { "ゴブリンウィーバー",					3 },
		[ "Grass Funguar"			] = { "グラスファンガー",					0 },
		[ "Grenade"					] = { "グレネード",							1 },
		[ "Huge Wasp"				] = { "ヒュージワスプ",						0 },
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
		[ "Pug Pugil"				] = { "パグプギル",							1 },
		[ "Rock Eater"				] = { "ロックイーター",						2 },
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
		[ "Grenade"					] = { "グレネード",							1 },
		[ "Huge Wasp"				] = { "ヒュージワスプ",						0 },
		[ "Mad Sheep"				] = { "マッドシープ",						2 },
		[ "Mist Lizard"				] = { "ミストリザード",						2 },
		[ "Onyx Quadav"				] = { "オニキスクゥダフ",					3 },
		[ "Poltergeist"				] = { "ポルターガイスト",					1 },
		[ "Rock Eater"				] = { "ロックイーター",						2 },
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
		[ "Beach Pugil"				] = { "ビーチプギル",						0 },	-- 釣りで 1
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Brutal Sheep"			] = { "ブルータルシープ",					2 },
		[ "Cutter"					] = { "カッター",							1 },
		[ "Damselfly"				] = { "ダムゼルフライ",						2 },
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
		[ "Goblin's Dragonfly"		] = { "ゴブリンズドラゴンフライ",			0 },
		[ "Hill Lizard"				] = { "ヒルリザード",						2 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Sand Bats"				] = { "サンドバッツ",						1 },
		[ "Sand Hare"				] = { "サンドヘアー",						2 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Star Bat"				] = { "スターバット",						0 },
		[ "Thread Leech"			] = { "スレッドリーチ",						2 },
		[ "Will-o'-the-Wisp"		] = { "ウィル・オ・ザ・ウィスプ",			1 },

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
		[ "Napalm"					] = { "ナパーム",							1 },
		[ "Poison Leech"			] = { "ポイズンリーチ",						3 },	-- 釣りは 1
		[ "Rancid Ooze"				] = { "ランシッドウーズ",					1 },
		[ "Seeker Bats"				] = { "シーカーバッツ",						3 },
		[ "Shrieker"				] = { "シュリーカー",						3 },
		[ "Slash Pine"				] = { "スラッシュパイン",					2 },
		[ "Snipper"					] = { "スニッパー",							2 },
		[ "Stalking Sapling"		] = { "ストーキングサプリング",				0 },
		[ "Stink Bats"				] = { "スティンクバッツ",					2 },
		[ "Stroper"					] = { "ストローパー",						1 },
		[ "Stroper Chyme"			] = { "ストローパーカイム",					1 },
		[ "Thread Leech"			] = { "スレッドリーチ",						2 },	-- 釣りは 1
		[ "Vorpal Bunny"			] = { "ボーパルバニー",						2 },
		[ "Will-o'-the-Wisp"		] = { "ウィル・オ・ザ・ウィスプ",			1 },

	},

	-- グスゲン鉱山
	[ 196 ] = {
		[ "Amphisbaena"				] = { "アンフィスバエナ",					3 },
		[ "Bandersnatch"			] = { "バンダースナッチ",					1 },
		[ "Banshee"					] = { "バンシー",							1 },
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Feu Follet"				] = { "ヒューフォレット",					1 },
		[ "Fly Agaric"				] = { "フライアガリック",					2 },
		[ "Foul Meat"				] = { "ファウルミート",						1 },
		[ "Gallinipper"				] = { "ガリニッパー",						3 },
		[ "Ghast"					] = { "ガスト",								1 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Jelly"					] = { "ジェリー",							1 },
		[ "Madfly"					] = { "マッドフライ",						0 },
		[ "Mauthe Doog"				] = { "モーザドゥーグ", 					1 },
		[ "Myconid"					] = { "マイコニド",							3 },
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Ore Eater"				] = { "オアイーター",						2 },
		[ "Rancid Ooze"				] = { "ランシッドウーズ",					1 },
		[ "Rockmill"				] = { "ロックミル",							0 },
		[ "Sadfly"					] = { "サッドフライ",						2 },
		[ "Skeleton Warrior"		] = { "スケルトンウォリアー",				1 },
		[ "Spunkie"					] = { "スパンキー",							1 },
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
		[ "Grenade"					] = { "グレネード",							1 },
		[ "Killer Bee"				] = { "キラービー",							0 },
		[ "Poltergeist"				] = { "ポルターガイスト",					1 },
		[ "Pygmaioi"				] = { "ピュグマイオイ",						0 },
		[ "Skeleton Warrior"		] = { "スケルトンウォリアー",				1 },
		[ "Skeleton Sorcerer"		] = { "スケルトンソーサラー",				1 },
		[ "Strolling Sapling"		] = { "ストローリングサプリング",			0 },
		[ "Wild Dhalmel"			] = { "ワイルドダルメル",					2 },
		[ "Yagudo Acolyte"			] = { "ヤグードアコライト",					3 },
		[ "Yagudo Initiate"			] = { "ヤグードイニシエイト",				3 },
		[ "Yagudo Mendicant"		] = { "ヤグードメンディカント",				3 },
		[ "Yagudo Persecutor"		] = { "ヤグードパーセキューター",			3 },
		[ "Yagudo Piper"			] = { "ヤグードパイパー",					3 },
		[ "Yagudo Scribe"			] = { "ヤグードスクライブ",					3 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ブブリム半島
	[ 118 ] = {
		[ "Bogy"					] = { "ボギー",								1 },
		[ "Bull Dhalmel"			] = { "ブルダルメル",						2 },
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
		[ "Poison Leech"			] = { "ポイズンリーチ",						2 },
		[ "Shoal Pugil"				] = { "ショウルプギル",						0 },	-- 釣りは 1
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Sylvestre"				] = { "シルヴェストル",						0 },
		[ "Will-o'-the-Wisp"		] = { "ウィル・オ・ザ・ウィスプ",			1 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },
		[ "Zombie"					] = { "ゾンビ",								1 },
		[ "Zu"						] = { "ズー",								2 },

	},

	-- ダンジョン

	-- シャクラミの地下迷宮
	[ 198 ] = {
		[ "Abyss Worm"				] = { "アビスワーム",						3 },
		[ "Ancient Bat"				] = { "エインシェントバット",				3 },
		[ "Bleeder Leech"			] = { "ブリーダーリーチ",					2 },
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
		[ "Maze Maker"				] = { "メイズメーカー",						2 },
		[ "Maze Scorpion"			] = { "メイズスコーピオン",					1 },
		[ "Poison Leech"			] = { "ポイズンリーチ",						2 },
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
		[ "Flying Manta"			] = { "フライングマンタ",					1 },
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
		[ "Goblin's Leech"			] = { "ゴブリンズリーチ",					0 },
		[ "Labyrinth Leech"			] = { "ラビリンスリーチ",					2 },
		[ "Labyrinth Manticore"		] = { "ラビリンスマンティコア",				1 },
		[ "Mushussu"				] = { "ムシュフシュ",						1 },
		[ "Tainted Flesh"			] = { "テインテッドフレッシュ",				1 },
		[ "Torama"					] = { "トラマ",								1 },
		[ "Wyvern"					] = { "ワイバーン",							1 },

	},

	-- プロマシアの呪縛

	-- フィールド
	
	-- マナクリッパー
	[   3 ] = {
		[ "Clot"					] = { "クロット",							1 },
		[ "Colossal Calamari"		] = { "コロッサルカラマリ",					1 },
		[ "Cutter"					] = { "カッター",							0 },
		[ "Fatty Pugil"				] = { "ファティープギル",					0 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Kraken"					] = { "クラーケン",							1 },
		[ "Uragnite"				] = { "ウラグナイト",						0 },
	},

	-- ビビキー湾
	[   4 ] = {
		[ "Alraune"					] = { "アルラウネ",							2 },
		[ "Catoblepas"				] = { "カトブレパス",						2 },
		[ "Coastal Opo-opo"			] = { "コースタルオポオポ",					2 },
		[ "Coralline Uragnite"		] = { "コーラルラインウラグナイト",			0 },
		[ "Eft"						] = { "エフト",								2 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin's Rarab"			] = { "ゴブリンズララブ",					0 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
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
		[ "Ignis Fatuus"			] = { "イグニスファタス",					1 },
		[ "Island Rarab"			] = { "アイランドララブ",					2 },
		[ "Jagil"					] = { "ジャギル",							0 },
		[ "Kraken"					] = { "クラーケン",							1 },
		[ "Marine Dhalmel"			] = { "マリンダルメル",						2 },
		[ "Raven"					] = { "レイブン",							2 },
		[ "Tartarus Eft"			] = { "タルタロスエフト",					2 },
		[ "Teine Sith"				] = { "テイネシス",							1 },
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
		[ "Forest Leech"			] = { "フォレストリーチ",					2 },
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
		[ "Land Pugil"				] = { "ランドプギル",						0 },
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
		[ "Thread Leech"			] = { "スレッドリーチ",						1 },
		[ "Walking Tree"			] = { "ウォーキングツリー",					1 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },
		[ "Will-o'-the-Wisp"		] = { "ウィル・オ・ザ・ウィスプ",			1 },
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
		[ "Goblin's Dragonfly"		] = { "ゴブリンズドラゴンフライ",			0 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Ignis Fatuus"			] = { "イグニスファタス",					1 },
		[ "Kraken"					] = { "クラーケン",							1 },
		[ "Land Pugil"				] = { "ランドプギル",						1 },
		[ "Mauthe Doog"				] = { "モーザドゥーグ", 					1 },
		[ "May Fly"					] = { "メイフライ",							2 },
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
		[ "Davoi Hornet"			] = { "ダボイホーネット",					2 },
		[ "Davoi Mush"				] = { "ダボイマッシュ",						1 },
		[ "Davoi Pugil"				] = { "ダボイプギル",						1 },
		[ "Davoi Wasp"				] = { "ダボイワスプ",						3 },
		[ "Geezard"					] = { "ギーザード",							3 },
		[ "Gloop"					] = { "グループ",							1 },
		[ "Greater Pugil"			] = { "グレータープギル",					0 },
		[ "Morbol"					] = { "モルボル",							1 },
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
		[ "War Lizard"				] = { "ウォーリザード",						2 },
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
		[ "Anemone"					] = { "アネモネ",							1 },
		[ "Azer"					] = { "アザー",								1 },
		[ "Blood Soul"				] = { "ブラッドソウル",						1 },
		[ "Dark Stalker"			] = { "ダークストーカー",					3 },
		[ "Fallen Knight"			] = { "フォーレンナイト",					1 },
		[ "Gazer"					] = { "ゲイザー",							1 },
		[ "Haunt"					] = { "ホーント",							1 },
		[ "Hell Hound"				] = { "ヘルハウンド",						1 },
		[ "Ka"						] = { "カー",								3, nil, {  [ 148 ] =   60, [ 562 ] =   60 } },	-- 回避率ダウン
		[ "Lich"					] = { "リッチ",								1 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Marchosias"				] = { "マルコシアス",						1 },
		[ "Mummy"					] = { "マミー",								1 },
		[ "Puroboros"				] = { "ピュロボルス",						1 },
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
		[ "Big Jaw"					] = { "ビッグジョー",						1 },
		[ "Flytrap"					] = { "フライトラップ",						0 },
		[ "Giant Pugil"				] = { "ジャイアントプギル",					0 },
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Protozoan"				] = { "プロウトゾウアン",					1 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Thickshell"				] = { "シックシェル",						0 },

	},

	-- ギルド桟橋
	[   2 ] = {
		[ "Battrap"					] = { "バットトラップ",						0 },
		[ "Beady Beetle"			] = { "ビーディービートル",					2 },
		[ "Birdtrap"				] = { "バードトラップ",						0 },
		[ "Bulldog Bats"			] = { "ブルドッグバッツ",					1 },
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Digger Wasp"				] = { "ディガーワスプ",						2 },
		[ "Diving Beetle"			] = { "ダイビングビートル",					2 },
		[ "Flytrap"					] = { "フライトラップ",						0 },
		[ "Forest Tiger"			] = { "フォレストタイガー",					1 },
		[ "Fosse Pugil"				] = { "フォスプギル",						0 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Glide Bomb"				] = { "グライドボム",						1 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Land Pugil"				] = { "ランドプギル",						0 },
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
		[ "Spider Wasp"				] = { "スパイダーワスプ",					2 },
		[ "Spinous Pugil"			] = { "スピナスプギル",						0 },
		[ "Spunkie"					] = { "スパンキー",							1 },
		[ "Stag Beetle"				] = { "スタッグビートル",					2 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },
		[ "Wendigo"					] = { "ウェンディゴ",						1 },
		[ "Wight"					] = { "ワイト",								1 },
		[ "Will-o'-the-Wisp"		] = { "ウィル・オ・ザ・ウィスプ",			1 },

	},

	-----------------------------------------------------------
	-- ノルバレン戦線

	-- アルタナの神兵

	-- フィールド

	-- ジャグナー森林[S]
	[  82 ] = {
		[ "Brutal Sheep"			] = { "ブルータルシープ",					2 },
		[ "Forest Leech"			] = { "フォレストリーチ",					2 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Hawkertrap"				] = { "ホーカートラップ",					0 },
		[ "Jugner Funguar"			] = { "ジャグナーファンガー",				3 },
		[ "Land Pugil"				] = { "ランドプギル",						2 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Champion"			] = { "オーキシュチャンピオン",				3 },
		[ "Orcish Protector"		] = { "オーキシュプロテクター",				3 },
		[ "Orcish Veteran"			] = { "オーキシュベテラン",					3 },
		[ "Screamer"				] = { "スクリーマー",						0 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Stag Beetle"				] = { "スタッグビートル",					2 },
		[ "Thread Leech"			] = { "スレッドリーチ",						1 },
		[ "Walking Tree"			] = { "ウォーキングツリー",					1 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },

	},

	-- バタリア丘陵[S]
	[  84 ] = {
		[ "Ba"						] = { "バー",								2 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Cutter"					] = { "カッター",							1 },
		[ "Evil Spirit"				] = { "イビルスピリット",					1 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Kraken"					] = { "クラーケン",							1 },
		[ "Land Pugil"				] = { "ランドプギル",						1 },
		[ "Orcish Brawler"			] = { "オーキシュブロウラー",				3 },
		[ "Orcish Impaler"			] = { "オーキシュインペイラー",				3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Sadfly"					] = { "サッドフライ",						2 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Stalking Sapling"		] = { "ストーキングサプリング",				2 },
		[ "Wight"					] = { "ワイト",								1 },

	},

	-- ダンジョン

	-- ラヴォール村[S]
	[  85 ] = {
		[ "Gloop"					] = { "グループ",							1 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Morbol"					] = { "モルボル",							1 },
		[ "Oil Spill"				] = { "オイルスピル",						1 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Champion"			] = { "オーキシュチャンピオン",				3 },
		[ "Orcish Dreadnought"		] = { "オーキシュドレッドノート",			3 },
		[ "Orcish Farkiller"		] = { "オーキシュファーキラー",				3 },
		[ "Orcish Firebelcher"		] = { "オーキシュファイアーベルチャー",		3 },
		[ "Orcish Protector"		] = { "オーキシュプロテクター",				3 },
		[ "Orcish Veteran"			] = { "オーキシュベテラン",					3 },
		[ "War Lizard"				] = { "ウォーリザード",						2 },
		[ "Wolf Bat"				] = { "ウルフバット",						0 },
		[ "Wood Bats"				] = { "ウッドバッツ",						1 },

	},

	-- エルディーム古墳[S]
	[ 175 ] = {
		[ "Gazer"					] = { "ゲイザー",							1 },
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
		[ "Fox Fire"				] = { "フォックスファイア",					1 },
		[ "Gadfly"					] = { "ギャドフライ",						2 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin's Bee"			] = { "ゴブリンズビー",						0 },
		[ "Goobbue"					] = { "グゥーブー",							1 },
		[ "Greater Quadav"			] = { "グレータークゥダフ",					3 },
		[ "Land Pugil"				] = { "ランドプギル",						0 },
		[ "Malboro"					] = { "モルボル",							1 },
		[ "Marsh Funguar"			] = { "マーシュファンガー",					2 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Onyx Quadav"				] = { "オニキスクゥダフ",					3 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Thread Leech"			] = { "スレッドリーチ",						2 },	-- 釣りは 1
		[ "Veteran Quadav"			] = { "ベテランクゥダフ",					3 },
		[ "Water Wasp"				] = { "ウォーターワスプ",					2 },
		[ "Zombie"					] = { "ゾンビ",								1 },

	},

	-- ロランベリー耕地
	[ 110 ] = {
		[ "Berry Grub"				] = { "ベリーグラブ",						2 },
		[ "Big Jaw"					] = { "ビッグジョー",						1 },
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Bronze Quadav"			] = { "ブロンズクゥダフ",					3 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Copper Quadav"			] = { "カッパークゥダフ",					3 },
		[ "Death Wasp"				] = { "デスワスプ",							2 },
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
		[ "Goblin's Bee"			] = { "ゴブリンズビー",						0 },
		[ "Goobbue Farmer"			] = { "グゥーブーファーマー",				1 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Ignis Fatuus"			] = { "イグニスファタス",					1 },
		[ "Midnight Wings"			] = { "ミッドナイトウィングス",				2 },
		[ "Moon Bat"				] = { "ムーンバット",						2 },
		[ "Ochu"					] = { "オチュー",							1 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Poison Leech"			] = { "ポイズンリーチ",						2 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Wight"					] = { "ワイト",								1 },
		[ "Zircon Quadav"			] = { "ジルコンクゥダフ",					3 },

	},

	-- ダンジョン

	-- ベドー
	[ 147 ] = {
		[ "Ancient Quadav"			] = { "エインシェントクゥダフ",				3 },
		[ "Big Jaw"					] = { "ビッグジョー",						1 },
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
		[ "Land Pugil"				] = { "ランドプギル",						1 },
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
		[ "Death Jacket"			] = { "デスジャケット",						2 },
		[ "Doom Scorpion"			] = { "ドゥームスコーピオン",				3 },
		[ "Dragonfly"				] = { "ドラゴンフライ",						3 },
		[ "Exoray"					] = { "エクソレイ",							3 },
		[ "Helm Beetle"				] = { "ヘルムビートル",						3 },
		[ "Hornfly"					] = { "ホーンフライ",						2 },
		[ "Killer Mushroom"			] = { "キラーマッシュルーム",				2 },
		[ "Knight Crawler"			] = { "ナイトクロウラー",					3 },
		[ "Labyrinth Lizard"		] = { "ラビリンスリザード",					3 },
		[ "Maze Lizard"				] = { "メイズリザード",						2 },
		[ "Mushussu"				] = { "ムシュフシュ",						1 },
		[ "Nest Beetle"				] = { "ネストビートル",						2 },
		[ "Puroboros"				] = { "ピュロボルス",						1 },
		[ "Rumble Crawler"			] = { "ランブルクロウラー",					3 },
		[ "Soldier Crawler"			] = { "ソルジャークロウラー",				3 },
		[ "Soul Stinger"			] = { "ソウルスティンガー",					3 },
		[ "Wespe"					] = { "ヴェスペ",							3 },
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
		[ "Gadfly"					] = { "ギャドフライ",						2 },
		[ "Garnet Quadav"			] = { "ガーネットクゥダフ",					3 },
		[ "Ghoul"					] = { "グール",								1 },
		[ "Goblin's Dragonfly"		] = { "ゴブリンズドラゴンフライ",			0 },
		[ "Gold Quadav"				] = { "ゴールドクゥダフ",					3 },
		[ "Goobbue"					] = { "グゥーブー",							1 },
		[ "Malboro"					] = { "モルボル",							1 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Mythril Quadav"			] = { "ミスリルクゥダフ",					3 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Snipper"					] = { "スニッパー",							0 },
		[ "Thread Leech"			] = { "スレッドリーチ",						2 },
		[ "Zircon Quadav"			] = { "ジルコンクゥダフ",					3 },
		[ "Zombie"					] = { "ゾンビ",								1 },
	},

	-- ロランベリー耕地[S]
	[  91 ] = {
		[ "Berry Grub"				] = { "ベリーグラブ",						2 },
		[ "Big Jaw"					] = { "ビッグジョー",						1 },
		[ "Brass Quadav"			] = { "ブラスクゥダフ",						3 },
		[ "Bronze Quadav"			] = { "ブロンズクゥダフ",					3 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Death Jacket"			] = { "デスジャケット",						2 },
		[ "Death Wasp"				] = { "デスワスプ",							2 },
		[ "Dragonfly"				] = { "ドラゴンフライ",						2 },
		[ "Emerald Quadav"			] = { "エメラルドクゥダフ",					3 },
		[ "Evil Spirit"				] = { "イビルスピリット",					1 },
		[ "Goobbue Farmer"			] = { "グゥーブーファーマー",				1 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Hawker"					] = { "ホーカー",							2 },
		[ "Midnight Wings"			] = { "ミッドナイトウィングス",				2 },
		[ "Moon Bat"				] = { "ムーンバット",						2 },
		[ "Ochu"					] = { "オチュー",							1 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Poison Leech"			] = { "ポイズンリーチ",						2 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Wight"					] = { "ワイト",								1 },
		[ "Worker Crawler"			] = { "ワーカークロウラー",					2 },

	},

	-- ブンカール浦[S]
	[  83 ] = {
		[ "Bloodsucker"				] = { "ブラッドサッカー",					1 },
		[ "Bugard"					] = { "ブガード",							1 },
		[ "Demonic Rose"			] = { "デモニックローズ",					1 },
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Dragonfly"				] = { "ドラゴンフライ",						2 },
		[ "Gigas's Tiger"			] = { "ギガースズタイガー",					0 },
		[ "Goblin's Bat"			] = { "ゴブリンズバット",					0 },
		[ "Goliath Beetle"			] = { "ゴリアテビートル",					2 },
		[ "Haunt"					] = { "ホーント",							1 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Zerker"			] = { "オーキシュザーカー",					3 },
		[ "Robber Crab"				] = { "ロバークラブ",						0 },
		[ "Royal Leech"				] = { "ロイヤルリーチ",						2 },
		[ "Stygian Pugil"			] = { "スティジアンプギル",					2 },
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
		[ "Labyrinth Lizard"		] = { "ラビリンスリザード",					3 },
		[ "Old Quadav"				] = { "オールドクゥダフ",					3 },
		[ "Processionaire"			] = { "プロセッショネル",					3 },
		[ "Puroboros"				] = { "ピュロボルス",						1 },
		[ "Silver Quadav"			] = { "シルバークゥダフ",					3 },
		[ "Wespe"					] = { "ヴェスペ",							3 },
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
		[ "Crane Fly"				] = { "クレインフライ",						2 },
		[ "Coeurl"					] = { "クァール",							1 },
		[ "Goblin Ambusher"			] = { "ゴブリンアンブッシャー",				3 },
		[ "Goblin Butcher"			] = { "ゴブリンブッチャー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Gambler"			] = { "ゴブリンギャンブラー",				3 },
		[ "Goblin Leecher"			] = { "ゴブリンリーチャー",					3 },
		[ "Goblin Mugger"			] = { "ゴブリンマガー",						3 },
		[ "Goblin Tinkerer"			] = { "ゴブリンティンカラー",				3 },
		[ "Goblin's Dragonfly"		] = { "ゴブリンズドラゴンフライ",			0 },
		[ "Hill Lizard"				] = { "ヒルリザード",						2 },
		[ "Jubjub"					] = { "ジャブジャブ",						2 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Raptor"					] = { "ラプトル",							1 },
		[ "Scavenging Hound"		] = { "スカベンジングハウンド",				1 },
		[ "Stag Beetle"				] = { "スタッグビートル",					2 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },
		[ "Will-o'-the-Wisp"		] = { "ウィル・オ・ザ・ウィスプ",			1 },
		[ "Yagudo Mendicant"		] = { "ヤグードメンディカント",				3 },
		[ "Yagudo Persecutor"		] = { "ヤグードパーセキューター",			3 },
		[ "Yagudo Piper"			] = { "ヤグードパイパー",					3 },
		[ "Yagudo Priest"			] = { "ヤグードプリースト",					3 },
		[ "Yagudo Theologist"		] = { "ヤグードセオロジスト",				3 },
		[ "Yagudo Votary"			] = { "ヤグードボウタリー",					3 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },
		[ "Zombie"					] = { "ゾンビ",								1 },

	},

	-- ソロムグ原野
	[ 120 ] = {
		[ "Big Jaw"					] = { "ビッグジョー",						1 },
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
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Hill Lizard"				] = { "ヒルリザード",						2 },
		[ "Ignis Fatuus"			] = { "イグニスファタス",					1 },
		[ "Kraken"					] = { "クラーケン",							1 },
		[ "Midnight Wings"			] = { "ミッドナイトウィングス",				2 },
		[ "Moon Bat"				] = { "ムーンバット",						2 },
		[ "Old Sabertooth"			] = { "オールドサーベルトゥース",			3 },
		[ "Sabertooth Tiger"		] = { "サーベルトゥースタイガー",			3 },
		[ "Sauromugue Skink"		] = { "ソロムグスキンク",					1 },
		[ "Snipper"					] = { "スニッパー",							1 },
		[ "Tabar Beak"				] = { "タバールビーク",						1 },
		[ "Wight"					] = { "ワイト",								1 },
		[ "Yagudo Drummer"			] = { "ヤグードドラマー",					3 },
		[ "Yagudo Herald"			] = { "ヤグードヘラルド",					3 },
		[ "Yagudo Interrogator"		] = { "ヤグードインテロゲイター",			3 },
		[ "Yagudo Oracle"			] = { "ヤグードオラクル",					3 },
		[ "Yagudo Priest"			] = { "ヤグードプリースト",					3 },
		[ "Yagudo Theologist"		] = { "ヤグードセオロジスト",				3 },
		[ "Yagudo Votary"			] = { "ヤグードボウタリー",					3 },
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
		[ "Yagudo Abbot"			] = { "ヤグードアボット",					3 },
		[ "Yagudo Assassin"			] = { "ヤグードアサシン",					3 },
		[ "Yagudo Chanter"			] = { "ヤグードチャンター",					3 },
		[ "Yagudo Conductor"		] = { "ヤグードコンダクター",				3 },
		[ "Yagudo Conquistador"		] = { "ヤグードコンキスタドール",			3 },
		[ "Yagudo Drummer"			] = { "ヤグードドラマー",					3 },
		[ "Yagudo Flagellant"		] = { "ヤグードフレジェラント",				3 },
		[ "Yagudo Herald"			] = { "ヤグードヘラルド",					3 },
		[ "Yagudo Inquisitor"		] = { "ヤグードインクイジター",				3 },
		[ "Yagudo Interrogator"		] = { "ヤグードインテロゲイター",			3 },
		[ "Yagudo Lutenist"			] = { "ヤグードリューテニスト",				3 },
		[ "Yagudo Oracle"			] = { "ヤグードオラクル",					3 },
		[ "Yagudo Parasite"			] = { "ヤグードパラサイト",					3 },
		[ "Yagudo Prelate"			] = { "ヤグードプレラット",					3 },
		[ "Yagudo Priest"			] = { "ヤグードプリースト",					3 },
		[ "Yagudo Prior"			] = { "ヤグードプライアー",					3 },
		[ "Yagudo Sentinel"			] = { "ヤグードセンチネル",					3 },
		[ "Yagudo Theologist"		] = { "ヤグードセオロジスト",				3 },
		[ "Yagudo Votary"			] = { "ヤグードボウタリー",					3 },
		[ "Yagudo Zealot"			] = { "ヤグードジーロット",					3 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ガルレージュ要塞
	[ 200 ] = {
		[ "Acid Grease"				] = { "アシッドグリース",					1 },
		[ "Bhuta"					] = { "ブータ",								1 },
		[ "Borer Beetle"			] = { "ボーラービートル",					1 },
		[ "Chamber Beetle"			] = { "チェインバービートル",				3 },
		[ "Citadel Bats"			] = { "シタデルバッツ",						3 },
		[ "Clockwork Pod"			] = { "クロックワークポッド",				4 },
		[ "Demonic Weapon"			] = { "デモニックウェポン",					1 },
		[ "Droma"					] = { "ドローマ",							4 },
		[ "Explosure"				] = { "エクスプロージャー",					1 },
		[ "Fallen Evacuee"			] = { "フォーレンイヴァキュイー",			1 },
		[ "Fallen Mage"				] = { "フォーレンメイジ",					1 },
		[ "Fallen Major"			] = { "フォーレンメジャー",					1 },
		[ "Fallen Officer"			] = { "フォーレンオフィサー",				1 },
		[ "Fallen Soldier"			] = { "フォーレンソルジャー",				1 },
		[ "Fetid Flesh"				] = { "フェティッドフレッシュ",				1 },
		[ "Funnel Bats"				] = { "ファネルバッツ",						3 },
		[ "Hellmine"				] = { "ヘルマイン",							1 },
		[ "Magic Jug"				] = { "マジックジャグ",						4 },
		[ "Oil Spill"				] = { "オイルスピル",						1 },
		[ "Over Weapon"				] = { "オーバーウェポン",					1 },
		[ "Puroboros"				] = { "ピュロボルス",						1 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "Siege Bat"				] = { "シージバット",						2 },
		[ "Tainted Flesh"			] = { "テインテッドフレッシュ",				1 },
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
		[ "Bane Lizard"				] = { "ベーンリザード",						2 },
		[ "Bifrons"					] = { "ビフロンス",							1 },
		[ "Burrow Antlion"			] = { "バロウアントリオン",					1 },
		[ "Cave Antlion"			] = { "ケイブアントリオン",					1 },
		[ "Chasm Lizard"			] = { "カズムリザード",						2 },
		[ "Corse"					] = { "コース",								1 },
		[ "Cutlass Scorpion"		] = { "カトラススコーピオン",				1 },
		[ "Doom Scorpion"			] = { "ドゥームスコーピオン",				3 },
		[ "Flesh Eater"				] = { "フレッシュイーター",					2 },
		[ "Gallinipper"				] = { "ガリニッパー",						2 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Pathfinder"		] = { "ゴブリンパスファインダー",			3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Shaman"			] = { "ゴブリンシャーマン",					3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Goblin's Gallinipper"	] = { "ゴブリンズガリニッパー",				0 },
		[ "Goblin's Ogrefly"		] = { "ゴブリンズオーガフライ",				0 },
		[ "Hecteyes"				] = { "ヘクトアイズ",						1 },
		[ "Hunter Antlion"			] = { "ハンターアントリオン",				2 },
		[ "Lich"					] = { "リッチ",								1 },
		[ "Master Coeurl"			] = { "マスタークァール",					1 },
		[ "Monarch Ogrefly"			] = { "モナークオーガフライ",				2 },
		[ "Mummy"					] = { "マミー",								1 },
		[ "Ogrefly"					] = { "オーガフライ",						2 },
		[ "Pit Antlion"				] = { "ピットアントリオン",					1 },
		[ "Sand Lizard"				] = { "サンドリザード",						2 },
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
		[ "Dragonfly"				] = { "ドラゴンフライ",						2 },
		[ "Hill Lizard"				] = { "ヒルリザード",						2 },
		[ "Jubjub"					] = { "ジャブジャブ",						2 },
		[ "Mountain Jubjub"			] = { "マウンテンジャブジャブ",				2 },
		[ "Night Bats"				] = { "ナイトバッツ",						0 },
		[ "Raptor"					] = { "ラプトル",							1 },
		[ "Scavenging Hound"		] = { "スカベンジングハウンド",				1 },
		[ "Stag Beetle"				] = { "スタッグビートル",					2 },
		[ "Wandering Sapling"		] = { "ワンダリングサプリング",				2 },
		[ "Yagudo Chanter"			] = { "ヤグードチャンター",					3 },
		[ "Yagudo Prelate"			] = { "ヤグードプレラット",					3 },
		[ "Yagudo Prior"			] = { "ヤグードプライアー",					3 },
		[ "Yagudo Sentinel"			] = { "ヤグードセンチネル",					3 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ソロムグ原野[S]
	[  98 ] = {
		[ "Diving Beetle"			] = { "ダイビングビートル",					2 },
		[ "Goblin's Beetle"			] = { "ゴブリンズビートル",					0 },
		[ "Hill Lizard"				] = { "ヒルリザード",						2 },
		[ "Midnight Wings"			] = { "ミッドナイトウィングス",				2 },
		[ "Moon Bat"				] = { "ムーンバット",						2 },
		[ "Sauromugue Skink"		] = { "ソロムグスキンク",					1 },
		[ "Scavenging Hound"		] = { "スカベンジングハウンド",				1 },
		[ "Tabar Beak"				] = { "タバールビーク",						1 },
		[ "Yagudo Abbot"			] = { "ヤグードアボット",					3 },
		[ "Yagudo Inquisitor"		] = { "ヤグードインクイジター",				3 },
		[ "Yagudo Lutenist"			] = { "ヤグードリューテニスト",				3 },
		[ "Yagudo Prior"			] = { "ヤグードプライアー",					3 },
		[ "Yagudo Zealot"			] = { "ヤグードジーロット",					3 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ダンジョン

	-- オズトロヤ城[S]
	[  99 ] = {
		[ "Bastion Bats"			] = { "バスティオンバッツ",					2 },
		[ "Bulwark Bat"				] = { "ブルワークバット",					1 },
		[ "Yagudo Abbot"			] = { "ヤグードアボット",					3 },
		[ "Yagudo Chanter"			] = { "ヤグードチャンター",					3 },
		[ "Yagudo Conductor"		] = { "ヤグードコンダクター",				3 },
		[ "Yagudo Flagellant"		] = { "ヤグードフレジェラント",				3 },
		[ "Yagudo Parasite"			] = { "ヤグードパラサイト",					3 },
		[ "Yagudo Prelate"			] = { "ヤグードプレラット",					3 },
		[ "Yagudo Prior"			] = { "ヤグードプライアー",					3 },
		[ "Yagudo Sentinel"			] = { "ヤグードセンチネル",					3 },
		[ "Yagudo's Elemental"		] = { "ヤグードズエレメンタル",				0 },

	},

	-- ガルレージュ要塞[S]
	[ 164 ] = {
		[ "Dire Bat"				] = { "ダイアーバット",						2 },
		[ "Explosure"				] = { "エクスプロージャー",					1 },
		[ "Incubus Bats"			] = { "インキュバスバッツ",					3 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Yagudo Abbot"			] = { "ヤグードアボット",					3 },
		[ "Yagudo Lutenist"			] = { "ヤグードリューテニスト",				3 },
		[ "Yagudo Prior"			] = { "ヤグードプライアー",					3 },
		[ "Yagudo Zealot"			] = { "ヤグードジーロット",					3 },

	},

	-----------------------------------------------------------
	-- クフィム

	-- オリジナル

	-- クフィム島
	[ 126 ] = {
		[ "Acrophies"				] = { "アクロフィーズ",						2 },
		[ "Ancient Bat"				] = { "エインシェントバット",				1 },
		[ "Banshee"					] = { "バンシー",							1 },
		[ "Clipper"					] = { "クリッパー",							0 },
		[ "Dancing Weapon"			] = { "ダンシングウェポン",					1 },
		[ "Dark Bats"				] = { "ダークバッツ",						2 },
		[ "Giant Ascetic"			] = { "ジャイアントアセティック",			3 },
		[ "Giant Hunter"			] = { "ジャイアントハンター",				3 },
		[ "Giant Ranger"			] = { "ジャイアントレインジャー",			3 },
		[ "Giant Trapper"			] = { "ジャイアントトラッパー",				3 },
		[ "Gigas's Leech"			] = { "ギガースズリーチ",					0 },
		[ "Glow Bat"				] = { "グロウバット",						2 },
		[ "Goblin Bounty Hunter"	] = { "ゴブリンバウンティハンター",			3 },
		[ "Goblin's Leech"			] = { "ゴブリンズリーチ",					0 },
		[ "Greater Pugil"			] = { "グレータープギル",					2 },	-- 釣りは 1
		[ "Kraken"					] = { "クラーケン",							1 },
		[ "Land Worm"				] = { "ランドワーム",						3 },
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
		[ "Chaos Idol"				] = { "カオスアイドル",						4 },
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
		[ "Magic Pot"				] = { "マジックポット",						4 },
		[ "Magic Urn"				] = { "マジックアーン",						4 },
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
		[ "Jagd Doll"				] = { "ヤクトドール",						4 },
		[ "Magic Jar"				] = { "マジックジャー",						4 },
		[ "Magic Pot"				] = { "マジックポット",						4 },
		[ "Mold Bats"				] = { "モールドバッツ",						1 },
		[ "Panzer Doll"				] = { "パンツァードール",					4 },
		[ "Stirge"					] = { "スティージ",							1 },
		[ "Tower Bats"				] = { "タワーバッツ",						1 },

	},

	-- デルクフの塔上層
	[ 158 ] = {
		[ "Demonic Doll"			] = { "デモニックドール",					4 },
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
		[ "Magic Pot"				] = { "マジックポット",						4 },
		[ "Magic Urn"				] = { "マジックアーン",						4 },
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
		[ "Hecteyes"				] = { "ヘクトアイズ",						1 },
		[ "Hovering Oculus"			] = { "ホバリングオキュラス",				1 },
		[ "Oil Slick"				] = { "オイルスリック",						1 },
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Seeker Bats"				] = { "シーカーバッツ",						2 },
		[ "Stirge"					] = { "スティージ",							3 },
		[ "Taisai"					] = { "タイサイ",							1 },
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
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Kraken"					] = { "クラーケン",							1 },
		[ "Living Statue"			] = { "リビングスタテュー",					4 },
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
		[ "Clockwork Pod"			] = { "クロックワークポッド",				4 },
		[ "Colossus"				] = { "コロッサス",							1 },
		[ "Droma"					] = { "ドローマ",							4 },
		[ "Drone"					] = { "ドローン",							4 },
		[ "Hellish Weapon"			] = { "ヘリッシュウェポン",					1 },
		[ "Killing Weapon"			] = { "キリングウェポン",					1 },
		[ "Ore Golem"				] = { "オーレゴーレム",						1 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "Shadow"					] = { "シャドウ",							3 },
		[ "Specter"					] = { "スペクター",							3 },
		[ "Talos"					] = { "タロス",								4 },
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
		[ "Archaic Chest"			] = { "アルケイックチェスト",				1 },
		[ "Avalanche"				] = { "アバランチ",							1 },
		[ "Blubber Eyes"			] = { "ブラバーアイズ",						0 },
		[ "Camazotz"				] = { "カマソッソ",							1 },
		[ "Cryptonberry Cutter"		] = { "クリプトンベリーカッター",			3 },
		[ "Cryptonberry Harrier"	] = { "クリプトンベリーハリアー",			3 },
		[ "Cryptonberry Plaguer"	] = { "クリプトンベリープレイギュアー",		3 },
		[ "Cryptonberry Stalker"	] = { "クリプトンベリーストーカー",			3 },
		[ "Demonic Millstone"		] = { "デモニックミルストーン",				4 },
		[ "Dire Bat"				] = { "ダイアーバット",						1 },
		[ "Diremite"				] = { "ダイアマイト",						0 },
		[ "Diremite Assaulter"		] = { "ダイアマイトアソールター",			1 },
		[ "Diremite Dominator"		] = { "ダイアマイトドミネーター",			1 },
		[ "Diremite Stalker"		] = { "ダイアマイトストーカー",				0 },
		[ "Frost Lizard"			] = { "フロストリザード",					2 },
		[ "Gargoyle"				] = { "ガーゴイル",							4 },
		[ "Gazer"					] = { "ゲイザー",							1 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Bandit"			] = { "ゴブリンバンディット",				3 },
		[ "Goblin Bouncer"			] = { "ゴブリンバウンサー",					3 },
		[ "Goblin Enchanter"		] = { "ゴブリンエンチャンター",				3 },
		[ "Goblin Hunter"			] = { "ゴブリンハンター",					3 },
		[ "Goblin Jeweler"			] = { "ゴブリンジュウェラー",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Veterinarian"		] = { "ゴブリンベテレネリアン",				3 },
		[ "Goblin's Bat"			] = { "ゴブリンズバット",					0 },
		[ "Labyrinth Lizard"		] = { "ラビリンスリザード",					2 },
		[ "Magic Millstone"			] = { "マジックミルストーン",				4 },
		[ "Maledict Millstone"		] = { "メレディクトミルストーン",			4 },
		[ "Maze Lizard"				] = { "メイズリザード",						2 },
		[ "Million Eyes"			] = { "ミリオンアイズ",						1 },
		[ "Morozko"					] = { "モロズコ",							1 },
		[ "Purgatory Bat"			] = { "パーガトリーバット",					1 },
		[ "Snoll"					] = { "スノール",							1 },
		[ "Snowball"				] = { "スノーボール",						1 },
		[ "Snow Lizard"				] = { "スノーリザード",						2 },
		[ "Thousand Eyes"			] = { "サウザンドアイズ",					1 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },
		[ "Treasure Chest"			] = { "トレジャーチェスト",					1 },
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
		[ "Demon Knight"			] = { "デーモンナイト",						3 },
		[ "Demon Pawn"				] = { "デーモンポーン",						3 },
		[ "Demon Warlock"			] = { "デーモンワーロック",					3 },
		[ "Demon Wizard"			] = { "デーモンウィザード",					3 },
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Etemmu"					] = { "エテンム",							1 },
		[ "Evil Eye"				] = { "イービルアイ",						1 },
		[ "Frost Gigas"				] = { "フロストギガース",					3 },
		[ "Gigas's Tiger"			] = { "ギガースズタイガー",					0 },
		[ "Goblin's Tiger"			] = { "ゴブリンズタイガー",					0 },
		[ "Graupel Gigas"			] = { "グラウパルギガース",					3 },
		[ "Hail Gigas"				] = { "ヘイルギガース",						3 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Shadow Dragon"			] = { "シャドウドラゴン",					1 },

	},

	-- ダンジョン

	-- ズヴァール城外郭
	[ 161 ] = {
		[ "Abyssal Demon"			] = { "アビサルデーモン",					3 },
		[ "Ahriman"					] = { "アーリマン",							3 },
		[ "Arch Demon"				] = { "アーチデーモン",						3 },
		[ "Blood Demon"				] = { "ブラッドデーモン",					3 },
		[ "Evil Eye"				] = { "イービルアイ",						3 },
		[ "Demon Chancellor"		] = { "デーモンチャンセラー",				3 },
		[ "Demon Commander"			] = { "デーモンコマンダー",					3 },
		[ "Demon General"			] = { "デーモンジェネラル",					3 },
		[ "Demon Knight"			] = { "デーモンナイト",						3 },
		[ "Demon Magistrate"		] = { "デーモンマジストレイト",				3 },
		[ "Demon Pawn"				] = { "デーモンポーン",						3 },
		[ "Demon Warlock"			] = { "デーモンワーロック",					3 },
		[ "Demon Wizard"			] = { "デーモンウィザード",					3 },
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Doom Demon"				] = { "ドゥームデーモン",					3 },
		[ "Dread Demon"				] = { "ドレッドデーモン",					3 },
		[ "Elder Quadav"			] = { "エルダークゥダフ",					3 },
		[ "Emerald Quadav"			] = { "エメラルドクゥダフ",					3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Goblin's Bats"			] = { "ゴブリンズバッツ",					0 },
		[ "Gore Demon"				] = { "ゴアデーモン",						3 },
		[ "Iron Quadav"				] = { "アイアンクゥダフ",					3 },
		[ "Judicator Demon"			] = { "ジュディケーターデーモン",			3 },
		[ "Morbid Eye"				] = { "モービッドアイ",						3 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Spinel Quadav"			] = { "スピネルクゥダフ",					3 },
		[ "Stygian Demon"			] = { "スティジアンデーモン",				3 },
		[ "Yagudo Conquistador"		] = { "ヤグードコンキスタドール",			3 },
		[ "Yagudo Lutenist"			] = { "ヤグードリューテニスト",				3 },
		[ "Yagudo Prior"			] = { "ヤグードプライアー",					3 },
		[ "Yagudo Zealot"			] = { "ヤグードジーロット",					3 },

	},

	-- ズヴァール城内郭
	[ 162 ] = {
		[ "Deadly Iris"				] = { "デッドリーアイリス",					3 },
		[ "Demon Knight"			] = { "デーモンナイト",						3 },
		[ "Demon Pawn"				] = { "デーモンポーン",						3 },
		[ "Demon Warlock"			] = { "デーモンワーロック",					3 },
		[ "Demon Wizard"			] = { "デーモンウィザード",					3 },
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
		[ "Yagudo Abbot"			] = { "ヤグードアボット",					3 },
		[ "Yagudo Chanter"			] = { "ヤグードチャンター",					3 },
		[ "Yagudo Conquistador"		] = { "ヤグードコンキスタドール",			3 },
		[ "Yagudo Inquisitor"		] = { "ヤグードインクイジター",				3 },
		[ "Yagudo Lutenist"			] = { "ヤグードリューテニスト",				3 },
		[ "Yagudo Prior"			] = { "ヤグードプライアー",					3 },
		[ "Yagudo Sentinel"			] = { "ヤグードセンチネル",					3 },
		[ "Yagudo Zealot"			] = { "ヤグードジーロット",					3 },

	},

	-- プロマシアの呪縛

	-- フィールド

	-- ウルガラン山脈
	[   5 ] = {
		[ "Agloolik"				] = { "アグロリック",						1 },
		[ "Akselloak"				] = { "アクセローク",						1 },
		[ "Brontotaur"				] = { "ブロントタウルス",					3 },
		[ "Buffalo"					] = { "バッファロー",						1 },
		[ "Cwn Annwn"				] = { "クーンアンヌーン",					1 },
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Dread Demon"				] = { "ドレッドデーモン",					3 },
		[ "Esbat"					] = { "エスバット",							1 },
		[ "Fachan"					] = { "ファハン",							1 },
		[ "Giant Buffalo"			] = { "ジャイアントバッファロー",			1 },
		[ "Glacier Eater"			] = { "グレーシャーイーター",				2 },
		[ "Gore Demon"				] = { "ゴアデーモン",						3 },
		[ "Judicator Demon"			] = { "ジュディケーターデーモン",			3 },
		[ "Kindred Black Mage"		] = { "キンドレッドブラックメイジ",			3 },
		[ "Kindred Dark Knight"		] = { "キンドレッドダークナイト",			3 },
		[ "Kindred Summoner"		] = { "キンドレッドサモナー",				3 },
		[ "Kindred Warrior"			] = { "キンドレッドウォリアー",				3 },
		[ "King Buffalo"			] = { "キングバッファロー",					1 },
		[ "Mindgazer"				] = { "マインドゲイザー",					1 },
		[ "Molech"					] = { "モレク",								3 },
		[ "Morozko"					] = { "モロズコ",							1 },
		[ "Mountain Worm"			] = { "マウンテンワーム",					2 },
		[ "Nightmare Bats"			] = { "ナイトメアバッツ",					1 },
		[ "Nival Raptor"			] = { "ニバルラプトル",						1 },
		[ "Phasma"					] = { "ファスマ",							1 },
		[ "Polar Hare"				] = { "ポーラーヘアー",						0 },
		[ "Smolenkos"				] = { "スモレンコス",						1 },
		[ "Snoll"					] = { "スノール",							1 },
		[ "Srei Ap"					] = { "スレイエイプ",						1 },
		[ "Stygian Demon"			] = { "スティジアンデーモン",				3 },
		[ "Succubus Bats"			] = { "サキュバスバッツ",					1 },
		[ "Tyrannotaur"				] = { "ティラノタウルス",					3 },
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
		[ "Judicator Demon"			] = { "ジュディケーターデーモン",			3 },

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
		[ "Yagudo Chanter"			] = { "ヤグードチャンター",					3 },
		[ "Yagudo Prelate"			] = { "ヤグードプレラット",					3 },
		[ "Yagudo Sentinel"			] = { "ヤグードセンチネル",					3 },

	},

	-- ズヴァール城内郭[S]
	[ 155 ] = {
		[ "Demon's Elemental"		] = { "デーモンズエレメンタル",				0 },
		[ "Judicator Demon"			] = { "ジュディケーターデーモン",			3 },
		[ "Orcish Dreadnought"		] = { "オーキシュドレッドノート",			3 },
		[ "Orcish Farkiller"		] = { "オーキシュファーキラー",				3 },
		[ "Platinum Quadav"			] = { "プラチナクゥダフ",					3 },
		[ "Steel Quadav"			] = { "スチールクゥダフ",					3 },
		[ "Yagudo Abbot"			] = { "ヤグードアボット",					3 },
		[ "Yagudo Conductor"		] = { "ヤグードコンダクター",				3 },
		[ "Yagudo Flagellant"		] = { "ヤグードフレジェラント",				3 },

	},

	-----------------------------------------------------------
	-- 低地エルシモ

	-- ジラートの幻影

	-- フィールド

	-- ユタンガ大森林
	[ 123 ] = {
		[ "Bigclaw"					] = { "ビッグクロー",						1 },
		[ "Bloodsucker"				] = { "ブラッドサッカー",					1 },
		[ "Brook Sahagin"			] = { "ブルックサハギン",					3 },
		[ "Creek Sahagin"			] = { "クリークサハギン",					3 },
		[ "Death Jacket"			] = { "デスジャケット",						2 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Furrier"			] = { "ゴブリンファリアー",					3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Smithy"			] = { "ゴブリンスミシー",					3 },
		[ "Goblin's Bee"			] = { "ゴブリンズビー",						0 },
		[ "Ironshell"				] = { "アイアンシェル",						1 },
		[ "Ivory Lizard"			] = { "アイボリーリザード",					2 },
		[ "Jungle Coeurl"			] = { "ジャングルクァール",					1 },
		[ "Lake Sahagin"			] = { "レイクサハギン",						3 },
		[ "Lava Bomb"				] = { "ラーヴァボム",						1 },
		[ "Makara"					] = { "マカラ",								1 },
		[ "Overgrown Rose"			] = { "オーバーグロウンローズ",				1 },
		[ "River Sahagin"			] = { "リバーサハギン",						3 },
		[ "Rivulet Sahagin"			] = { "リビュレットサハギン",				3 },
		[ "Soldier Crawler"			] = { "ソルジャークロウラー",				2 },
		[ "Stream Sahagin"			] = { "ストリームサハギン",					3 },
		[ "Young Opo-opo"			] = { "ヤングオポオポ",						2 },
		[ "Yuhtunga Mandragora"		] = { "ユタンガマンドラゴラ",				0 },

	},

	-- ダンジョン

	-- 海蛇の岩窟
	[ 176 ] = {
		[ "Bigclaw"					] = { "ビッグクロー",						1 },
		[ "Big Jaw"					] = { "ビッグジョー",						1 },
		[ "Blubber Eyes"			] = { "ブラバーアイズ",						1 },
		[ "Bog Sahagin"				] = { "ボグサハギン",						3 },
		[ "Brook Sahagin"			] = { "ブルックサハギン",					3 },
		[ "Coastal Sahagin"			] = { "コースタルサハギン",					3 },
		[ "Delta Sahagin"			] = { "デルタサハギン",						3 },
		[ "Devil Manta"				] = { "デビルマンタ",						1 },
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Ghast"					] = { "ガスト",								1 },
		[ "Greatclaw"				] = { "グレートクロー",						1 },
		[ "Grotto Pugil"			] = { "グロットプギル",						1 },
		[ "Ironshell"				] = { "アイアンシェル",						1 },
		[ "Lagoon Sahagin"			] = { "ラグーンサハギン",					3 },
		[ "Lake Sahagin"			] = { "レイクサハギン",						3 },
		[ "Marsh Sahagin"			] = { "マーシュサハギン",					3 },
		[ "Mindgazer"				] = { "マインドゲイザー",					1 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Nightmare Bats"			] = { "ナイトメアバッツ",					3 },
		[ "Ooze"					] = { "ウーズ",								1 },
		[ "Pond Sahagin"			] = { "ポンドサハギン",						3 },
		[ "Razorjaw Pugil"			] = { "レイザージョープギル",				1 },
		[ "Riparian Sahagin"		] = { "ライペアリアンサハギン",				3 },
		[ "Rivulet Sahagin"			] = { "リビュレットサハギン",				3 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },
		[ "Rock Crab"				] = { "ロッククラブ",						1 },
		[ "Royal Leech"				] = { "ロイヤルリーチ",						2 },
		[ "Sahagin Parasite"		] = { "サハギンパラサイト",					2 },
		[ "Sea Bonze"				] = { "シーボンズ",							1 },
		[ "Shore Sahagin"			] = { "ショアーサハギン",					3 },
		[ "Spring Sahagin"			] = { "スプリングサハギン",					3 },
		[ "Stygian Pugil"			] = { "スティジアンプギル",					1 },
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
		[ "Anemone"					] = { "アネモネ",							1 },
		[ "Big Jaw"					] = { "ビッグジョー",						1 },
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
		[ "Goblin's Bee"			] = { "ゴブリンズビー",						0 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Makara"					] = { "マカラ",								1 },
		[ "Master Coeurl"			] = { "マスタークァール",					1 },
		[ "Puroboros"				] = { "ピュロボルス",						1 },
		[ "Tonberry Chopper"		] = { "トンベリチョッパー",					3 },
		[ "Tonberry Creeper"		] = { "トンベリクリーパー",					3 },
		[ "Tonberry Harasser"		] = { "トンベリハラッサー",					3 },
		[ "Tonberry Hexer"			] = { "トンベリヘキサー",					3 },
		[ "Tonberry Jinxer"			] = { "トンベリジンクサー",					3 },
		[ "Tonberry Shadower"		] = { "トンベリシャドウアー",				3 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },
		[ "White Lizard"			] = { "ホワイトリザード",					2 },
		[ "Worker Crawler"			] = { "ワーカークロウラー",					2 },
		[ "Yhoator Mandragora"		] = { "ヨアトルマンドラゴラ",				0 },
		[ "Yhoator Wasp"			] = { "ヨアトルワスプ",						2 },
		[ "Young Opo-opo"			] = { "ヤングオポオポ",						2 },

	},

	-- ダンジョン

	-- ヴガレピ寺院
	[ 159 ] = {
		[ "Bloodsucker"				] = { "ブラッドサッカー",					1 },
		[ "Bouncing Ball"			] = { "バウンシングボール",					1 },
		[ "Hover Tank"				] = { "ホバータンク",						4 },
		[ "Iron Maiden"				] = { "アイアンメイデン",					4 },
		[ "Rumble Crawler"			] = { "ランブルクロウラー",					2 },
		[ "Temple Bee"				] = { "テンプルビー",						3 },
		[ "Temple Opo-opo"			] = { "テンプルオポオポ",					2 },
		[ "Tonberry Cutter"			] = { "トンベリカッター",					3 },
		[ "Tonberry Dismayer"		] = { "トンベリディスメイヤー",				3 },
		[ "Tonberry Harrier"		] = { "トンベリハリアー",					3 },
		[ "Tonberry Maledictor"		] = { "トンベリマレディクター",				3 },
		[ "Tonberry Pursuer"		] = { "トンベリパルサー",					3 },
		[ "Tonberry Stabber"		] = { "トンベリスタバー",					3 },
		[ "Tonberry Stalker"		] = { "トンベリストーカー",					3 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },
		[ "Torama"					] = { "トラマ",								1 },
		[ "Wespe"					] = { "ヴェスペ",							3 },

	},

	-- 怨念洞
	[ 160 ] = {
		[ "Bifrons"					] = { "ビフロンス",							1 },
		[ "Bloodsucker"				] = { "ブラッドサッカー",					1 },
		[ "Bullbeggar"				] = { "ブルベガー",							3 },
		[ "Cave Worm"				] = { "ケイブワーム",						2 },
		[ "Cutlass Scorpion"		] = { "カトラススコーピオン",				1 },
		[ "Den Scorpion"			] = { "デンスコーピオン",					1 },
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Doom Toad"				] = { "ドゥームトード",						1 },
		[ "Million Eyes"			] = { "ミリオンアイズ",						1 },
		[ "Mousse"					] = { "ムース",								1 },
		[ "Puck"					] = { "パック",								3 },
		[ "Razorjaw Pugil"			] = { "レイザージョープギル",				1 },
		[ "Rock Crab"				] = { "ロッククラブ",						1 },
		[ "Stygian Pugil"			] = { "スティジアンプギル",					1 },
		[ "Succubus Bats"			] = { "サキュバスバッツ",					3 },
		[ "Tonberry Beleaguerer"	] = { "トンベリビリーガラー",				3 },
		[ "Tonberry Imprecator"		] = { "トンベリインプリケイター",			3 },
		[ "Tonberry Slasher"		] = { "トンベリスラッシャー",				3 },
		[ "Tonberry Trailer"		] = { "トンベリトレーラー",					3 },
		[ "Tonberry's Elemental"	] = { "トンベリーズエレメンタル",			0 },
		[ "Tormentor"				] = { "トーメンター",						2 },

	},

	-- イフリートの釜
	[ 205 ] = {
		[ "Ash Lizard"				] = { "アッシュリザード",					2 },
		[ "Dire Bat"				] = { "ダイアーバット",						3 },
		[ "Dodomeki"				] = { "ドドメキ",							1 },
		[ "Eotyrannus"				] = { "エオティラヌス",						1 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Bandit"			] = { "ゴブリンバンディット",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Shepherd"			] = { "ゴブリンシェパード",					3 },
		[ "Goblin's Bats"			] = { "ゴブリンズバッツ",					0 },
		[ "Hurricane Wyvern"		] = { "ハリケーンワイバーン",				1 },
		[ "Nightmare Bats"			] = { "ナイトメアバッツ",					3 },
		[ "Old Opo-opo"				] = { "オールドオポオポ",					2 },
		[ "Sulfur Scorpion"			] = { "サルファースコーピオン",				1 },
		[ "Volcanic Bomb"			] = { "ボルカニックボム",					1 },
		[ "Volcanic Gas"			] = { "ボルカニックガス",					1 },
		[ "Volcano Wasp"			] = { "ボルケーノワスプ",					2 },

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
		[ "Desert Dhalmel"			] = { "デザートダルメル",					2 },
		[ "Diatryma"				] = { "ディアトリマ",						1 },
		[ "Doom Scorpion"			] = { "ドゥームスコーピオン",				3 },
		[ "Flesh Eater"				] = { "フレッシュイーター",					1 },
		[ "Giant Spider"			] = { "ジャイアントスパイダー",				2 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Trader"			] = { "ゴブリントレーダー",					3 },
		[ "Goblin's Spider"			] = { "ゴブリンズスパイダー",				0 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Ironshell"				] = { "アイアンシェル",						1 },
		[ "Lesser Manticore"		] = { "レッサーマンティコア",				1 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Makara"					] = { "マカラ",								1 },
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
		[ "Desert Dhalmel"			] = { "デザートダルメル",					2 },
		[ "Desert Manticore"		] = { "デザートマンティコア",				1 },
		[ "Desert Spider"			] = { "デザートスパイダー",					2 },
		[ "Desert Worm"				] = { "デザートワーム",						1 },
		[ "Fallen Knight"			] = { "フォーレンナイト",					1 },
		[ "Goblin Bouncer"			] = { "ゴブリンバウンサー",					3 },
		[ "Goblin Digger"			] = { "ゴブリンディガー",					3 },
		[ "Goblin Enchanter"		] = { "ゴブリンエンチャンター",				3 },
		[ "Goblin Hunter"			] = { "ゴブリンハンター",					3 },
		[ "Goblin Welldigger"		] = { "ゴブリンウェルディガー",				3 },
		[ "Ironshell"				] = { "アイアンシェル",						1 },
		[ "Lich"					] = { "リッチ",								1 },
		[ "Phorusrhacos"			] = { "フォルスラコス",						3 },
		[ "Razorjaw Pugil"			] = { "レイザージョープギル",				1 },
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
		[ "Sand Digger"				] = { "サンドディガー",						3 },
		[ "Sand Eater"				] = { "サンドイーター",						2 },
		[ "Sand Lizard"				] = { "サンドリザード",						2 },
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
		[ "Devil Manta"				] = { "デビルマンタ",						1 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Enna-enna"				] = { "エンナ・エンナ",						1 },
		[ "Fantasma"				] = { "ファンタズマ",						1 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Bandit"			] = { "ゴブリンバンディット",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Shepherd"			] = { "ゴブリンシェパード",					3 },
		[ "Goblin's Rabbit"			] = { "ゴブリンズラビット",					0 },
		[ "Greater Manticore"		] = { "グレーターマンティコア",				1 },
		[ "Razorjaw Pugil"			] = { "レイザージョープギル",				1 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },
		[ "Rock Crab"				] = { "ロッククラブ",						1 },
		[ "Sand Cockatrice"			] = { "サンドコカトリス",					1 },
		[ "Sand Lizard"				] = { "サンドリザード",						2 },
		[ "Stygian Pugil"			] = { "スティジアンプギル",					1 },
		[ "Terror Pugil"			] = { "テラープギル",						1 },
		[ "Velociraptor"			] = { "ヴェロキラプトル",					1 },

	},

	-- 慟哭の谷
	[ 128 ] = {
		[ "Peryton"					] = { "ペリュトン",							1 },
		[ "Valley Manticore"		] = { "ヴァレーマンティコア",				3 },
		[ "Velociraptor"			] = { "ヴェロキラプトル",					1 },

	},

	-- ダンジョン

	-- クフタルの洞門
	[ 174 ] = {
		[ "Cave Worm"				] = { "ケイブワーム",						2 },
		[ "Deinonychus"				] = { "ディノニクス",						1 },
		[ "Devil Manta"				] = { "デビルマンタ",						1 },
		[ "Diplopod"				] = { "ディプロポッド",						1 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Bandit"			] = { "ゴブリンバンディット",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Tamer"			] = { "ゴブリンテイマー",					3 },
		[ "Goblin's Spider"			] = { "ゴブリンズスパイダー",				0 },
		[ "Greater Cockatrice"		] = { "グレーターコカトリス",				1 },
		[ "Haunt"					] = { "ホーント",							1 },
		[ "Kuftal Digger"			] = { "クフタルディガー",					2 },
		[ "Ladon"					] = { "ラドン",								1 },
		[ "Ovinnik"					] = { "オヴィンニク",						1 },
		[ "Recluse Spider"			] = { "レクルーススパイダー",				3 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },
		[ "Sabotender Sediendo"		] = { "サボテンダー セディエンド",			1 },
		[ "Sand Lizard"				] = { "サンドリザード",						2 },
		[ "Scavenger Crab"			] = { "スカベンジャークラブ",				1 },
		[ "Stygian Pugil"			] = { "スティジアンプギル",					1 },

	},

	-- グスタフの洞門
	[ 212 ] = {
		[ "Antares"					] = { "アンタレス",							1 },
		[ "Demonic Pugil"			] = { "デモニックプギル",					1 },
		[ "Doom Guard"				] = { "ドゥームガード",						1 },
		[ "Doom Mage"				] = { "ドゥームメイジ",						1 },
		[ "Doom Soldier"			] = { "ドゥームソルジャー",					1 },
		[ "Doom Warlock"			] = { "ドゥームワーロック",					1 },
		[ "Erlik"					] = { "エルリク",							1 },
		[ "Goblin Alchemist"		] = { "ゴブリンアルケミスト",				3 },
		[ "Goblin Mercenary"		] = { "ゴブリンマシーナリー",				3 },
		[ "Goblin Poacher"			] = { "ゴブリンポウチャー",					3 },
		[ "Goblin Reaper"			] = { "ゴブリンリーパー",					3 },
		[ "Goblin Robber"			] = { "ゴブリンロバー",						3 },
		[ "Goblin Shepherd"			] = { "ゴブリンシェパード",					3 },
		[ "Goblin's Leech"			] = { "ゴブリンズリーチ",					0 },
		[ "Greater Gaylas"			] = { "グレーターゲイラス",					2 },
		[ "Hawker"					] = { "ホーカー",							2 },
		[ "Hell Bat"				] = { "ヘルバット",							2 },
		[ "Labyrinth Leech"			] = { "ラビリンスリーチ",					2 },
		[ "Labyrinth Lizard"		] = { "ラビリンスリザード",					2 },
		[ "Makara"					] = { "マカラ",								1 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },
		[ "Typhoon Wyvern"			] = { "タイフーンワイバーン",				1 },

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
		[ "Goblin's Leech"			] = { "ゴブリンズリーチ",					0 },
		[ "Goobbue Gardener"		] = { "グゥーブーガーデナー",				3 },
		[ "Goobbue Parasite"		] = { "グゥーブーパラサイト",				2 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Hell Hound"				] = { "ヘルハウンド",						1 },
		[ "Lesser Gaylas"			] = { "レッサーゲイラス",					3 },
		[ "Lost Soul" 				] = { "ロストソウル", 						1, nil, { [  30 ] = 3600 } },	-- 呪詛
		[ "Master Coeurl"			] = { "マスタークァール",					1 },
		[ "Myxomycete"				] = { "ミクソマイケイト",					2 },
		[ "Ogrefly"					] = { "オーガフライ",						2 },
		[ "Puroboros"				] = { "ピュロボルス",						1 },
		[ "Revenant"				] = { "レブナント",							1 },
		[ "Rock Golem"				] = { "ロックゴーレム",						1 },
		[ "Rot Prowler"				] = { "ロットプロウラー",					1 },

	},

	-- ボヤーダ樹
	[ 153 ] = {
		[ "Bark Spider"				] = { "バークスパイダー",					2 },
		[ "Bark Tarantula"			] = { "バークタランチュラ",					3 },
		[ "Blood Ball"				] = { "ブラッドボール",						2 },
		[ "Bouncing Ball"			] = { "バウンシングボール",					1 },
		[ "Boyahda Sapling"			] = { "ボヤーダサプリング",					2 },
		[ "Darter"					] = { "ダーター",							2 },
		[ "Death Cap"				] = { "デスキャップ",						2 },
		[ "Demonic Pugil"			] = { "デモニックプギル",					1 },
		[ "Demonic Rose"			] = { "デモニックローズ",					1 },
		[ "Elder Goobbue"			] = { "エルダーグゥーブー",					3 },
		[ "Knight Crawler"			] = { "ナイトクロウラー",					3 },
		[ "Korrigan"				] = { "コリガン",							3 },
		[ "Morbol Menace"			] = { "モルボルメナス",						1 },
		[ "Moss Eater"				] = { "モスイーター",						2 },
		[ "Mourioche"				] = { "ムリョーシュ",						2 },
		[ "Old Goobbue"				] = { "オールドグゥーブー",					3 },
		[ "Processionaire"			] = { "プロセッショネル",					3 },
		[ "Robber Crab"				] = { "ロバークラブ",						1 },
		[ "Scavenger Crab"			] = { "スカベンジャークラブ",				1 },
		[ "Skimmer"					] = { "スキマー",							2 },
		[ "Steelshell"				] = { "スチールシェル",						1 },
		[ "Stygian Pugil"			] = { "スティジアンプギル",					1 },

	},

	-- ダンジョン

	-- ロ・メーヴ
	[ 122 ] = {
		[ "Apocalyptic Weapon"		] = { "アポカリプティックウェポン",			3 },
		[ "Cursed Puppet"			] = { "カースドパペット",					4 },
		[ "Darksteel Golem"			] = { "ダークスチールゴーレム",				1 },
		[ "Infernal Weapon"			] = { "インファーナルウェポン",				3 },
		[ "Killing Weapon"			] = { "キリングウェポン",					3 },
		[ "Magic Flagon"			] = { "マジックフラゴン",					4 },
		[ "Mythril Golem"			] = { "ミスリルゴーレム",					1 },
		[ "Ominous Weapon"			] = { "オミナスウェポン",					3 },

	},

	-- 龍のねぐら
	[ 154 ] = {
		[ "Bark Tarantula"			] = { "バークタランチュラ",					3 },
		[ "Darter"					] = { "ダーター",							2 },
		[ "Demonic Pugil"			] = { "デモニックプギル",					1 },
		[ "Demonic Rose"			] = { "デモニックローズ",					1 },
	},

	-----------------------------------------------------------
	-- トゥーリア

	-- ジラートの幻影

	-- フィールド

	-- ル・オンの庭
	[ 130 ] = {
		[ "Flamingo"				] = { "フラミンゴ",							0 },
		[ "Groundskeeper"			] = { "グラウンズキーパー",					4 },
		[ "Sprinkler"				] = { "スプリンクラー",						4 },
	},

	-- ダンジョン

	-- ヴェ・ルガノン宮殿
	[ 177 ] = {
		[ "Caretaker"				] = { "ケアテイカー",						1 },
		[ "Detector"				] = { "ディテクター",						1 },
		[ "Dustbuster"				] = { "ダストバスター",						4 },
		[ "Enkidu"					] = { "エンキドゥ",							1 },
		[ "Mystic Weapon"			] = { "ミスティックウェポン",				1 },
		[ "Ornamental Weapon"		] = { "オルナメンタルウェポン",				1 },

	},

	-- ル・アビタウ神殿
	[ 178 ] = {
		[ "Aura Butler"				] = { "オーラバトラー",						4 },
		[ "Aura Gear"				] = { "オーラギア",							1 },
		[ "Aura Pot"				] = { "オーラポット",						4 },
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
		[ "Abraxas"					] = { "アブラクサス",						3 },
		[ "Acrophies"				] = { "アクロフィーズ",						2 },
		[ "Atomic Cluster"			] = { "アトミッククラスター",				1 },
		[ "Bugard"					] = { "ブガード",							1 },
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Cluster"					] = { "クラスター",							1 },
		[ "Crimson Knight Crab"		] = { "クリムゾンナイトクラブ",				0 },
		[ "Death Jacket"			] = { "デスジャケット",						2 },
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
		[ "Fomor's Wyvern"			] = { "フォモルズワイバーン",				0 },
		[ "Gigantobugard"			] = { "ギガントブガード",					1 },
		[ "Gigas Braver"			] = { "ギガースブレイバー",					3 },
		[ "Gigas Catapulter"		] = { "ギガースカタパルター",				3 },
		[ "Gigas Fighter"			] = { "ギガースファイター",					3 },
		[ "Gigas Martialist"		] = { "ギガースマーシャリスト",				3 },
		[ "Gigas Slinger"			] = { "ギガーススリンガー",					3 },
		[ "Gigas Warwolf"			] = { "ギガースウォーウルフ",				3 },
		[ "Gigas Wrestler"			] = { "ギガースレスラー",					3 },
		[ "Gigas's Sheep"			] = { "ギガースズシープ",					0 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Leshachikha"				] = { "レシャチーハ",						2 },
		[ "Leshy"					] = { "レーシィ",							0 },
		[ "Miner Bee"				] = { "マイナービー",						2 },
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
		[ "Atomic Cluster"			] = { "アトミッククラスター",				1 },
		[ "Bigclaw"					] = { "ビッグクロー",						0 },
		[ "Bugard"					] = { "ブガード",							1 },
		[ "Clipper"					] = { "クリッパー",							1 },
		[ "Crimson Knight Crab"		] = { "クリムゾンナイトクラブ",				0 },
		[ "Death Jacket"			] = { "デスジャケット",						2 },
		[ "Diatryma"				] = { "ディアトリマ",						2 },
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
		[ "Fomor's Wyvern"			] = { "フォモルズワイバーン",				0 },
		[ "Gigantobugard"			] = { "ギガントブガード",					1 },
		[ "Gigas Braver"			] = { "ギガースブレイバー",					3 },
		[ "Gigas Catapulter"		] = { "ギガースカタパルター",				3 },
		[ "Gigas Martialist"		] = { "ギガースマーシャリスト",				3 },
		[ "Gigas Warwolf"			] = { "ギガースウォーウルフ",				3 },
		[ "Gigas's Sheep"			] = { "ギガースズシープ",					0 },
		[ "Greater Pugil"			] = { "グレータープギル",					1 },
		[ "Makara"					] = { "マカラ",								1 },
		[ "Mantrap"					] = { "マントラップ",						0 },	-- 釣りは 1
		[ "Miner Bee"				] = { "マイナービー",						2 },
		[ "Orcish Bowshooter"		] = { "オーキシュボウシューター",			3 },
		[ "Orcish Footsoldier"		] = { "オーキシュフットソルジャー",			3 },
		[ "Orcish Gladiator"		] = { "オーキシュグラディエーター",			3 },
		[ "Orcish Stonelauncher"	] = { "オーキシュストーンランチャー",		3 },
		[ "Orcish Trooper"			] = { "オーキシュトルーパー",				3 },
		[ "Overgrown Rose"			] = { "オーバーグロウンローズ",				3 },
		[ "Seaboard Vulture"		] = { "シーボードバルチャー",				0 },
		[ "Tavnazian Sheep"			] = { "タブナジアンシープ",					2 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					2 },
		[ "Wingrats"				] = { "ウィングラッツ",						2 },

	},

	-- ダンジョン

	--フォミュナ水道
	[  27 ] = {
		[ "Addled Tumor"			] = { "アダレッドトゥマー",					1 },
		[ "Aqueduct Spider"			] = { "アクアダクトスパイダー",				0 },
		[ "Big Jaw"					] = { "ビッグジョー",						0 },
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
		[ "Fomor's Wyvern"			] = { "フォモルズワイバーン",				0 },
		[ "Foul Meat"				] = { "ファウルミート",						1 },
		[ "Gloop"					] = { "グループ",							1 },
		[ "Hell Bat"				] = { "ヘルバット",							2 },
		[ "Makara"					] = { "マカラ",								2 },
		[ "Oil Spill"				] = { "オイルスピル",						1 },
		[ "Stegotaur"				] = { "ステゴタウルス",						3 },
		[ "Taurus"					] = { "タウルス",							3 },
		[ "Vampire Bat"				] = { "ヴァンパイアバット",					2 },

	},

	-- 礼拝堂
	[  28 ] = {
		[ "Aqueduct Spider"			] = { "アクアダクトスパイダー",				0 },
		[ "Blubber Eyes"			] = { "ブラバーアイズ",						1 },
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
		[ "Fomor's Wyvern"			] = { "フォモルズワイバーン",				0 },
		[ "Gazer"					] = { "ゲイザー",							1 },
		[ "Greater Gaylas"			] = { "グレーターゲイラス",					2 },
		[ "Lich"					] = { "リッチ",								1 },
		[ "Mummy"					] = { "マミー",								1 },
		[ "Stegotaur"				] = { "ステゴタウルス",						3 },
		[ "Teratotaur"				] = { "テラトタウルス",						3 },
		[ "Utukku"					] = { "ウトゥック",							1 },

	},

	-- リヴェーヌ岩塊群サイトA01
	[  30 ] = {
		[ "Atomic Cluster"			] = { "アトミッククラスター",				1 },
		[ "Cloud Hippogryph"		] = { "クラウドヒポグリフ",					1 },
		[ "Firedrake"				] = { "ファイアドレイク",					1 },
		[ "Flamedrake"				] = { "フレイムドレイク",					1 },
		[ "Hawker"					] = { "ホーカー",							2 },
		[ "Hawkertrap"				] = { "ホーカートラップ",					0 },
		[ "Hippogryph"				] = { "ヒポグリフ",							1 },
		[ "Riverne Vulture"			] = { "リヴェーヌバルチャー",				0 },

	},

	-- リヴェーヌ岩塊群サイトB01
	[  29 ] = {
		[ "Ignidrake"				] = { "イグニドレイク",						1 },
		[ "Lesser Roc"				] = { "レッサーロック",						2 },
		[ "Lunantishee"				] = { "ルナンティシー",						1 },
		[ "Nimbus Hippogryph"		] = { "ニンバスヒポグリフ",					1 },
		[ "Nitro Cluster"			] = { "ニトロクラスター",					1 },
		[ "Pyrodrake"				] = { "パイロドレイク",						1 },
		[ "Strato Hippogryph"		] = { "ストラトヒポグリフ",					1 },
		[ "Ziryu"					] = { "ジリュウ",							1 },

	},

	-----------------------------------------------------------
	-- ムバルポロス

	-- プロマシアの呪縛

	-- フィールド

	-- ダンジョン

	-- ムバルポロス旧市街
	[  11 ] = {
		[ "Ancient Bomb"			] = { "エンシェントボム",					1 },
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
		[ "Memory Receptacle"		] = { "メモリーリセプタクル",				0 },
		[ "Seether"					] = { "シーザー",							1 },
		[ "Stray"					] = { "ストレイ",							1 },
		[ "Thinker"					] = { "シンカー",							1 },
		[ "Wanderer"				] = { "ワンダラー",							1 },
		[ "Weeper"					] = { "ウィーパー",							1 },
	},

	-- プロミヴォン－デム
	[  18 ] = {
		[ "Gorger"					] = { "ゴージャー",							1 },
		[ "Livid Seether"			] = { "リヴィドシーザー",					1 },
		[ "Memory Receptacle"		] = { "メモリーリセプタクル",				0 },
		[ "Seether"					] = { "シーザー",							1 },
		[ "Stray"					] = { "ストレイ",							1 },
		[ "Wanderer"				] = { "ワンダラー",							1 },
		[ "Weeper"					] = { "ウィーパー",							1 },
	},

	-- プロミヴォン－メア
	[  20 ] = {
		[ "Craver"					] = { "クレイバー",							1 },
		[ "Livid Seether"			] = { "リヴィドシーザー",					1 },
		[ "Memory Receptacle"		] = { "メモリーリセプタクル",				0 },
		[ "Seether"					] = { "シーザー",							1 },
		[ "Stray"					] = { "ストレイ",							1 },
		[ "Wanderer"				] = { "ワンダラー",							1 },
		[ "Weeper"					] = { "ウィーパー",							1 },
	},

	-- プロミヴォン－ヴァズ
	[  22 ] = {
		[ "Craver"					] = { "クレイバー",							1 },
		[ "Gorger"					] = { "ゴージャー",							1 },
		[ "Livid Seether"			] = { "リヴィドシーザー",					1 },
		[ "Memory Receptacle"		] = { "メモリーリセプタクル",				0 },
		[ "Seether"					] = { "シーザー",							1 },
		[ "Stray"					] = { "ストレイ",							1 },
		[ "Thinker"					] = { "シンカー",							1 },
		[ "Wanderer"				] = { "ワンダラー",							1 },
		[ "Weeper"					] = { "ウィーパー",							1 },
	},

	-----------------------------------------------------------
	-- ルモリア

	-- プロマシアの呪縛

	-- フィールド

	-- アル・タユ
	[  33 ] = {
		[ "Aern's Elemental"		] = { "アーンズエレマンタル",				0 },
		[ "Aern's Wynav"			] = { "アーンズワイバーン",					0 },
		[ "Aern's Xzomit"			] = { "アーンズゾミト",						0 },
		[ "Om'aern"					] = { "Om'アーン",							2 },
		[ "Om'hpemde"				] = { "Om'ペミデ",							0 },
		[ "Om'phuabo"				] = { "Om'フワボ",							1 },
		[ "Om'xzomit"				] = { "Om'ゾミト",							0 },
		[ "Ul'aern"					] = { "Ul'アーン",							2 },
		[ "Ul'hpemde"				] = { "Ul'ペミデ",							0 },
		[ "Ul'phuabo"				] = { "Ul'フワボ",							1 },
		[ "Ul'xzomit"				] = { "Ul'ゾミト",							2 },

		-- NM
		[ "Aw'euvhi"				] = { "Aw'ユブヒ",							0,	'☆' },
		[ "Om'yovra"				] = { "Om'ヨヴラ",							1,	'☆' },
		[ "Ul'yovra"				] = { "Ul'ヨヴラ",							1,	'☆' },
	},

	-- ダンジョン

	-- フ・ゾイの王宮
	[  34 ] = {
		[ "Aern's Elemental"		] = { "アーンズエレメンタル",				0 },
		[ "Aern's Euvhi"			] = { "アーンズユブヒ",						0 },
		[ "Aern's Wynav"			] = { "アーンズワイバーン",					0 },
		[ "Eo'aern"					] = { "Eo'アーン",							2 },
		[ "Eo'euvhi"				] = { "Eo'ユブヒ",							3 },
		[ "Eo'ghrah"				] = { "Eo'ゴラホ",							1 },
		[ "Eo'zdei"					] = { "Eo'ゼデー",							1 },

	},

	-- ル・メトの園
	[  35 ] = {
		[ "Aern's Elemental"		] = { "アーンズエレメンタル",				0 },
		[ "Aern's Euvhi"			] = { "アーンズユブヒ",						0 },
		[ "Aern's Wynav"			] = { "アーンズワイバーン",					0 },
		[ "Aw'aern"					] = { "Aw'アーン",							2 },
		[ "Aw'euvhi"				] = { "Aw'ユブヒ",							3 },
		[ "Aw'ghrah"				] = { "Aw'ゴラホ",							1 },
		[ "Aw'zdei"					] = { "Aw'ゼデー",							1 },

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

	-- インスタンス

	-- レベロス風穴
	[  63 ] = {
		[ "Volcanic Bomb"			] = { "ボルカニックボム",					1 },
	},

	-----------------------------------------------------------
	-- 航路

	-- オリジナル

	-- フィールド

	-- 機船航路：セルビナ行き
	[ 220 ] = {
		[ "Phantom"					] = { "ファントム",							1 },
		[ "Sea Crab"				] = { "シークラブ",							0 },
		[ "Sea Monk"				] = { "シーモンク",							1 },
		[ "Sea Pugil"				] = { "シープギル",							0 },	-- 釣りは 1

	},

	-- 機船航路：マウラ行き
	[ 221 ] = {
		[ "Phantom"					] = { "ファントム",							1 },
		[ "Sea Crab"				] = { "シークラブ",							0 },
		[ "Sea Monk"				] = { "シーモンク",							1 },
		[ "Sea Pugil"				] = { "シープギル",							0 },	-- 釣りは 1

	},

	-- 機船航路：セルビナ行き(海賊)
	[ 227 ] = {
		[ "Crossbones"				] = { "クロスボーンズ",						1 },
		[ "Phantom"					] = { "ファントム",							1 },
		[ "Sea Crab"				] = { "シークラブ",							0 },
		[ "Sea Monk"				] = { "シーモンク",							1 },
		[ "Sea Pugil"				] = { "シープギル",							0 },	-- 釣りは 1
		[ "Ship Wight"				] = { "シップワイト",						1 },

	},

	-- 機船航路：マウラ行き(海賊)
	[ 228 ] = {
		[ "Crossbones"				] = { "クロスボーンズ",						1 },
		[ "Phantom"					] = { "ファントム",							1 },
		[ "Sea Crab"				] = { "シークラブ",							0 },
		[ "Sea Monk"				] = { "シーモンク",							1 },
		[ "Sea Pugil"				] = { "シープギル",							0 },	-- 釣りは 1
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
	[ "Lii Jixa the Somnolist"	] = { 3, '☆'	},	-- Lv.25
	[ "Quu Xijo the Illusory"	] = { 3, '☆'	},	-- Lv.25
	[ "Yagudo High Priest"		] = { 3, '☆'	},	-- Lv.25

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


