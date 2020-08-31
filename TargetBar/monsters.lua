-- http://ff11db.sakura.ne.jp/database/
-- タイプ 0=ノンアク・1=アク・2=ノンアク&リンク・3=アク&リンク・4=条件アク・5=条件アク&リンク


-- モンスター
local Nms =
{
	-----------------------------------------------------------
	-- ノーマルモンスター

	-- アーリマン族
	[ "Ahriman"					] = { 3 },
	[ "Bat Eye"					] = { 1 },		-- Fix
	[ "Deadly Iris"				] = { 3 },
	[ "Evil Eye"				] = { { [   0 ] = 3, [ 112 ] = 1 } },	-- Fix
	[ "Fachan"					] = { 1 },
	[ "Floating Eye"			] = { 1 },
	[ "Hovering Oculus"			] = { 1 },
	[ "Morbid Eye"				] = { 3 },
	[ "Smolenkos"				] = { 1 },

	-- アーン族

	-- アダマンタス族

	-- アプカル族

	-- アルテマ族

	-- アンティカ族

	-- アントリオン族
	[ "Burrow Antlion"			] = { 1 },
	[ "Cave Antlion"			] = { 1 },
	[ "Hunter Antlion"			] = { 1 },
	[ "Pit Antlion"				] = { 1 },
	[ "Tracer Antlion"			] = { 2 },
	[ "Tracker Antlion"			] = { 2 },
	[ "Trench Antlion"			] = { 1 },

	-- イビルウェポン族
	[ "Boggart"					] = { 1 },
	[ "Cursed Weapon"			] = { 1 },	-- Fix
	[ "Dancing Weapon"			] = { 1 },
	[ "Demonic Weapon"			] = { 1 },	-- Fix
	[ "Evil Weapon"				] = { 1 },
	[ "Hellish Weapon"			] = { 1 },
	[ "Killing Weapon"			] = { 1 },
	[ "Over Weapon"				] = { 1 },
	[ "Poltergeist"				] = { 1 },
	[ "Vault Weapon"			] = { 1 },

	-- インプ族

	-- ウィーバー族

	-- ウィヴル族

	-- ウィルム族

	-- ウサギ族
	[ "Blood Bunny"				] = { 2 },
	[ "Bog Bunny"				] = { 2 },
	[ "Canyon Rarab"			] = { 2 },
	[ "Forest Hare"				] = { 0 },
	[ "Goblin's Rarab"			] = { 0 },
	[ "Hoarder Hare"			] = { 2 },
	[ "Island Rarab"			] = { 2 },
	[ "Mighty Rarab"			] = { 2 },
	[ "Pit Hare"				] = { 2 },
	[ "Polar Hare"				] = { 0 },
	[ "Rabit Rat"				] = { 2 },
	[ "Sand Hare"				] = { 2 },
	[ "Savanna Rarab"			] = { 0 },
	[ "Steppe Hare"				] = { 2 },
	[ "Tropical Rarab"			] = { 2 },
	[ "Variable Hare"			] = { 0 },
	[ "Vorpal Bunny"			] = { 2 },
	[ "Wadi Hare"				] = { 2 },
	[ "Wild Rabbit"				] = { 0 },

	-- ウラグナイト族
	[ "Coralline Uragnite"		] = { 0 },
	[ "Uragnite"				] = { 0 },

	-- エフト族
	[ "Eft"						] = { 2 },
	[ "Tartarus Eft"			] = { 2 },

	-- エレメンタル族
	[ "Air Elemental"			] = { 4 },
	[ "Dark Elemental"			] = { 4 },
	[ "Demon's Elemental"		] = { 0 },
	[ "Earth Elemental"			] = { 4 },
	[ "Fire Elemental"			] = { 4 },
	[ "Ice Elemental"			] = { 4 },
	[ "Light Elemental"			] = { 4 },
	[ "Thunder Elemental"		] = { 4 },
	[ "Tonberry's Elemental"	] = { 0 },
	[ "Water Elemental"			] = { 4 },
	[ "Yagudo's Elemental"		] = { 0 },

	-- オーク族
	[ "Orcish Beastrider"		] = { 3 },
	[ "Orcish Bowshooter"		] = { 3 },
	[ "Orcish Brawler"			] = { 3 },
	[ "Orcish Champion"			] = { 3 },
	[ "Orcish Cursemaker"		] = { 3 },
	[ "Orcish Dragoon"			] = { 3 },
	[ "Orcish Dreadnought"		] = { 3 },
	[ "Orcish Farkiller"		] = { 3 },
	[ "Orcish Fighter"			] = { 3 },
	[ "Orcish Fodder"			] = { 3 },
	[ "Orcish Footsoldier"		] = { 3 },
	[ "Orcish Gladiator"		] = { 3 },
	[ "Orcish Grappler"			] = { 3 },
	[ "Orcish Grunt"			] = { 3 },
	[ "Orcish Impaler"			] = { 3 },
	[ "Orcish Mesmerizer"		] = { 3 },
	[ "Orcish Neckchopper"		] = { 3 },
	[ "Orcish Nightraider"		] = { 3 },
	[ "Orcish Predator"			] = { 3 },
	[ "Orcish Protector"		] = { 3 },
	[ "Orcish Serjeant"			] = { 3 },
	[ "Orcish Stonechucker"		] = { 3 },
	[ "Orcish Trooper"			] = { 3 },
	[ "Orcish Veteran"			] = { 3 },
	[ "Orcish Warchief"			] = { 3 },
	[ "Orcish Zerker"			] = { 3 },

	-- オークの戦闘機械
	[ "Orcish Firebelcher"		] = { 3 },
	[ "Orcish Flamethrower"		] = { 3 },
	[ "Orcish Stonelauncher"	] = { 3 },

	-- 大羊族
	[ "Broo"					] = { 3 },
	[ "Brutal Sheep"			] = { 2 },
	[ "Charging Sheep"			] = { 2 },
	[ "Mad Sheep"				] = { 2 },
	[ "Ornery Sheep"			] = { 2 },
	[ "Wild Sheep"				] = { 2 },

	-- カラクール・大羊族

	-- 大羊族(雄羊)
	[ "Battering Ram"			] = { 1 },
	[ "Tremor Ram"				] = { 1 },

	-- オポオポ族
	[ "Coastal Opo-opo"			] = { 2 },

	-- オメガ族

	-- オロボン族

	-- カーディアン族
	[ "Eight of Batons"			] = { 3 },
	[ "Eight of Coins"			] = { 3 },
	[ "Eight of Cups"			] = { 3 },
	[ "Eight of Swords"			] = { 3 },
	[ "Five of Batons"			] = { 3 },
	[ "Five of Coins"			] = { 3 },
	[ "Five of Cups"			] = { 3 },
	[ "Five of Swords"			] = { 3 },
	[ "Four of Batons"			] = { 3 },
	[ "Four of Coins"			] = { 3 },
	[ "Four of Cups"			] = { 3 },
	[ "Four of Swords"			] = { 3 },
	[ "Nine of Batons"			] = { 3 },
	[ "Nine of Coins"			] = { 3 },
	[ "Nine of Cups"			] = { 3 },
	[ "Nine of Swords"			] = { 3 },
	[ "Seven of Batons"			] = { 3 },
	[ "Seven of Coins"			] = { 3 },
	[ "Seven of Cups"			] = { 3 },
	[ "Seven of Swords"			] = { 3 },
	[ "Six of Batons"			] = { 3 },
	[ "Six of Coins"			] = { 3 },
	[ "Six of Cups"				] = { 3 },
	[ "Six of Swords"			] = { 3 },
	[ "Ten of Batons"			] = { 3 },
	[ "Ten of Coins"			] = { 3 },
	[ "Ten of Cups"				] = { 3 },
	[ "Ten of Swords"			] = { 3 },
	[ "Three of Batons"			] = { 3 },
	[ "Three of Coins"			] = { 3 },
	[ "Three of Cups"			] = { 3 },
	[ "Three of Swords"			] = { 3 },
	[ "Two of Batons"			] = { 3 },
	[ "Two of Coins"			] = { 3 },
	[ "Two of Cups"				] = { 3 },
	[ "Two of Swords"			] = { 3 },

	-- キキルン族

	-- キノコ族
	[ "Cave Funguar"			] = { 2 },
	[ "Exoray"					] = { 3 },
	[ "Fly Agaric"				] = { 2 },
	[ "Forest Funguar"			] = { 2 },
	[ "Grass Funguar"			] = { 0 },
	[ "Jugner Funguar"			] = { 2 },
	[ "Killer Mushroom"			] = { 2 },
	[ "Marsh Funguar"			] = { 2 },
	[ "Myconid"					] = { 3 },
	[ "Poison Funguar"			] = { 1 },
	[ "Shrieker"				] = { 1 },
	[ "Toadstool"				] = { 2 },

	-- キマイラ族

	-- 巨人族
	[ "Blizzard Gigas"			] = { 3 },
	[ "Frost Gigas"				] = { 3 },
	[ "Giant Ascetic"			] = { 3 },
	[ "Giant Hunter"			] = { 3 },
	[ "Giant Ranger"			] = { 3 },
	[ "Giant Trapper"			] = { 3 },
	[ "Gigas Foreman"			] = { 3 },
	[ "Gigas Stonecarrier"		] = { 3 },
	[ "Gigas Stonegrinder"		] = { 3 },
	[ "Gigas Stonemason"		] = { 3 },
	[ "Graupel Gigas"			] = { 3 },
	[ "Hail Gigas"				] = { 3 },
	[ "Rime Gigas"				] = { 3 },
	[ "Sleet Gigas"				] = { 3 },
	[ "Snow Gigas"				] = { 3 },

	-- クァール族
	[ "Attohwa Coeurl"			] = { 1 },
	[ "Coeurl"					] = { 1 },
	[ "Champaign Coeurl"		] = { 1 },
	[ "Master Coeurl"			] = { 1 },		-- Fix
	[ "Torama"					] = { 1 },

	-- グゥーブー族
	[ "Goobbue"					] = { 1 },
	[ "Goobbue Farmer"			] = { 1 },

	-- クゥダフ族
	[ "Ancient Quadav"			] = { 3 },
	[ "Amber Quadav"			] = { 3 },
	[ "Amethyst Quadav"			] = { 3 },
	[ "Brass Quadav"			] = { 3 },
	[ "Bronze Quadav"			] = { 3 },
	[ "Copper Quadav"			] = { 3 },
	[ "Darksteel Quadav"		] = { 3 },
	[ "Elder Quadav"			] = { 3 },
	[ "Emerald Quadav"			] = { 3 },
	[ "Garnet Quadav"			] = { 3 },
	[ "Gold Quadav"				] = { 3 },
	[ "Greater Quadav"			] = { 3 },
	[ "Iron Quadav"				] = { 3 },
	[ "Mythril Quadav"			] = { 3 },
	[ "Old Quadav"				] = { 3 },
	[ "Onyx Quadav"				] = { 3 },
	[ "Platinum Quadav"			] = { 3 },
	[ "Sapphire Quadav"			] = { 3 },
	[ "Silver Quadav"			] = { 3 },
	[ "Spinel Quadav"			] = { 3 },
	[ "Steel Quadav"			] = { 3 },
	[ "Topaz Quadav"			] = { 3 },
	[ "Veteran Quadav"			] = { 3 },
	[ "Young Quadav"			] = { 3 },
	[ "Zircon Quadav"			] = { 3 },

	-- クトゥルブ族

	-- クラブ族
	[ "Bigclaw"					] = { 1 },
	[ "Clipper"					] = { { [   0 ] = 0, [   2 ] = 1, [  24 ] = 1, [  25 ] = 1, [  81 ] = 1, [  84 ] = 0, [  91 ] = 0, [ 105 ] = 0, [ 110 ] = 0, [ 118 ] = 1, [ 121 ] = 1, [ 124 ] = 1, [ 126 ] = 0, [ 173 ] = 0, [ 193 ] = 2 } },
	[ "Cutter"					] = { 1 },
	[ "Knight Crab"				] = { 3 },
	[ "Land Crab"				] = { 0 },
	[ "River Crab"				] = { 0 },
	[ "Scavenger Crab"			] = { 1 },
	[ "Sea Crab"				] = { 0 },
	[ "Snipper"					] = { { [   0 ] = 0, [ 103 ] = 0, [ 104 ] = 0, [ 109 ] = 0, [ 118 ] = 0, [ 193 ] = 2 } },
	[ "Thickshell"				] = { 1 },	-- エリアによって異なる(ファノエ運河=0・ラテーヌ高原=1)
	[ "Wadi Crab"				] = { 0 },

	-- クレイヴァー族

	-- クロウラー族
	[ "Berry Grub"				] = { 2 },
	[ "Carnivorous Crawler"		] = { 2 },
	[ "Caterchipillar"			] = { 3 },
	[ "Canyon Crawler"			] = { 2 },
	[ "Caterpillar"				] = { 2 },
	[ "Crawler"					] = { 0 },
	[ "Knight Crawler"			] = { 3 },
	[ "Larva"					] = { 3 },
	[ "Meat Maggot"				] = { 3 },
	[ "Rumble Crawler"			] = { 3 },
	[ "Soldier Crawler"			] = { 3 },
	[ "Worker Crawler"			] = { 2 },

	-- エルカ・クロウラー族

	-- ケルベロス族

	-- 剣虎族
	[ "Gigas's Tiger"			] = { 0 },
	[ "Goblin's Tiger"			] = { 0 },
	[ "Forest Tiger"			] = { 1 },
	[ "Pld Sabertooth"			] = { 3 },
	[ "Sabertooth Tiger"		] = { 1 },
	[ "Tundra Tiger"			] = { 1 },		-- Fix
	[ "Uleguerand Tiger"		] = { 3 },

	-- 甲虫族
	[ "Armet Beetle"			] = { 3 },
	[ "Beady Beetle"			] = { 2 },
	[ "Blazer Beetle"			] = { 3 },
	[ "Borer Beetle"			] = { 1 },
	[ "Chamber Beetle"			] = { 3 },
	[ "Copper Beetle"			] = { 2 },
	[ "Deathwatch Beetle"		] = { 2 },
	[ "Diving Beetle"			] = { 2 },
	[ "Dung Beetle"				] = { 2 },
	[ "Goblin's Beetle"			] = { 0 },
	[ "Goliath Beetle"			] = { 3 },
	[ "Helm Beetle"				] = { 3 },
	[ "Nest Beetle"				] = { 2 },
	[ "Scarab Beetle"			] = { 2 },
	[ "Stag Beetle"				] = { 2 },
	[ "Starmite"				] = { 3 },

	-- コウモリ族(1匹)
	[ "Acro Bat"				] = { 0 },
	[ "Ancient Bat"				] = { { [   0 ] = 3, [ 126 ] = 1, [ 184 ] = 1 } },
	[ "Battle Bat"				] = { 3 },
	[ "Bilesucker"				] = { 2 },
	[ "Black Bat"				] = { 1 },
	[ "Blade Bat"				] = { { [  0 ] = 1, [ 192 ] = 2 } },		-- Fix
	[ "Bulwark Bat"				] = { 1 },
	[ "Camazotz"				] = { 3 },
	[ "Cheiroptera"				] = { 1 },
	[ "Combat"					] = { 2 },
	[ "Dire Bat"				] = { 3 },
	[ "Esbat"					] = { 3 },
	[ "Fledermaus"				] = { 0 },
	[ "Giant Bat"				] = { 1 },
	[ "Glow Bat"				] = { 2 },
	[ "Goblin's Bat"			] = { 0 },
	[ "Grave Bat"				] = { 3 },
	[ "Greater Gayla"			] = { { [   0 ] = 2, [ 127 ] = 1 } },
	[ "Hell Bat"				] = { 3 },
	[ "Hognosed Bat"			] = { 1 },
	[ "Moon Bat"				] = { 2 },
	[ "Mouse Bat"				] = { 0 },
	[ "Poison Bat"				] = { 1 },
	[ "Purgatory Bat"			] = { 1 },
	[ "Specter Bat"				] = { 1 },
	[ "Siege Bat"				] = { 2 },
	[ "Star Bat"				] = { 0 },
	[ "Stealth Bat"				] = { 3 },
	[ "Stirge"					] = { { [   0 ] = 1, [ 166 ] = 3, [  11 ] = 2 } },	-- Fix
	[ "Tomb Bat"				] = { 3 },
	[ "Vampire Bat"				] = { { [   0 ] = 2, [ 204 ] = 1 } },		-- Fix
	[ "Werebat"					] = { 1 },
	[ "Wolf Bat"				] = { 1 },

	-- コウモリ族(3匹)
	[ "Bastion Bats"			] = { 1 },
	[ "Bat Battalion"			] = { 2 },
	[ "Battue Bats"				] = { 2 },
	[ "Bulldog Bats"			] = { 1 },
	[ "Canal Bats"				] = { 3 },
	[ "Citadel Bats"			] = { 1 },
	[ "Ding Bats"				] = { 0 },
	[ "Dark Bats"				] = { 2 },
	[ "Funnel Bats"				] = { 3 },
	[ "Gale Bats"				] = { 0 },
	[ "Goblin's Bats"			] = { 0 },
	[ "Grotto Bats"				] = { 3 },
	[ "Impish Bats"				] = { 3 },
	[ "Lesser Gaylas"			] = { 3 },	-- Fix
	[ "Midnight Wings"			] = { 2 },
	[ "Night Bats"				] = { 0 },
	[ "Nightmare Bats"			] = { 3 },
	[ "Plague Bats"				] = { 3 },
	[ "Sand Bats"				] = { 1 },
	[ "Seeker Bats"				] = { { [   0 ] = 2, [ 184 ] = 1, [ 193 ] = 3, [ 198 ] = 3 } },
	[ "Spectacled Bats"			] = { 0 },
	[ "Stink Bats"				] = { 2 },
	[ "Succubus Bats"			] = { 3 },
	[ "Troika Bats"				] = { 2 },
	[ "Undead Bats"				] = { { [   0 ] = 2, [ 204 ] = 1 } },		-- Fix
	[ "Underworld Bats"			] = { 3 },
	[ "Wind Bats"				] = { { [   0 ] = 0, [ 190 ] = 2 } },		-- Fix
	[ "Wingrats"				] = { 2 },
	[ "Wood Bats"				] = { 1 },

	-- ゴージャー族

	-- コース族
	[ "Arch Corse"				] = { 1 },
	[ "Corse"					] = { 1 },

	-- ゴースト族
	[ "Banshee"					] = { 1 },
	[ "Bhuta"					] = { 1 },		-- Fix
	[ "Blood Soul"				] = { 1 },
	[ "Bogy"					] = { 1 },
	[ "Crypt Ghost"				] = { 1 },
	[ "Gespenst"				] = { 1 },
	[ "Etemmu"					] = { 1 },		-- Fix
	[ "Evil Spirit"				] = { 1 },
	[ "Haunt"					] = { 1 },
	[ "Lemures"					] = { 1 },
	[ "Lugat"					] = { 1 },
	[ "Phantom"					] = { 1 },
	[ "Phasma"					] = { 1 },
	[ "Revenant"				] = { 1 },		-- Fix
	[ "Spook"					] = { 1 },
	[ "Srei Ap"					] = { 1 },
	[ "Utukku"					] = { 1 },
	[ "Wraith"					] = { 1 },

	-- ブフート・ゴースト族

	-- ゴーレム族
	[ "Colossus"				] = { 1 },
	[ "Ore Golem"				] = { 1 },
	[ "Stone Golem"				] = { 1 },		-- Fix

	-- コカトリス族
	[ "Axe Beak"				] = { 1 },
	[ "Cockatrice"				] = { 1 },
	[ "Tabar Beak"				] = { 1 },

	-- ジズ・コカトリス族

	-- ゴブリン族
	[ "Goblin Alchemist"		] = { 3 },
	[ "Goblin Ambusher"			] = { 3 },
	[ "Goblin Artificer"		] = { 3 },
	[ "Goblin Bandit"			] = { 3 },
	[ "Goblin Bouncer"			] = { 3 },
	[ "Goblin Bounty Hunter"	] = { 3 },
	[ "Goblin Butcher"			] = { 3 },
	[ "Goblin Chaser"			] = { 3 },
	[ "Goblin Digger"			] = { 3 },
	[ "Goblin Enchanter"		] = { 3 },
	[ "Goblin Fisher"			] = { 3 },
	[ "Goblin Furrier"			] = { 3 },
	[ "Goblin Gambler"			] = { 3 },
	[ "Goblin Hoodoo"			] = { 3 },
	[ "Goblin Hunter"			] = { 3 },
	[ "Goblin Jeweler"			] = { 3 },
	[ "Goblin Leecher"			] = { 3 },
	[ "Goblin Mercenary"		] = { 3 },
	[ "Goblin Miner"			] = { 3 },
	[ "Goblin Mugger"			] = { 3 },
	[ "Goblin Pathfinder"		] = { 3 },
	[ "Goblin Poacher"			] = { 3 },
	[ "Goblin Reaper"			] = { 3 },
	[ "Goblin Robber"			] = { 3 },
	[ "Goblin Shaman"			] = { 3 },
	[ "Goblin Shepherd"			] = { 3 },
	[ "Goblin Smithy"			] = { 3 },
	[ "Goblin Tanner"			] = { 3 },
	[ "Goblin Thug"				] = { 3 },
	[ "Goblin Tinkerer"			] = { 3 },
	[ "Goblin Trader"			] = { 3 },
	[ "Goblin Veterinarian"		] = { 3 },
	[ "Goblin Weaver"			] = { 3 },
	[ "Hobgoblin Alastor"		] = { 3 },
	[ "Hobgoblin Angler"		] = { 3 },
	[ "Hobgoblin Animalier"		] = { 3 },
	[ "Hobgoblin Blagger"		] = { 3 },
	[ "Hobgoblin Fascinator"	] = { 3 },
	[ "Hobgoblin Martialist"	] = { 3 },
	[ "Hobgoblin Physician"		] = { 3 },
	[ "Hobgoblin Toreador"		] = { 3 },
	[ "Hobgoblin Venerer"		] = { 3 },

	-- ゴブリン族(バグベア)

	-- ゴブリン族(モブリン)

	-- ゴラホ族

	-- コリブリ族

	-- サソリ族
	[ "Cave Scorpion"			] = { 1 },		-- Fix
	[ "Crawler Hunter"			] = { 3 },
	[ "Cutlass Scorpion"		] = { 1 },
	[ "Doom Scorpion"			] = { 1 },
	[ "Giant Scorpion"			] = { 1 },
	[ "Girtab"					] = { 1 },
	[ "Labyrinth Scorpion"		] = { 1 },
	[ "Maze Scorpion"			] = { 1 },
	[ "Mine Scorpion"			] = { 1 },
	[ "Mushussu"				] = { 1 },
	[ "Scimitar Scorpion"		] = { 1 },
	[ "Tulwar Scorpion"			] = { 1 },

	-- サハギン族

	-- サボテンダー族

	-- シーザー族

	-- 屍犬族
	[ "Bandersnatch"			] = { 1 },
	[ "Barghest"				] = { 1 },
	[ "Black Wolf"				] = { 1 },
	[ "Bog Dog"					] = { 1 },
	[ "Cwn Annwn"				] = { 1 },
	[ "Garm"					] = { 1 },
	[ "Hati"					] = { 1 },
	[ "Hecatomb Hound"			] = { 1 },
	[ "Hell Hound"				] = { 1 },
	[ "Mad Fox"					] = { 1 },
	[ "Marchosias"				] = { 1 },
	[ "Mauthe Doog"				] = { 1 },
	[ "Scavenging Hound"		] = { 1 },
	[ "Tainted Hound"			] = { 1 },
	[ "Tomb Wolf"				] = { 1 },
	[ "Wolf Zombie"				] = { 1 },

	-- 死鳥族
	[ "Akbaba"					] = { 2 },
	[ "Ba"						] = { 2 },
	[ "Carrion Crow"			] = { 0 },
	[ "Jubjub"					] = { 2 },
	[ "Raven"					] = { 2 },
	[ "Screamer"				] = { 2 },
	[ "Toucan"					] = { 0 },
	[ "Tragopan"				] = { 2 },
	[ "Vulture"					] = { 0 },
	[ "Zu"						] = { 2 },

	-- シャドウ族
	[ "Dark Stalker"			] = { 3 },
	[ "Ka"						] = { 3, nil, {  [ 148 ] =   60, [ 562 ] =   60 } },	-- 回避率ダウン
	[ "Shade"					] = { 3 },
	[ "Shadow"					] = { 3 },
	[ "Specter"					] = { 3 },
	[ "Spriggan"				] = { 3 },

	-- シャドウ族(フォモル)

	-- 樹人族
	[ "Walking Tree"			] = { 1 },
	[ "Treant"					] = { 1 },
	[ "Weeping Willow"			] = { 1 },

	-- 樹人族(若木)
	[ "Caveberry"				] = { 2 },
	[ "Cherry Sapling"			] = { 3 },
	[ "Slash Pine"				] = { 2 },
	[ "Sobbing Sapling"			] = { 3 },
	[ "Stalking Sapling"		] = { 0 },
	[ "Strolling Sapling"		] = { 0 },
	[ "Walking Sapling"			] = { 0 },
	[ "Wandering Sapling"		] = { 2 },
	[ "Witch Hazel"				] = { 2 },

	-- シンカー族

	-- スケルトン族
	[ "Crossbones"				] = { 1 },
	[ "Doom Mage"				] = { 1 },
	[ "Doom Soldier"			] = { 1 },
	[ "Enchanted Bones"			] = { 1 },
	[ "Fallen Evacuee"			] = { 1 },
	[ "Fallen Knight"			] = { 1 },
	[ "Fallen Mage"				] = { 1 },
	[ "Fallen Major"			] = { 1 },
	[ "Fallen Officer"			] = { 1 },
	[ "Fallen Soldier"			] = { 1 },
	[ "Fleshcraver"				] = { 1 },
	[ "Ghast"					] = { 1 },
	[ "Ghoul"					] = { 1 },
	[ "Lich"					] = { 1 },
	[ "Lost Soul" 				] = { 1, nil, { [  30 ] = 3600 } },					-- 呪詛		-- Fix
	[ "Magicked Bones"			] = { 1 },
	[ "Mindcraver"				] = { 1 },
	[ "Mummy"					] = { 1 },
	[ "Nachzehrer"				] = { 1 },
	[ "Ship Wight"				] = { 1 },
	[ "Skeleton Warrior"		] = { 1 },
	[ "Skeleton Sorcerer"		] = { 1 },
	[ "Spartoi Sorcerer"		] = { 1 },
	[ "Spartoi Warrior"			] = { 1 },
	[ "Tomb Mage"				] = { 1 },
	[ "Tomb Warrior"			] = { 1 },
	[ "Wendigo"					] = { 1 },
	[ "Wight"					] = { 1 },
	[ "Zombie"					] = { 1 },


	-- ドラウガー・スケルトン族

	-- スノール族
	[ "Agloolik"				] = { 1 },
	[ "Akselloak"				] = { 1 },
	[ "Avalanche"				] = { 1 },
	[ "Morozko"					] = { 1 },
	[ "Snoll"					] = { 1 },
	[ "Snowball"				] = { 1 },

	-- スパイダー族
	[ "Goblin's Spider"			] = { 0 },
	[ "Huge Spider"				] = { 2 },

	-- スフィアロイド族

	-- スライム族
	[ "Acid Grease"				] = { 1 },
	[ "Black Slime"				] = { 1 },
	[ "Blob"					] = { 1 },
	[ "Clot"					] = { 1 },
	[ "Davoi Mush"				] = { 1 },
	[ "Dark Aspic"				] = { 1 },
	[ "Giant Amoeba"			] = { 1 },
	[ "Gloop"					] = { 1 },
	[ "Goblin Gruel"			] = { 1 },
	[ "Hinge Oil"				] = { 1 },
	[ "Jelly"					] = { 1 },
	[ "Mousse"					] = { 1 },
	[ "Oil Slick"				] = { 1 },
	[ "Oil Spill"				] = { 1 },
	[ "Ooze"					] = { 1 },		-- Fix
	[ "Protozoan"				] = { 1 },
	[ "Rancid Ooze"				] = { 1 },
	[ "Rotten Jam"				] = { 1 },
	[ "Stroper Chyme"			] = { 1 },
	[ "Viscous Clot"			] = { 1 },

	-- ゼデー族

	-- ソウルフレア族

	-- ゾミト族

	-- ダイアマイト族
	[ "Diremite"				] = { 0 },
	[ "Diremite Assaulter"		] = { 1 },
	[ "Diremite Dominator"		] = { 1 },
	[ "Diremite Stalker"		] = { 0 },

	-- タウルス族
	[ "Brontotaur"				] = { 3 },
	[ "Molech"					] = { 3 },
	[ "Tyrannotaur"				] = { 3 },

	-- ダルメル族
	[ "Bull Dhalmel"			] = { 2 },
	[ "Catoblepas"				] = { 2 },
	[ "Marine Dhalmel"			] = { 2 },
	[ "Wild Dhalmel"			] = { 2 },

	-- チゴー族

	-- デーモン族
	[ "Abyssal Demon"			] = { 3 },
	[ "Arch Demon"				] = { 3 },
	[ "Blood Demon"				] = { 3 },
	[ "Demon Chancellor"		] = { 3 },
	[ "Demon Commander"			] = { 3 },
	[ "Demon General"			] = { 3 },
	[ "Demon Knight"			] = { 3 },		-- Fix
	[ "Demon Magistrate"		] = { 3 },
	[ "Demon Pawn"				] = { 3 },		-- Fix
	[ "Demon Warlock"			] = { 3 },
	[ "Demon Wizard"			] = { 3 },		-- Fix
	[ "Doom Demon"				] = { 3 },
	[ "Dread Demon"				] = { 3 },
	[ "Gore Demon"				] = { 3 },
	[ "Judicator Demon"			] = { 3 },
	[ "Kindred Black Mage"		] = { 3 },
	[ "Kindred Dark Knight"		] = { 3 },
	[ "Kindred Summoner"		] = { 3 },
	[ "Kindred Warrior"			] = { 3 },
	[ "Stygian Demon"			] = { 3 },

	-- ドゥーム族
	[ "Fetid Flesh"				] = { 1 },
	[ "Foul Meat"				] = { 1 },
	[ "Rotten Sod"				] = { 1 },
	[ "Tainted Flesh"			] = { 1 },

	-- 頭足族
	[ "Colossal Calamari"		] = { 1 },
	[ "Flying Manta"			] = { 1 },
	[ "Kraken"					] = { 1 },
	[ "Sea Monk"				] = { 1 },

	-- ドール族
	[ "Drone"					] = { 4 },		-- Fix
	[ "Gargoyle"				] = { 4 },
	[ "Living Statue"			] = { 4 },
	[ "Talos"					] = { 4 },

	-- トカゲ族
	[ "Bane Lizard"				] = { 2 },
	[ "Chasm Lizard"			] = { 2 },
	[ "Frost Lizard"			] = { 2 },
	[ "Geezard"					] = { 3 },
	[ "Hill Lizard"				] = { 2 },
	[ "Labyrinth Lizard"		] = { 3 },
	[ "Maze Lizard"				] = { 2 },
	[ "Mist Lizard"				] = { 2 },
	[ "Riding Lizard"			] = { 2 },
	[ "Rock Lizard"				] = { 2 },
	[ "Sand Lizard"				] = { 2 },
	[ "Sentry Lizard"			] = { 2 },
	[ "Snow Lizard"				] = { 2 },
	[ "War Lizard"				] = { 2 },
	[ "Watch Lizard"			] = { 2 },

	-- ドラゴン族
	[ "Shadow Dragon"			] = { 1 },

	-- ダハク・ドラゴン族

	-- トロール族

	-- トンベリ族
	[ "Cyptonberry Cutter"		] = { 3 },
	[ "Cyptonberry Harrier"		] = { 3 },
	[ "Cyptonberry Plaguer"		] = { 3 },
	[ "Cyptonberry Stalker"		] = { 3 },

	-- ハイドラ族

	-- 蜂族
	[ "Bumblebee"				] = { 0 },
	[ "Davoi Hornet"			] = { 2 },
	[ "Davoi Wasp"				] = { 3 },
	[ "Death Jacket"			] = { 2 },
	[ "Death Wasp"				] = { 2 },
	[ "Digger Wasp"				] = { 3 },
	[ "Giant Bee"				] = { 0 },
	[ "Giddeus Bee"				] = { 0 },
	[ "Goblin's Bee"			] = { 0 },
	[ "Huge Hornet"				] = { 0 },
	[ "Huge Wasp"				] = { 0 },
	[ "Killer Bee"				] = { 0 },
	[ "Maneating Hornet"		] = { 0 },
	[ "Soul Stinger"			] = { 3 },
	[ "Spider Wasp"				] = { 2 },
	[ "Water Wasp"				] = { 2 },
	[ "Wespe"					] = { 3 },

	-- バッファロー族
	[ "Buffalo"					] = { 1 },
	[ "Giant Buffalo"			] = { 1 },
	[ "King Buffalo"			] = { 1 },

	-- ヒッポグリフ族

	-- プーク族

	-- ブガード族

	-- プギル族
	[ "Beach Pugil"				] = { 0 },
	[ "Big Jaw"					] = { 1 },
	[ "Canal Pugil"				] = { 1 },
	[ "Davoi Pugil"				] = { 1 },
	[ "Fatty Pugil"				] = { 0 },
	[ "Fosse Pugil"				] = { 0 },
	[ "Ghelsba Pugil"			] = { 1 },
	[ "Giant Pugil"				] = { 1 },		-- エリアによって異なる(ファノエ運河=0・ギデアス=1)
	[ "Giddeus Pugil"			] = { 1 },
	[ "Greater Pugil"			] = { { [   0 ] = 1, [ 126 ] = 2, [ 149 ] = 0 } },
	[ "Jagil"					] = { 0 },
	[ "Land Pugil"				] = { { [   0 ] = 0, [   0 ] = 0, [  82 ] = 2, [  84 ] = 1, [ 104 ] = 0, [ 105 ] = 1, [ 109 ] = 0, [ 141 ] = 1, [ 145 ] = 1, [ 147 ] = 1 } },
	[ "Makara"					] = { 1 },
	[ "Pugil"					] = { 0 },
	[ "Pug Pugil"				] = { 0 },
	[ "Sand Pugil"				] = { 1 },
	[ "Sea Pugil"				] = { 0 },
	[ "Shoal Pugil"				] = { 0 },
	[ "Spinous Pugil"			] = { 0 },
	[ "Stygian Pugil"			] = { 1 },

	-- フライ族
	[ "Crane Fly"				] = { 2 },
	[ "Damselfly"				] = { 2 },
	[ "Dragonfly"				] = { 3 },
	[ "Gadfly"					] = { 2 },
	[ "Gallinipper"				] = { 2 },
	[ "Goblin's Dragonfly"		] = { 0 },
	[ "Goblin's Gallinipper"	] = { 0 },
	[ "Goblin's Ogrefly"		] = { 0 },
	[ "Hornfly"					] = { 2 },
	[ "Madfly"					] = { 0 },
	[ "May Fly"					] = { 2 },
	[ "Monarch Ogrefly"			] = { 2 },
	[ "Ogrefly"					] = { 2 },
	[ "Sadfly"					] = { 2 },

	-- フライトラップ族
	[ "Battrap"					] = { 0 },
	[ "Birdtrap"				] = { 0 },
	[ "Flytrap"					] = { 0 },

	-- フラン族

	-- フワボ族

	-- ヘクトアイズ族
	[ "Blubber Eyes"			] = { 1 },
	[ "Gazer"					] = { 1 },
	[ "Hecteyes"				] = { 1 },
	[ "Million Eyes"			] = { 1 },
	[ "Mindgazer"				] = { 1 },
	[ "Taisai"					] = { 1 },
	[ "Thousand Eyes"			] = { 1 },

	-- ベヒーモス族

	-- ペミデ族

	-- ボム族
	[ "Azer"					] = { 1 },
	[ "Balloon"					] = { 1 },
	[ "Bifrons"					] = { 1 },
	[ "Bomb"					] = { 1 },
	[ "Explosure"				] = { 1 },
	[ "Feu Follet"				] = { 1 },
	[ "Fox Fire"				] = { 1 },
	[ "Glide Bomb"				] = { 1 },
	[ "Grenade"					] = { 1 },
	[ "Hellmine"				] = { 1 },
	[ "Ignis Fatuus"			] = { 1 },
	[ "Napalm"					] = { 1 },
	[ "Puroboros"				] = { 1 },
	[ "Shrapnel"				] = { 1 },
	[ "Spunkie"					] = { 1 },
	[ "Teine Sith"				] = { 1 },
	[ "Will-o'-the-Wisp"		] = { 1 },

	-- ボム族(クラスター)

	-- ポロッゴ族

	-- マーリド族

	-- マジックポット族
	[ "Clockwork Pod"			] = { 4 },
	[ "Demonic Millstone"		] = { 4 },
	[ "Droma"					] = { 4 },
	[ "Magic Jug"				] = { 4 },
	[ "Magic Millstone"			] = { 4 },
	[ "Maledict Millstone"		] = { 4 },

	-- マムージャ族

	-- マメット族

	-- マンティコア族
	[ "Labyrinth Manticore"		] = { 1 },

	-- マンドラゴラ族
	[ "Alraune"					] = { 2 },
	[ "Mandragora"				] = { 0 },
	[ "Pygmaioi"				] = { 0 },
	[ "Sylvestre"				] = { 0 },
	[ "Tiny Mandragora"			] = { 0 },

	-- ミミック族
	[ "Archaic Chest"			] = { 1 },
	[ "Treasure Chest"			] = { 1 },

	-- メロー族

	-- モルボル族
	[ "Anemone"					] = { 1 },
	[ "Malboro"					] = { 1 },
	[ "Morbol"					] = { 1 },
	[ "Ochu"					] = { 1 },
	[ "Stroper"					] = { 1 },

	-- アムルタート・モルボル族

	-- ヤグード族
	[ "Yagudo Acolyte"			] = { 3 },
	[ "Yagudo Abbot"			] = { 3 },
	[ "Yagudo Assassin"			] = { 3 },
	[ "Yagudo Chanter"			] = { 3 },
	[ "Yagudo Conductor"		] = { 3 },
	[ "Yagudo Conquistador"		] = { 3 },
	[ "Yagudo Drummer"			] = { 3 },
	[ "Yagudo Flagellant"		] = { 3 },
	[ "Yagudo Herald"			] = { 3 },
	[ "Yagudo Initiate"			] = { 3 },
	[ "Yagudo Inquisitor"		] = { 3 },
	[ "Yagudo Interrogator"		] = { 3 },
	[ "Yagudo Lutenist"			] = { 3 },
	[ "Yagudo Mendicant"		] = { 3 },
	[ "Yagudo Persecutor"		] = { 3 },
	[ "Yagudo Oracle"			] = { 3 },
	[ "Yagudo Piper"			] = { 3 },
	[ "Yagudo Prelate"			] = { 3 },
	[ "Yagudo Priest"			] = { 3 },
	[ "Yagudo Prior"			] = { 3 },
	[ "Yagudo Scribe"			] = { 3 },
	[ "Yagudo Sentinel"			] = { 3 },
	[ "Yagudo Theologist"		] = { 3 },
	[ "Yagudo Votary"			] = { 3 },
	[ "Yagudo Zealot"			] = { 3 },

	-- ユブヒ族

	-- ヨヴラ族

	-- ラプトル族
	[ "Raptor"					] = { 3 },
	[ "Nival Raptor"			] = { 1 },
	[ "Sauromugue Skink"		] = { 1 },

	-- ラミア族

	-- リーチ族
	[ "Acrophies"				] = { 2 },
	[ "Bleeder Leech"			] = { 2 },
	[ "Bloodsucker"				] = { 3 },
	[ "Bouncing Ball"			] = { 3 },
	[ "Forest Leech"			] = { 2 },
	[ "Gigas's Leech"			] = { 0 },
	[ "Goblin's Leech"			] = { 0 },
	[ "Labyrinth Leech"			] = { 2 },
	[ "Leech"					] = { 2 },
	[ "Poison Leech"			] = { 2 },
	[ "Stickpin"				] = { 2 },
	[ "Thread Leech"			] = { 2 },
	[ "Yagudo Parasite"			] = { 3 },
	[ "Wadi Leech"				] = { 2 },

	-- ロック族

	-- ワーム族
	[ "Abyss Worm"				] = { 3 },
	[ "Amphisbaena"				] = { 3 },
	[ "Carrion Worm"			] = { 0 },
	[ "Dirt Eater"				] = { 1 },
	[ "Earth Eater"				] = { 3 },
	[ "Flesh Eater"				] = { 2 },
	[ "Giant Grub"				] = { 1 },
	[ "Glacier Eater"			] = { 2 },
	[ "Land Worm"				] = { 2 },
	[ "Maze Maker"				] = { 2 },
	[ "Mountain Worm"			] = { 2 },
	[ "Ore Eater"				] = { 2 },
	[ "Rock Eater"				] = { 2 },
	[ "Rockmill"				] = { 0 },
	[ "Stone Eater"				] = { 0 },
	[ "Tomb Worm"				] = { 0 },
	[ "Tunnel Worm"				] = { 0 },


	-- ワイバーン族
	[ "Wyvern"					] = { 1 },

	-- ワモーラ族(成虫)

	-- ワモーラ族(幼虫)

	-- ワンダラー族

	-------------------------------------------------------------------------------------------
	-- ノートリアスモンスター


	-- アーリマン族
	[ "Shadow Eye"				] = { 1, '★'	},	-- Lv.49

	-- アーン族

	-- アダマンタス族

	-- アプカル族

	-- アルテマ族

	-- アンティカ族

	-- アントリオン族

	-- イビルウェポン族
	[ "Juggler Hecatomb"		] = { 1, '★'	},	-- Lv.47
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
	[ "Old Two-Wings"			] = { 3, '★'	},	-- Lv.52

	-- コウモリ族(3匹)

	-- ゴージャー族

	-- コース族

	-- ゴースト族
	[ "Sluagh"					] = { 1, '★'	},	-- Lv.78

	-- ブフート・ゴースト族

	-- ゴーレム族

	-- コカトリス族
	[ "Skewer Sam"				] = { 1, '★'	},	-- Lv.54

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
	[ "Doppelganger Dio"		] = { 1, '★'	},		-- Lv.23

	-- シャドウ族(フォモル)

	-- 樹人族
	[ "Fraelissa"				] = { 1, '★'	},

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
	[ "Frogamander"					] = { 1, '★' },		-- Lv.72

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
	[ "Qoofim"						] = { 2, '★' },		-- lv.47

	-- フライ族

	-- フライトラップ族

	-- フラン族
	[ "Botulus Rex"					] = { 1, '★' },		-- lv.95

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
	[ "Toxic Tamlyn"				] = { 1, '★'	},	-- Lv.45

	-- アムルタート・モルボル族

	-- ヤグード族
	[ "Eyy Mon the Ironbreaker"		] = { 3, '☆'	},	-- Lv.16
	[ "Lii Jixa the Somnolist"		] = { 3, '☆'	},	-- Lv.25
	[ "Quu Xijo the Illusory"		] = { 3, '★'	},	-- Lv.25
	[ "Yagudo High Priest"			] = { 3, '★'	},	-- Lv.25
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


