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
		Y = 0.16,
	},
	Pivot = {
		X = 0.5,
		Y = 0.0,
	},
	Offset = {
		X = 0,
		Y = 0,
	},

	Draggable = true,
	
	-----------------------------------

	-- ゲージの画像のファイルパス
	ImagePaths = {
		Frame = 'bg_body.png',
		SideL = 'bg_cap_l.png',
		SideR = 'bg_cap_r.png',
		Gauge = 'fg_body.png',
		Arrow = 'pointer_s.png',
	},

	-- 効果アイコンの画像ファイルパス
	EffectIcons = {
--		[  0 ] = { '000.png'				},	-- 戦闘不能(KO)
		[   1 ] = { '001.png'				},	-- 衰弱(weakness)
		[   2 ] = { '002.png'				},	-- 睡眠(sleep)
		[   3 ] = { '003.png'				},	-- 毒(poison)
		[   4 ] = { '004.png'				},	-- 麻痺(paralysis)
		[   5 ] = { '005.png'				},	-- 暗闇(blindness)
		[   6 ] = { '006.png'				},	-- 静寂(silence)
		[   7 ] = { '007.png'				},	-- 石化(petrification)
		[   8 ] = { '008.png'				},	-- 病気(disease)
		[   9 ] = { '009.png'				},	-- 呪い(curse)
		[  10 ] = { '010.png'				},	-- スタン(stun)
		[  11 ] = { '011.png', '010.png'	},	-- バインド(bind)
		[  12 ] = { '012.png'				},	-- ヘビィ(weight)
		[  13 ] = { '013.png'				},	-- スロウ(slow)
		[  14 ] = { '014.png'				},	-- 魅了(charm)
		[  15 ] = { '015.png', '009.png'	},	-- 死の宣告(doom)
		[  16 ] = { '016.png'				},	-- アムネジア(amnesia)
		[  17 ] = { '017.png', '014.png'	},	-- 魅了(charm)
		[  18 ] = { '018.png', '007.png'	},	-- 徐々に石化(gradual petrification)
		[  19 ] = { '019.png', '002.png'	},	-- 睡眠(sleep)
		[  20 ] = { '020.png', '009.png'	},	-- 呪い(curse)
		[  21 ] = { '021.png'				},	-- アドル(addle)

		[  22 ] = { '022.png'				},	-- ひるみ(intimidate)
		[  23 ] = { '023.png'				},	-- メルトン(Kaustra)
		[  24 ] = { '024.png'				},	-- ＳＴ２４(ST24)
		[  25 ] = { '025.png'				},	-- ＳＴ２５(ST25)
		[  26 ] = { '026.png'				},	-- ＳＴ２６(ST26)
		[  27 ] = { '027.png'				},	-- ＳＴ２７(ST27)

		[  28 ] = { '028.png', '010.png'	},	-- テラー(terror)
		[  29 ] = { '029.png', '006.png'	},	-- 沈黙(mute)
		[  30 ] = { '030.png', '009.png'	},	-- 呪詛(bane)
		[  31 ] = { '031.png', '008.png'	},	-- 悪疫(plague)

		[  32 ] = { '032.png'				},	-- とんずら(Flee)
		[  33 ] = { '033.png'				},	-- ヘイスト(Haste)

		[  34 ] = { '034.png'				},	-- ブレイズスパイク(Blaze Spikes)
		[  35 ] = { '035.png'				},	-- アイススパイク(Ice Spikes)
		[  36 ] = { '036.png'				},	-- ブリンク(Blink)
		[  37 ] = { '037.png'				},	-- ストンスキン(Stoneskin)
		[  38 ] = { '038.png'				},	-- ショックスパイク(Shock Spikes)
		[  39 ] = { '039.png'				},	-- アクアベール(Aquaveil)

		[  40 ] = { '040.png'				},	-- プロテス(Protect)
		[  41 ] = { '041.png'				},	-- シェル(Shell)
		[  42 ] = { '042.png'				},	-- リジェネ(Regen)
		[  43 ] = { '043.png'				},	-- リフレシュ(Refresh)

		[  44 ] = { '044.png'				},	-- マイティストライク(Mighty Strikes)
		[  45 ] = { '045.png'				},	-- ためる(Boost)
		[  46 ] = { '046.png', '044.png'	},	-- 百烈拳(Hundred Fists)
		[  47 ] = { '047.png'				},	-- 魔力の泉(Manafont)
		[  48 ] = { '048.png'				},	-- 連続魔(Chainspell)
		[  49 ] = { '049.png', '044.png'	},	-- 絶対回避(Perfect Dodge)
		[  50 ] = { '050.png', '044.png'	},	-- インビンシブル(Invincible)
		[  51 ] = { '051.png', '044.png'	},	-- ブラッドウェポン(Blood Weapon)
		[  52 ] = { '052.png', '044.png'	},	-- ソウルボイス(Soul Voice)
		[  53 ] = { '053.png', '044.png'	},	-- イーグルアイ(Eagle Eye Shot)
		[  54 ] = { '054.png', '044.png'	},	-- 明鏡止水(Meikyo Shisui)
		[  55 ] = { '055.png', '044.png'	},	-- アストラルフロウ(Astral Flow)

		[  56 ] = { '056.png', '045.png'	},	-- バーサク(Berserk)
		[  57 ] = { '057.png'				},	-- ディフェンダー(Defender)
		[  58 ] = { '058.png'				},	-- アグレッサー(Aggressor)
		[  59 ] = { '059.png', '058.png'	},	-- 集中(Focus)
		[  60 ] = { '060.png'				},	-- 回避(Dodge)
		[  61 ] = { '061.png', '045.png'	},	-- かまえる(Counterstance)
		[  62 ] = { '062.png', '057.png'	},	-- センチネル(Sentinel)
		[  63 ] = { '063.png', '045.png'	},	-- 暗黒(Souleater)
		[  64 ] = { '064.png', '045.png'	},	-- ラストリゾート(Last Resort)
		[  65 ] = { '065.png', '045.png'	},	-- 不意打ち(Sneak Attack)
		[  66 ] = { '066.png'				},	-- 分身(Copy Image)
		[  67 ] = { '067.png'				},	-- 心眼(Third Eye)
		[  68 ] = { '068.png', '045.png'	},	-- ウォークライ(Warcry)

		[  69 ] = { '069.png'				},	-- インビジ(Invisible)
		[  70 ] = { '070.png'				},	-- デオード(Deodorize)
		[  71 ] = { '071.png'				},	-- スニーク(Sneak)

		[  72 ] = { '072.png', '058.png'	},	-- 狙い撃ち(Sharpshot)
		[  73 ] = { '073.png', '045.png'	},	-- 乱れ撃ち(Barrage)
		[  74 ] = { '074.png', '057.png'	},	-- ホーリーサークル(Holy Circle)
		[  75 ] = { '075.png', '057.png'	},	-- アルケインサークル(Arcane Circle)
		[  76 ] = { '076.png', '057.png'	},	-- かくれる(Hide)
		[  77 ] = { '077.png', '057.png'	},	-- カモフラージュ(Camouflage)
		[  78 ] = { '078.png', '045.png'	},	-- 女神の印(Divine Seal)
		[  79 ] = { '079.png', '045.png'	},	-- 精霊の印(Elemental Seal)

		[  80 ] = { '080.png'				},	-- STRアップ(STR Boost)
		[  81 ] = { '081.png'				},	-- DEXアップ(DEX Boost)
		[  82 ] = { '082.png'				},	-- VITアップ(VIT Boost)
		[  83 ] = { '083.png'				},	-- AGIアップ(AGI Boost)
		[  84 ] = { '084.png'				},	-- INTアップ(INT Boost)
		[  85 ] = { '085.png'				},	-- MNDアップ(MND Boost)
		[  86 ] = { '086.png'				},	-- CHRアップ(CHR Boost)

		[  87 ] = { '087.png', '045.png'	},	-- だまし討ち(Trick Attack)
		[  88 ] = { '088.png', '042.png'	},	-- HPmaxアップ(Max HP Boost)
		[  89 ] = { '089.png', '043.png'	},	-- MPmaxアップ(Max MP Boost)
		[  90 ] = { '090.png', '058.png'	},	-- 命中率アップ(Accuracy Boost)
		[  91 ] = { '091.png', '045.png'	},	-- 攻撃力アップ(Attack Boost)
		[  92 ] = { '092.png', '060.png'	},	-- 回避率アップ(Evasion Boost)
		[  93 ] = { '093.png', '057.png'	},	-- 防御力アップ(Defense Boost)

		[  94 ] = { '094.png', '045.png'	},	-- エンファイア(Enfire)
		[  95 ] = { '095.png', '045.png'	},	-- エンブリザド(Enblizzard)
		[  96 ] = { '096.png', '045.png'	},	-- エンエアロ(Enaero)
		[  97 ] = { '097.png', '045.png'	},	-- エンストーン(Enstone)
		[  98 ] = { '098.png', '045.png'	},	-- エンサンダー(Enthunder)
		[  99 ] = { '099.png', '045.png'	},	-- エンウォータ(Enwater)

		[ 100 ] = { "100.png", '057.png'	},	-- バファイ(Barfire)
		[ 101 ] = { "101.png", '057.png'	},	-- バブリザ(Barblizzard)
		[ 102 ] = { "102.png", '057.png'	},	-- バエアロ(Baraero)
		[ 103 ] = { "103.png", '057.png'	},	-- バストン(Barstone)
		[ 104 ] = { "104.png", '057.png'	},	-- バサンダ(Barthunder)
		[ 105 ] = { "105.png", '057.png'	},	-- バウォタ(Barwater)

		[ 106 ] = { '106.png', '057.png'	},	-- バスリプル(Barsleep)
		[ 107 ] = { '107.png', '057.png'	},	-- バポイズン(Barpoison)
		[ 108 ] = { '108.png', '057.png'	},	-- バパライズ(Barparalyze)
		[ 109 ] = { '109.png', '057.png'	},	-- バブライン(Barblind)
		[ 110 ] = { '110.png', '057.png'	},	-- バサイレス(Barsilence)
		[ 111 ] = { '111.png', '057.png'	},	-- バブレイク(Barpetrify)
		[ 112 ] = { '112.png', '057.png'	},	-- バウィルス(Barvirus)

		[ 113 ] = { '113.png'				},	-- リレイズ(Reraise)

		[ 114 ] = { '114.png', '057.png'	},	-- かばう(Cover)
		[ 115 ] = { '115.png', '045.png'	},	-- エンドレスショット(Unlimited Shot)

		[ 116 ] = { '116.png', '057.png'	},	-- ファランクス(Phalanx)
		[ 117 ] = { '117.png', '057.png'	},	-- 護摩の守護円(Warding Circle)
		[ 118 ] = { '118.png', '057.png'	},	-- エンシェントサークル(Ancient Circle)

		[ 119 ] = { '119.png', '080.png'	},	-- STRアップ(STR Boost)
		[ 120 ] = { '120.png', '081.png'	},	-- DEXアップ(DEX Boost)
		[ 121 ] = { '121.png', '082.png'	},	-- VITアップ(VIT Boost)
		[ 122 ] = { '122.png', '083.png'	},	-- AGIアップ(AGI Boost)
		[ 123 ] = { '123.png', '084.png'	},	-- INTアップ(INT Boost)
		[ 124 ] = { '124.png', '085.png'	},	-- MNDアップ(MND Boost)
		[ 125 ] = { '125.png', '086.png'	},	-- CHRアップ(CHR Boost)

		[ 126 ] = { '126.png'				},	-- 竜剣(Spirit Surge)

		[ 127 ] = { '127.png'				},	-- コスチューム(Costume)

		[ 128 ] = { '128.png', '023.png'	},	-- バーン(Burn)
		[ 129 ] = { '129.png', '023.png'	},	-- フロスト(Frost)
		[ 130 ] = { '130.png', '023.png'	},	-- チョーク(Choke)
		[ 131 ] = { '131.png', '023.png'	},	-- ラスプ(Rasp)
		[ 132 ] = { '132.png', '023.png'	},	-- ショック(Shock)
		[ 133 ] = { '133.png', '023.png'	},	-- ドラウン(Drown)

		[ 134 ] = { '134.png'				},	-- ディア(Dia)
		[ 135 ] = { '135.png'				},	-- バイオ(Bio)

		[ 136 ] = { '136.png'				},	-- STRダウン(STR Down)
		[ 137 ] = { '137.png'				},	-- DEXダウン(DEX Down)
		[ 138 ] = { '138.png'				},	-- VITダウン(VIT Down)
		[ 139 ] = { '139.png'				},	-- AGIダウン(AGI Down)
		[ 140 ] = { '140.png'				},	-- INTダウン(INT Down)
		[ 141 ] = { '141.png'				},	-- MNDダウン(MND Down)
		[ 142 ] = { '142.png'				},	-- CHRダウン(CHR Down)

		[ 143 ] = { '143.png'				},	-- レベル制限(Level Restriction)

		[ 144 ] = { '144.png', '023.png'	},	-- HPmaxダウン(Max HP Down)
		[ 145 ] = { '145.png'				},	-- MPmaxダウン(Max MP Down)
		[ 146 ] = { '146.png'				},	-- 命中率ダウン(Accuracy Down)
		[ 147 ] = { '147.png', '022.png'	},	-- 攻撃力ダウン(Attack Down)
		[ 148 ] = { '148.png'				},	-- 回避率ダウン(Evasion Down)
		[ 149 ] = { '149.png', '021.png'	},	-- 防御力ダウン(Defense Down)

		[ 150 ] = { '150.png', '057.png'	},	-- 物理バリア(Physical Shield)
		[ 151 ] = { '151.png', '057.png'	},	-- 遠隔物理バリア(Arrow Shield)
		[ 152 ] = { '152.png', '057.png'	},	-- 魔法バリア(Magic Shield)
		[ 153 ] = { '153.png', '034.png'	},	-- ダメージスパイク(Damage Spikes)
		[ 154 ] = { '154.png', '057.png'	},	-- ルビーの輝き(Shining Ruby)
		[ 155 ] = { '155.png'				},	-- 服薬中(medicine)

		[ 156 ] = { '156.png', '005.png'	},	-- フラッシュ(Flash)
		[ 157 ] = { '157.png', '143.png'	},	-- サポートジョブ無効(SJ Restriction)
		[ 158 ] = { '158.png', '022.png'	},	-- 挑発(Provoke)

		[ 159 ] = { '159.png', '155.png'	},	-- ペナルティ(penalty)
		[ 160 ] = { '160.png', '069.png'	},	-- 試合復帰準備中(preparations)
		[ 161 ] = { '161.png', '032.png'	},	-- スプリント(Sprint)
		[ 162 ] = { '162.png'				},	-- エンチャント(enchantment)
		[ 163 ] = { '163.png'				},	-- アジュールロー(Azure Lore)
		[ 164 ] = { '164.png'				},	-- ブルーチェーン(Chain Affinity)
		[ 165 ] = { '165.png'				},	-- ブルーバースト(Burst Affinity)
		[ 166 ] = { '166.png', '044.png'	},	-- オーバードライヴ(Overdrive)

		[ 167 ] = { '167.png', '021.png'	},	-- 魔法防御力ダウン(Magic Def. Down)
		[ 168 ] = { '168.png'				},	-- インヒビットTP(Inhibit TP)

		[ 169 ] = { '169.png'				},	-- ポテンシー(Potency)
		[ 170 ] = { '170.png'				},	-- リゲイン(Regain)
		[ 171 ] = { '171.png'				},	-- パクス(Pax)
		[ 172 ] = { '172.png', '045.png'	},	-- インテンション(Intension)
		[ 173 ] = { '173.png'				},	-- ドレッドスパイク(Dread Spikes)
		[ 174 ] = { '174.png', '146.png'	},	-- 魔法命中率ダウン(Magic Acc. Down)
		[ 175 ] = { '175.png', '022.png'	},	-- 魔法攻撃力ダウン(Magic Atk. Down)
		[ 176 ] = { '176.png', '032.png'	},	-- 移動速度アップ(quickening)
		[ 177 ] = { '177.png'				},	-- 装備変更不可(encumbrance)

		[ 178 ] = { '178.png'				},	-- 熱波の陣(Firestorm)
		[ 179 ] = { '179.png'				},	-- 吹雪の陣(Hailstorm)
		[ 180 ] = { '180.png'				},	-- 烈風の陣(Windstorm)
		[ 181 ] = { '181.png'				},	-- 砂塵の陣(Sandstorm)
		[ 182 ] = { '182.png'				},	-- 疾雷の陣(Thunderstorm)
		[ 183 ] = { '183.png'				},	-- 豪雨の陣(Rainstorm)
		[ 184 ] = { '184.png'				},	-- 極光の陣(Aurorastorm)
		[ 185 ] = { '185.png'				},	-- 妖霧の陣(Voidstorm)

		[ 186 ] = { '186.png', '145.png'	},	-- 計略(Helix)
		[ 187 ] = { '187.png'				},	-- 机上演習:蓄積中(Sublimation: Activated)
		[ 188 ] = { '188.png'				},	-- 机上演習:蓄積完了(Sublimation: Complete)

		[ 189 ] = { '189.png', '168.png'	},	-- TPmaxダウン(Max TP Down)
		[ 190 ] = { '190.png', '045.png'	},	-- 魔法攻撃力アップ(Magic Atk. Boost)
		[ 191 ] = { '191.png', '057.png'	},	-- 魔法防御力アップ(Magic Def. Boost)

		[ 192 ] = { '192.png'				},	-- レクイエム(Requiem)
		[ 193 ] = { '193.png', '192.png'	},	-- ララバイ(Lullaby)
		[ 194 ] = { '194.png', '192.png'	},	-- エレジー(Elegy)
		[ 195 ] = { '195.png'				},	-- ピーアン(Paeon)
		[ 196 ] = { '196.png', '195.png'	},	-- バラード(Ballad)
		[ 197 ] = { '197.png', '195.png'	},	-- ミンネ(Minne)
		[ 198 ] = { '198.png', '195.png'	},	-- メヌエット(Minuet)
		[ 199 ] = { '199.png', '195.png'	},	-- マドリガル(Madrigal)
		[ 200 ] = { '200.png', '195.png'	},	-- プレリュード(Prelude)
		[ 201 ] = { '201.png', '195.png'	},	-- マンボ(Mambo)
		[ 202 ] = { '202.png', '195.png'	},	-- オーバード(Aubade)
		[ 203 ] = { '203.png', '195.png'	},	-- パストラル(Pastoral)
		[ 204 ] = { '204.png', '195.png'	},	-- ハミング(Hum)
		[ 205 ] = { '205.png', '195.png'	},	-- ファンタジア(Fantasia)
		[ 206 ] = { '206.png', '195.png'	},	-- オペレッタ(Operetta)
		[ 207 ] = { '207.png', '195.png'	},	-- カプリチオ(Capriccio)
		[ 208 ] = { '208.png', '195.png'	},	-- セレナーデ(Serenade)
		[ 209 ] = { '209.png', '195.png'	},	-- ロンド(Round)
		[ 210 ] = { '210.png', '195.png'	},	-- ガボット(Gavotte)
		[ 211 ] = { '211.png', '195.png'	},	-- フーガ(Fugue)
		[ 212 ] = { '212.png', '195.png'	},	-- ラプソディ(Rhapsody)
		[ 213 ] = { '213.png', '195.png'	},	-- アリア(Aria)
		[ 214 ] = { '214.png', '195.png'	},	-- マーチ(March)
		[ 215 ] = { '215.png', '195.png'	},	-- エチュード(Etude)
		[ 216 ] = { '216.png', '195.png'	},	-- カロル(Carol)
		[ 217 ] = { '217.png', '192.png'	},	-- スレノディ(Threnody)
		[ 218 ] = { '218.png', '195.png'	},	-- ヒムヌス(Hymnus)
		[ 219 ] = { '219.png', '195.png'	},	-- マズルカ(Mazurka)
		[ 220 ] = { '220.png', '195.png'	},	-- シルベント(Sirvente)
		[ 221 ] = { '221.png', '195.png'	},	-- ダージュ(Dirge)
		[ 222 ] = { '222.png', '195.png'	},	-- スケルツォ(Scherzo)
		[ 223 ] = { '223.png', '192.png'	},	-- ノクターン(Nocturne)

		[ 224 ] = { '224.png',				},	-- ＳＴ２２４(ST224)
		[ 225 ] = { '225.png', '224.png'	},	-- ＳＴ２２５(ST225)
		[ 226 ] = { '226.png', '224.png'	},	-- ＳＴ２２６(ST226)

		[ 227 ] = { '227.png', '170.png'	},	-- ストアTP(Store TP)
		[ 228 ] = { '228.png'				},	-- オーラ(Embrava)
		[ 229 ] = { '229.png'				},	-- 魔力の雫(Manawell)
		[ 230 ] = { '230.png'				},	-- クイックマジック(Spontaneity)
		[ 231 ] = { '231.png'				},	-- マルカート(Marcato)
		[ 232 ] = { '232.png', '224.png'	},	-- （未使用）((N/A))

		[ 233 ] = { '232.png', '042.png'	},	-- オートリジェネ(Auto-Regen)
		[ 234 ] = { '233.png', '043.png'	},	-- オートリフレシュ(Auto-Refresh)
		
		[ 235 ] = { '235.png'				},	-- 釣りイメージ(Fishing Imagery)
		[ 236 ] = { '236.png', '235.png'	},	-- 木工イメージ(Woodworking Imagery)
		[ 237 ] = { '237.png', '235.png'	},	-- 鍛冶イメージ(Smithing Imagery)
		[ 238 ] = { '238.png', '235.png'	},	-- 彫金イメージ(Goldsmithing Imagery)
		[ 239 ] = { '239.png', '235.png'	},	-- 裁縫イメージ(Clothcraft Imagery)
		[ 240 ] = { '240.png', '235.png'	},	-- 革細工イメージ(Leathercraft Imagery)
		[ 241 ] = { '241.png', '235.png'	},	-- 骨細工イメージ(Bonecraft Imagery)
		[ 242 ] = { '242.png', '235.png'	},	-- 錬金術イメージ(Alchemy Imagery)
		[ 243 ] = { '243.png', '235.png'	},	-- 調理イメージ(Cooking Imagery)

--		[ 244 ] = { '244.png', '235.png'	},	-- 未使用
--		[ 245 ] = { '245.png', '235.png'	},	-- 未使用
--		[ 246 ] = { '246.png', '235.png'	},	-- 未使用
--		[ 247 ] = { '247.png', '235.png'	},	-- 未使用
--		[ 248 ] = { '248.png', '235.png'	},	-- 未使用

		[ 249 ] = { '249.png'				},	-- 専心(Dedication)
		[ 250 ] = { '250.png'				},	-- 遠征軍参加資格(EF Badge)
		[ 251 ] = { '251.png'				},	-- 食事(Food)
		[ 252 ] = { '252.png'				},	-- マウント(Mounted)
		[ 253 ] = { '253.png'				},	-- シグネット(Signet)
		[ 254 ] = { '254.png'				},	-- バトルフィールド(Battlefield)

--		[ 255 ] = { '255.png'				},	-- 未使用

		[ 256 ] = { '256.png'				},	-- サンクション(Sanction)
		[ 257 ] = { '257.png'				},	-- ビシージド(Besieged)
		[ 258 ] = { '258.png', '127.png'	},	-- イリュージョン(Illusion)
		[ 259 ] = { '259.png'				},	-- エンカンバー(encumbrance)
		[ 260 ] = { '260.png'				},	-- オブリビセンス(Obliviscence)
		[ 261 ] = { '261.png'				},	-- インペア(impairment)
		[ 262 ] = { '262.png'				},	-- オメルタ(Omerta)
		[ 263 ] = { '263.png'				},	-- デビリテート(debilitation)
		[ 264 ] = { '264.png'				},	-- パトス(Pathos)

		[ 265 ] = { '265.png', '033.png'	},	-- フラーリー(Flurry)
		[ 266 ] = { '266.png', '033.png'	},	-- コンセントレーション(Concentration)
		[ 267 ] = { '267.png'				},	-- アライドタグ(Allied Tags)
		[ 268 ] = { '268.png', '253.png'	},	-- シギル(Sigil)

		[ 269 ] = { '269.png'				},	-- レベルシンク(Level Sync)
		[ 270 ] = { '270.png'				},	-- アフターマス:Lv1(Aftermath: Lv.1)
		[ 271 ] = { '271.png'				},	-- アフターマス:Lv2(Aftermath: Lv.2)
		[ 272 ] = { '272.png'				},	-- アフターマス:Lv3(Aftermath: Lv.3)
		[ 273 ] = { '273.png'				},	-- アフターマス(Aftermath)
		[ 274 ] = { '274.png', '045.png'	},	-- エンライト(Enlight)
		[ 275 ] = { '275.png'				},	-- オースピス(Auspice)
		[ 276 ] = { '276.png', '254.png'	},	-- コンフロント(Confrontation)

		[ 277 ] = { '277.png', '045.png'	},	-- エンファイアII(Enfire II)
		[ 278 ] = { '278.png', '045.png'	},	-- エンブリザドII(Enblizzard II)
		[ 279 ] = { '279.png', '045.png'	},	-- エンエアロII(Enaero II)
		[ 280 ] = { '280.png', '045.png'	},	-- エンストーンII(Enstone II)
		[ 281 ] = { '281.png', '045.png'	},	-- エンサンダーII(Enthunder II)
		[ 282 ] = { '282.png', '045.png'	},	-- エンウォータII(Enwater II)

		[ 283 ] = { '283.png', '057.png'	},	-- 絶対防御(Perfect Defense)
		[ 284 ] = { '284.png'				},	-- タマゴ(Egg)
		[ 285 ] = { '285.png'				},	-- ビジタント(Visitant)
		[ 286 ] = { '286.png', '057.png'	},	-- バアムネジア(Baramnesia)
		[ 287 ] = { '287.png'				},	-- アートマ(Atma)
		[ 288 ] = { '288.png', '045.png'	},	-- エンダーク(Endark)
		[ 289 ] = { '289.png', '045.png'	},	-- 敵対心アップ(Enmity Boost)
		[ 290 ] = { '290.png', '045.png'	},	-- モクシャアップ(Subtle Blow Plus)
		[ 291 ] = { '291.png', '057.png'	},	-- 敵対心ダウン(Enmity Down)
		[ 292 ] = { '292.png', '267.png'	},	-- ペナント(Pennant)
		[ 293 ] = { '293.png', '057.png'	},	-- ネゲートペトリ(Negate Petrify)
		[ 294 ] = { '294.png', '057.png'	},	-- ネゲートテラー(Negate Terror)
		[ 295 ] = { '295.png', '057.png'	},	-- ネゲートアムネジア(Negate Amnesia)
		[ 296 ] = { '296.png', '057.png'	},	-- ネゲートドゥーム(Negate Doom)
		[ 297 ] = { '297.png', '057.png'	},	-- ネゲートポイズン(Negate Poison)

		[ 298 ] = { '298.png', '021.png'	},	-- 被クリティカルヒット率アップ(critical hit evasion down)
		[ 299 ] = { '299.png'				},	-- オーバーロード(Overload)

		[ 300 ] = { '300.png'				},	-- ファイアマニューバ(Fire Maneuver)
		[ 301 ] = { '301.png'				},	-- アイスマニューバ(Ice Maneuver)
		[ 302 ] = { '302.png'				},	-- ウィンドマニューバ(Wind Maneuver)
		[ 303 ] = { '303.png'				},	-- アースマニューバ(Earth Maneuver)
		[ 304 ] = { '304.png'				},	-- サンダーマニューバ(Thunder Maneuver)
		[ 305 ] = { '305.png'				},	-- ウォータマニューバ(Water Maneuver)
		[ 306 ] = { '306.png'				},	-- ライトマニューバ(Light Maneuver)
		[ 307 ] = { '307.png'				},	-- ダークマニューバ(Dark Maneuver)

		[ 308 ] = { '308.png'				},	-- ダブルアップチャンス(Double-Up Chance)
		[ 309 ] = { '309.png'				},	-- バスト(Bust)

		[ 310 ] = { '310.png'				},	-- ファイターズロール(Fighter's Roll)
		[ 311 ] = { '311.png', '310.png'	},	-- モンクスロール(Monk's Roll)
		[ 312 ] = { '312.png', '310.png'	},	-- ヒーラーズロール(Healer's Roll)
		[ 313 ] = { '313.png', '310.png'	},	-- ウィザーズロール(Wizard's Roll)
		[ 314 ] = { '314.png', '310.png'	},	-- ワーロックスロール(Warlock's Roll)
		[ 315 ] = { '315.png', '310.png'	},	-- ローグズロール(Rogue's Roll)
		[ 316 ] = { '316.png', '310.png'	},	-- ガランツロール(Gallant's Roll)
		[ 317 ] = { '317.png', '310.png'	},	-- カオスロール(Chaos Roll)
		[ 318 ] = { '318.png', '310.png'	},	-- ビーストロール(Beast Roll)
		[ 319 ] = { '319.png', '310.png'	},	-- コーラルロール(Choral Roll)
		[ 320 ] = { '320.png', '310.png'	},	-- ハンターズロール(Hunter's Roll)
		[ 321 ] = { '321.png', '310.png'	},	-- サムライロール(Samurai Roll)
		[ 322 ] = { '322.png', '310.png'	},	-- ニンジャロール(Ninja Roll)
		[ 323 ] = { '323.png', '310.png'	},	-- ドラケンロール(Drachen Roll)
		[ 324 ] = { '324.png', '310.png'	},	-- エボカーズロール(Evoker's Roll)
		[ 325 ] = { '325.png', '310.png'	},	-- メガスズロール(Magus's Roll)
		[ 326 ] = { '326.png', '310.png'	},	-- コルセアズロール(Corsair's Roll)
		[ 327 ] = { '327.png', '310.png'	},	-- パペットロール(Puppet Roll)
		[ 328 ] = { '328.png', '310.png'	},	-- ダンサーロール(Dancer's Roll)
		[ 329 ] = { '329.png', '310.png'	},	-- スカラーロール(Scholar's Roll)
		[ 330 ] = { '330.png', '310.png'	},	-- ボルターズロール(Bolter's Roll)
		[ 331 ] = { '331.png', '310.png'	},	-- キャスターズロール(Caster's Roll)
		[ 332 ] = { '332.png', '310.png'	},	-- コアサーズロール(Courser's Roll)
		[ 333 ] = { '333.png', '310.png'	},	-- ブリッツァロール(Blitzer's Roll)
		[ 334 ] = { '334.png', '310.png'	},	-- タクティックロール(Tactician's Roll)
		[ 335 ] = { '335.png', '310.png'	},	-- アライズロール(Allies' Roll)
		[ 336 ] = { '336.png', '310.png'	},	-- マイザーロール(Miser's Roll)
		[ 337 ] = { '337.png', '310.png'	},	-- コンパニオンロール(Companion's Roll)
		[ 338 ] = { '338.png', '310.png'	},	-- カウンターロール(Avenger's Roll)
		[ 339 ] = { '339.png', '310.png'	},	-- ナチュラリストロール(Naturalist's Roll)

		[ 340 ] = { '341.png', '045.png'	},	-- ウォリアーチャージ(Warrior's Charge)
		[ 341 ] = { '341.png', '045.png'	},	-- 無想無念(Formless Strikes)
		[ 342 ] = { '342.png', '045.png'	},	-- アサシンチャージ(Assassin's Charge)
		[ 343 ] = { '343.png', '045.png'	},	-- フェイント(Feint)
		[ 344 ] = { '344.png', '057.png'	},	-- フィールティ(Fealty)
		[ 345 ] = { '345.png', '045.png'	},	-- ダークシール(Dark Seal)
		[ 346 ] = { '346.png', '045.png'	},	-- ディアボリクアイ(Diabolic Eye)
		[ 347 ] = { '347.png', '045.png'	},	-- ナイチンゲール(Nightingale)
		[ 348 ] = { '348.png', '045.png'	},	-- トルバドゥール(Troubadour)
		[ 349 ] = { '349.png', '057.png'	},	-- K.インスティンクト(Killer Instinct)
	
		[ 350 ] = { '350.png', '045.png'	},	-- ステルスショット(Stealth Shot)
		[ 351 ] = { '351.png', '045.png'	},	-- フラッシーショット(Flashy Shot)

		[ 352 ] = { '352.png', '045.png'	},	-- 散華(Sange)
		[ 353 ] = { '353.png', '045.png'	},	-- 八双(Hasso)
		[ 354 ] = { '354.png', '057.png'	},	-- 星眼(Seigan)

		[ 355 ] = { '355.png', '045.png'	},	-- コンバージェンス(Convergence)
		[ 356 ] = { '356.png', '045.png'	},	-- ディフュージョン(Diffusion)

		[ 357 ] = { '357.png'				},	-- スネークアイ(Snake Eye)

		[ 358 ] = { '358.png'				},	-- 白のグリモア(Light Arts)
		[ 359 ] = { '359.png'				},	-- 黒のグリモア(Dark Arts)
		[ 360 ] = { '360.png'				},	-- 簡素清貧の章(Penury)
		[ 361 ] = { '361.png'				},	-- 勤倹小心の章(Parsimony)
		[ 362 ] = { '362.png'				},	-- 電光石火の章(Celerity)
		[ 363 ] = { '363.png'				},	-- 疾風迅雷の章(Alacrity)
		[ 364 ] = { '364.png'				},	-- 意気昂然の章(Rapture)
		[ 365 ] = { '365.png'				},	-- 気炎万丈の章(Ebullience)
		[ 366 ] = { '366.png'				},	-- 女神降臨の章(Accession)
		[ 367 ] = { '367.png'				},	-- 精霊光来の章(Manifestation)

		[ 368 ] = { '368.png'				},	-- ドレインサンバ(Drain Samba)
		[ 369 ] = { '369.png', '368.png'	},	-- アスピルサンバ(Aspir Samba)
		[ 370 ] = { '370.png', '368.png'	},	-- ヘイストサンバ(Haste Samba)

		[ 371 ] = { '371.png', '045.png'	},	-- ベロシティショット(Velocity Shot)

--		[ 372 ] = { '372.png'				},	-- 未使用
--		[ 373 ] = { '372.png'				},	-- 未使用
--		[ 374 ] = { '372.png'				},	-- 未使用

		[ 375 ] = { '375.png', '045.png'	},	-- B.フラリッシュ(Building Flourish)
		[ 376 ] = { '376.png', '044.png'	},	-- トランス(Trance)
		[ 377 ] = { '377.png', '044.png'	},	-- 連環計(Tabula Rasa)
		[ 378 ] = { '378.png', '368.png'	},	-- ドレインデイズ(Drain Daze)
		[ 379 ] = { '379.png', '368.png'	},	-- アスピルデイズ(Aspir Daze)
		[ 380 ] = { '380.png', '368.png'	},	-- ヘイストデイズ(Haste Daze)

		[ 381 ] = { '381.png'				},	-- フィニシングムーブ1(Finishing Move 1)
		[ 382 ] = { '382.png'				},	-- フィニシングムーブ2(Finishing Move 2)
		[ 383 ] = { '383.png'				},	-- フィニシングムーブ3(Finishing Move 3)
		[ 384 ] = { '384.png'				},	-- フィニシングムーブ4(Finishing Move 4)
		[ 385 ] = { '385.png'				},	-- フィニシングムーブ5(Finishing Move 5)
		[ 386 ] = { '386.png', '148.png'	},	-- クイックステップ1(Lethargic Daze 1)
		[ 387 ] = { '387.png'				},	-- クイックステップ2(Lethargic Daze 2)
		[ 388 ] = { '388.png'				},	-- クイックステップ3(Lethargic Daze 3)
		[ 389 ] = { '389.png'				},	-- クイックステップ4(Lethargic Daze 4)
		[ 390 ] = { '390.png'				},	-- クイックステップ5(Lethargic Daze 5)
		[ 391 ] = { '391.png', '021.png'	},	-- ボックスステップ1(Sluggish Daze 1)
		[ 392 ] = { '392.png'				},	-- ボックスステップ2(Sluggish Daze 2)
		[ 393 ] = { '393.png'				},	-- ボックスステップ3(Sluggish Daze 3)
		[ 394 ] = { '394.png'				},	-- ボックスステップ4(Sluggish Daze 4)
		[ 395 ] = { '395.png'				},	-- ボックスステップ5(Sluggish Daze 5)
		[ 396 ] = { '396.png', '148.png'	},	-- スタッターステップ1(Weakened Daze 1)
		[ 397 ] = { '397.png'				},	-- スタッターステップ2(Weakened Daze 2)
		[ 398 ] = { '398.png'				},	-- スタッターステップ3(Weakened Daze 3)
		[ 399 ] = { '399.png'				},	-- スタッターステップ4(Weakened Daze 4)
		[ 400 ] = { '400.png'				},	-- スタッターステップ5(Weakened Daze 5)

		[ 401 ] = { '401.png'				},	-- 白の補遺(Addendum: White)
		[ 402 ] = { '402.png'				},	-- 黒の補遺(Addendum: Black)
		
		[ 403 ] = { '403.png'				},	-- リアクト(Reprisal)
		[ 404 ] = { '404.png', '148.png'	},	-- 魔法回避率ダウン(Magic Evasion Down)
		[ 405 ] = { '405.png', '045.png'	},	-- リタリエーション(Retaliation)
		[ 406 ] = { '406.png'				},	-- 猫足立ち(Footwork)
		[ 407 ] = { '407.png', '045.png'	},	-- 虚誘掩殺の策(Klimaform)
		[ 408 ] = { '408.png', '045.png'	},	-- 石火之機(Sekkanoki)
		[ 409 ] = { '409.png', '231.png'	},	-- ピアニッシモ(Pianissimo)
		[ 410 ] = { '410.png'				},	-- 剣の舞い(Saber Dance)
		[ 411 ] = { '411.png'				},	-- 扇の舞い(Fan Dance)

		[ 412 ] = { '412.png'				},	-- 不惜身命の章(Altruism)
		[ 413 ] = { '413.png'				},	-- 一心精進の章(Focalization)
		[ 414 ] = { '414.png'				},	-- 天衣無縫の章(Tranquility)
		[ 415 ] = { '415.png'				},	-- 無憂無風の章(Equanimity)
		[ 416 ] = { '416.png'				},	-- 大悟徹底(Enlightenment)

		[ 417 ] = { '417.png'				},	-- ハートオブソラス(Afflatus Solace)
		[ 418 ] = { '418.png'				},	-- ハートオブミゼリ(Afflatus Misery)
		[ 419 ] = { '419.png'				},	-- コンポージャー(Composure)
		[ 420 ] = { '420.png'				},	-- 陽忍(Yonin)
		[ 421 ] = { '421.png'				},	-- 陰忍(Innin)

		[ 422 ] = { '422.png'				},	-- カーバンクルの加護(Carbuncle's Favor)
		[ 423 ] = { '423.png'				},	-- イフリートの加護(Ifrit's Favor)
		[ 424 ] = { '424.png'				},	-- シヴァの加護(Shiva's Favor)
		[ 425 ] = { '425.png'				},	-- ガルーダの加護(Garuda's Favor)
		[ 426 ] = { '426.png'				},	-- タイタンの加護(Titan's Favor)
		[ 427 ] = { '427.png'				},	-- ラムウの加護(Ramuh's Favor)
		[ 428 ] = { '428.png'				},	-- リヴァイアサンの加護(Leviathan's Favor)
		[ 429 ] = { '429.png'				},	-- フェンリルの加護(Fenrir's Favor)
		[ 430 ] = { '430.png'				},	-- ディアボロスの加護(Diabolos's Favor)

		[ 431 ] = { '431.png', '057.png'	},	-- 神獣の加護(Avatar's Favor)

		[ 432 ] = { '432.png', '045.png'	},	-- マルチアタック(Multi Strikes)
		[ 433 ] = { '433.png', '045.png'	},	-- ダブルショット(Double Shot)
		[ 434 ] = { '434.png', '045.png'	},	-- 天神地祇(Transcendency)
		[ 435 ] = { '435.png', '045.png'	},	-- リストレント(Restraint)
		[ 436 ] = { '436.png', '057.png'	},	-- 絶対カウンター(Perfect Counter)
		[ 437 ] = { '437.png', '057.png'	},	-- マナウォール(Mana Wall)
		[ 438 ] = { '438.png', '045.png'	},	-- 神聖の印(Divine Emblem)
		[ 439 ] = { '439.png', '045.png'	},	-- ネザーヴォイド(Nether Void)
		[ 440 ] = { '440.png', '045.png'	},	-- 先義後利(Sengikori)
		[ 441 ] = { '441.png', '045.png'	},	-- 二重(Futae)
		[ 442 ] = { '442.png', '045.png'	},	-- プレスト(Presto)
		[ 443 ] = { '443.png', '045.png'	},	-- C.フラリッシュ(Climactic Flourish)

		[ 444 ] = { '444.png'				},	-- 分身(2)(Copy Image (2))
		[ 445 ] = { '445.png'				},	-- 分身(3)(Copy Image (3))
		[ 446 ] = { '446.png'				},	-- 分身(4+)(Copy Image (4+))

		[ 447 ] = { '447.png', '045.png'	},	-- マルチショット(Multi Shots)

		[ 448 ] = { '448.png', '021.png'	},	-- フェザーステップ1(Bewildered Daze 1)
		[ 449 ] = { '449.png'				},	-- フェザーステップ2(Bewildered Daze 2)
		[ 450 ] = { '450.png'				},	-- フェザーステップ3(Bewildered Daze 3)
		[ 451 ] = { '451.png'				},	-- フェザーステップ4(Bewildered Daze 4)
		[ 452 ] = { '452.png'				},	-- フェザーステップ5(Bewildered Daze 5)

		[ 453 ] = { '453.png', '045.png'	},	-- 女神の愛撫(Divine Caress)

		[ 454 ] = { '454.png', '045.png'	},	-- サボトゥール(Saboteur)
		[ 455 ] = { '455.png', '231.png'	},	-- テヌート(Tenuto)
		[ 456 ] = { '456.png', '045.png'	},	-- 気張れ(Spur)
		[ 457 ] = { '457.png', '045.png'	},	-- エフラックス(Efflux)
		[ 458 ] = { '458.png', '057.png'	},	-- 大地の鎧(Earthen Armor)
		[ 459 ] = { '459.png', '057.png'	},	-- 女神の愛撫(Divine Caress)
		[ 460 ] = { '460.png', '045.png'	},	-- ブラッドレイジ(Blood Rage)
		[ 461 ] = { '461.png', '045.png'	},	-- インピタス(Impetus)
		[ 462 ] = { '462.png', '045.png'	},	-- コンスピレーター(Conspirator)
		[ 463 ] = { '463.png', '021.png'	},	-- セプルカー(Sepulcher)
		[ 464 ] = { '464.png', '021.png'	},	-- アルケインクレスト(Arcane Crest)
		[ 465 ] = { '465.png', '021.png'	},	-- 破魔の刃(Hamanoha)
		[ 466 ] = { '466.png', '021.png'	},	-- ドラゴンブレイカー(Dragon Breaker)
		[ 467 ] = { '467.png', '045.png'	},	-- トリプルショット(Triple Shot)
		[ 468 ] = { '468.png', '045.png'	},	-- S.フラリッシュ(Striking Flourish)

		[ 469 ] = { '469.png', '366.png'	},	-- 令狸執鼠の章(Perpetuance)
		[ 470 ] = { '470.png', '367.png'	},	-- 震天動地の章(Immanence)
		[ 471 ] = { '471.png'				},	-- 身替(Migawari)

		[ 472 ] = { '472.png', '045.png'	},	-- T.フラリッシュ(Ternary Flourish)
		[ 473 ] = { '473.png'				},	-- アイテム使用不可(muddle)
		[ 474 ] = { '474.png'				},	-- 一時技能(Prowess)
		[ 475 ] = { '475.png', '285.png'	},	-- ヴォイドウォッチャー(Voidwatcher)
		[ 476 ] = { '476.png'				},	-- インスフィア(Ensphere)
		[ 477 ] = { '477.png', '057.png'	},	-- 女神の聖域(Sacrosanctity)
		[ 478 ] = { '478.png'				},	-- パリセード(Palisade)
		[ 479 ] = { '479.png', '057.png'	},	-- レッドデリリアム(Scarlet Delirium)
		[ 480 ] = { '480.png', '045.png'	},	-- レッドデリリアム(Scarlet Delirium)
		[ 481 ] = { '481.png', '474.png'	},	-- アブダルスの焼印(Abdhaljs Seal)
		[ 482 ] = { '482.png', '045.png'	},	-- デコイショット(Decoy Shot)
		[ 483 ] = { '483.png', '045.png'	},	-- 葉隠(Hagakure)
		[ 484 ] = { '484.png', '057.png'	},	-- 一隻眼(Issekigan)
		[ 485 ] = { '485.png', '045.png'	},	-- ノートリアスナレッジ(Unbridled Learning)
		[ 486 ] = { '486.png', '045.png'	},	-- カウンターアップ(Counter Boost)
		[ 487 ] = { '487.png', '045.png'	},	-- エンドレイン(Endrain)
		[ 488 ] = { '488.png', '045.png'	},	-- エンアスピル(Enaspir)
		[ 489 ] = { '489.png', '273.png'	},	-- アフターグロウ(Afterglow)
		[ 490 ] = { '490.png'				},	-- ブラーゼンラッシュ(Brazen Rush)
		[ 491 ] = { '491.png'				},	-- インナーストレングス(Inner Strength)
		[ 492 ] = { '492.png'				},	-- 女神の羽衣(Asylum)
		[ 493 ] = { '493.png'				},	-- サテルソーサリー(Subtle Sorcery)
		[ 494 ] = { '494.png'				},	-- スタイミー(Stymie)

--		[ 495 ] = { '506.png'				},	-- 未使用

		[ 496 ] = { '496.png'				},	-- インターヴィーン(Intervene)
		[ 497 ] = { '497.png'				},	-- ソールエンスレーヴ(Soul Enslavement)
		[ 498 ] = { '498.png'				},	-- アンリーシュ(Unleash)
		[ 499 ] = { '499.png'				},	-- クラリオンコール(Clarion Call)
		[ 500 ] = { '500.png'				},	-- オーバーキル(Overkill)
		[ 501 ] = { '501.png'				},	-- 八重霞(Yaegasumi)
		[ 502 ] = { '502.png'				},	-- 身影(Mikage)
		[ 503 ] = { '503.png'				},	-- フライハイ(Fly High)
		[ 504 ] = { '504.png'				},	-- アストラルパッセージ(Astral Conduit)
		[ 505 ] = { '505.png'				},	-- N.ウィズドム(Unbridled Wisdom)

--		[ 506 ] = { '506.png'				},	-- 未使用

		[ 507 ] = { '507.png'				},	-- グランドパー(Grand Pas)
		[ 508 ] = { '508.png'				},	-- ワイデンコンパス(Widened Compass)
		[ 509 ] = { '509.png'				},	-- オディリックサブタ(Odyllic Subterfuge)
		[ 510 ] = { '510.png'				},	-- エルゴンパワー(Ergon Might)
		[ 511 ] = { '511.png'				},	-- レイヴシンボル(Reive Mark)
		[ 512 ] = { '512.png'				},	-- イオニス(Ionis)
		[ 513 ] = { '513.png'				},	-- ボルスター(Bolster)

--		[ 514 ] = { '514.png'				},	-- 未使用

		[ 515 ] = { '515.png', '057.png'	},	-- エンデュアエマネイト(Lasting Emanation)
		[ 516 ] = { '516.png', '045.png'	},	-- サークルエンリッチ(Ecliptic Attrition)
		[ 517 ] = { '517.png', '045.png'	},	-- コリメイトファーバー(Collimated Fervor)
		[ 518 ] = { '518.png', '057.png'	},	-- デマテリアライズ(Dematerialize)
		[ 519 ] = { '519.png', '045.png'	},	-- タウマテルギフォカス(Theurgic Focus)
		
--		[ 520 ] = { '520.png'				},	-- 未使用
--		[ 521 ] = { '521.png'				},	-- 未使用

		[ 522 ] = { '522.png'				},	-- E.スフォルツォ(Elemental Sforzo)
		[ 523 ] = { '523.png'				},	-- イグニス(Ignis)
		[ 524 ] = { '524.png'				},	-- ゲールス(Gelus)
		[ 525 ] = { '525.png'				},	-- フラブラ(Flabra)
		[ 526 ] = { '526.png'				},	-- テッルス(Tellus)
		[ 527 ] = { '527.png'				},	-- スルポール(Sulpor)
		[ 528 ] = { '528.png'				},	-- ウンダ(Unda)
		[ 529 ] = { '529.png'				},	-- ルックス(Lux)
		[ 530 ] = { '530.png'				},	-- テネブレイ(Tenebrae)

		[ 531 ] = { '531.png', '057.png'	},	-- ヴァレション(Vallation)
		[ 532 ] = { '532.png', '045.png'	},	-- ソードプレイ(Swordplay)
		[ 533 ] = { '533.png', '057.png'	},	-- フルーグ(Pflug)
		[ 534 ] = { '534.png', '045.png'	},	-- エンボルド(Embolden)
		[ 535 ] = { '535.png', '057.png'	},	-- ヴァリエンス(Valiance)
		[ 536 ] = { '536.png'				},	-- ガンビット(Gambit)

		[ 537 ] = { '537.png', '057.png'	},	-- リエモン(Liement)
		[ 538 ] = { '538.png', '057.png'	},	-- ワンフォアオール(One for All)
		[ 539 ] = { '539.png', '042.png'	},	-- リジェネ(Regen)
		[ 540 ] = { '540.png', '003.png'	},	-- ポイズン(poison)
		[ 541 ] = { '541.png', '043.png'	},	-- リフレシュ(Refresh)
		[ 542 ] = { '542.png', '080.png'	},	-- STRアップ(STR Boost)
		[ 543 ] = { '543.png', '081.png'	},	-- DEXアップ(DEX Boost)
		[ 544 ] = { '544.png', '082.png'	},	-- VITアップ(VIT Boost)
		[ 545 ] = { '545.png', '083.png'	},	-- AGIアップ(AGI Boost)
		[ 546 ] = { '546.png', '084.png'	},	-- INTアップ(INT Boost)
		[ 547 ] = { '547.png', '085.png'	},	-- MNDアップ(MND Boost)
		[ 548 ] = { '548.png', '086.png'	},	-- CHRアップ(CHR Boost)

		[ 549 ] = { '549.png', '045.png'	},	-- 攻撃力アップ(Attack Boost)
		[ 550 ] = { '550.png', '057.png'	},	-- 防御力アップ(Defense Boost)
		[ 551 ] = { '551.png', '045.png'	},	-- 魔法攻撃力アップ(Magic Atk. Boost)
		[ 552 ] = { '552.png', '057.png'	},	-- 魔法防御力アップ(Magic Def. Boost)

		[ 553 ] = { '553.png', '058.png'	},	-- 命中率アップ(Accuracy Boost)
		[ 554 ] = { '554.png', '060.png'	},	-- 回避率アップ(Evasion Boost)
		[ 555 ] = { '555.png', '058.png'	},	-- 魔法命中率アップ(Magic Acc. Boost)
		[ 556 ] = { '556.png', '060.png'	},	-- 魔法回避率アップ(Magic Evasion Boost)

		[ 557 ] = { '557.png', '022.png'	},	-- 攻撃力ダウン(Attack Down)
		[ 558 ] = { '558.png', '021.png'	},	-- 防御力ダウン(Defense Down)
		[ 559 ] = { '559.png', '022.png'	},	-- 魔法攻撃力ダウン(Magic Atk. Down)
		[ 560 ] = { '560.png', '021.png'	},	-- 魔法防御力ダウン(Magic Def. Down)

		[ 561 ] = { '561.png', '146.png'	},	-- 命中率ダウン(Accuracy Down)
		[ 562 ] = { '562.png', '148.png'	},	-- 回避率ダウン(Evasion Down)
		[ 563 ] = { '563.png', '146.png'	},	-- 魔法命中率ダウン(Magic Acc. Down)
		[ 564 ] = { '564.png', '148.png'	},	-- 魔法回避率ダウン(Magic Evasion Down)

		[ 565 ] = { '565.png', '013.png'	},	-- スロウ(slow)
		[ 566 ] = { '566.png', '004.png'	},	-- 麻痺(paralysis)
		[ 567 ] = { '567.png', '012.png'	},	-- ヘヴィ(weight)
		[ 568 ] = { '568.png', '060.png'	},	-- 特殊攻撃回避率アップ(Foil)
		[ 569 ] = { '569.png', '045.png'	},	-- グローリーブレイズ(Blaze of Glory)
		[ 570 ] = { '570.png', '057.png'	},	-- バットゥタ(Battuta)
		[ 571 ] = { '571.png', '148.png'	},	-- レイク(Rayke)
		[ 572 ] = { '572.png', '021.png'	},	-- 回避能力ダウン(Avoidance Down)
		[ 573 ] = { '573.png', '039.png'	},	-- アクアスパイク(Deluge Spikes)
		[ 574 ] = { '574.png', '033.png'	},	-- ファストキャスト(Fast Cast)
		[ 575 ] = { '575.png', '069.png'	},	-- 出現準備期間(gestation)
		[ 576 ] = { '576.png', '260.png'	},	-- 減退中(Doubt)
		[ 577 ] = { '577.png'				},	-- ケット・シーの加護(Cait Sith's Favor)
		[ 578 ] = { '578.png', '162.png'	},	-- 釣り師のセンス(Fishy Intuition)
		[ 579 ] = { '579.png', '249.png'	},	-- 一心(Commitment")
		[ 580 ] = { '580.png', '033.png'	},	-- ヘイスト(Haste)
		[ 581 ] = { '581.png'				},	-- スナップ(Flurry)

		[ 582 ] = { '582.png', '045.png'	},	-- コントラダンス(Contradance)
		[ 583 ] = { '583.png', '045.png'	},	-- アポジー(Apogee)
		[ 584 ] = { '584.png', '045.png'	},	-- エントラスト(Entrust)
		[ 585 ] = { '585.png', '127.png'	},	-- コスチューム(Costume)
		[ 586 ] = { '586.png', '057.png'	},	-- 被ケアル回復量アップ(Curing Conduit)
		[ 587 ] = { '587.png', '045.png'	},	-- TPボーナスアップ(TP Bonus)
		[ 588 ] = { '588.png', '385.png'	},	-- フィニシングムーブ(5+)(Finishing Move (6+))
		[ 589 ] = { '589.png', '178.png'	},	-- 熱波の陣II(Firestorm)
		[ 590 ] = { '590.png', '179.png'	},	-- 吹雪の陣II(Hailstorm)
		[ 591 ] = { '591.png', '180.png'	},	-- 烈風の陣II(Windstorm)
		[ 592 ] = { '592.png', '181.png'	},	-- 砂塵の陣II(Sandstorm)
		[ 593 ] = { '593.png', '182.png'	},	-- 疾雷の陣II(Thunderstorm)
		[ 594 ] = { '594.png', '183.png'	},	-- 豪雨の陣II(Rainstorm)
		[ 595 ] = { '595.png', '184.png'	},	-- 極光の陣II(Aurorastorm)
		[ 596 ] = { '596.png', '185.png'	},	-- 妖霧の陣II(Voidstorm)

		[ 597 ] = { '597.png', '021.png'	},	-- イナンデーション(Inundation)
		[ 598 ] = { '598.png', '045.png'	},	-- カスケード(Cascade)
		[ 599 ] = { '599.png', '045.png'	},	-- コンスームマナ(Consume Mana)
		[ 600 ] = { '600.png', '310.png'	},	-- ルーニストロール(Runeist's Roll)
		[ 601 ] = { '601.png', '045.png'	},	-- クルケッドカード(Crooked Cards)
		[ 602 ] = { '602.png'				},	-- 神符(Vorseal)
		[ 603 ] = { '603.png'				},	-- 祈祷神符(Elvorseal)
		[ 604 ] = { '604.png'				},	-- マイティガード(Mighty Guard)
		[ 605 ] = { '605.png', '036.png'	},	-- ゲイルスパイク(Gale Spikes)
		[ 606 ] = { '606.png', '037.png'	},	-- クロッドスパイク(Clod Spikes)
		[ 607 ] = { '607.png', '403.png'	},	-- グリントスパイク(Glint Spikes)
		[ 608 ] = { '608.png', '057.png'	},	-- ネゲートウィルス(Negate Virus)
		[ 609 ] = { '609.png', '057.png'	},	-- ネゲートカーズ(Negate Curse)
		[ 610 ] = { '610.png', '057.png'	},	-- ネゲートチャーム(Negate Charm)
		[ 611 ] = { '611.png', '060.png'	},	-- 魔法回避率アップ(Magic Evasion Boost)
		[ 612 ] = { '612.png', '476.png'	},	-- コルア展開(Colure Active)
		[ 613 ] = { '613.png', '184.png'	},	-- ミュモルの光(Mumor's Radiance)
		[ 614 ] = { '614.png', '185.png'	},	-- ウルゴアの闇(Ullegore's Gloom)

		[ 615 ] = { '615.png', '045.png'	},	-- ためる(Boost)
		[ 616 ] = { '616.png', '162.png'	},	-- 芸術家肌(Artisanal Knowledge)
		[ 617 ] = { '617.png', '057.png'	},	-- サクリファイス(Sacrifice)
		[ 618 ] = { '618.png'				},	-- エンポロックスのツボ(Emporox's Gift)
		[ 619 ] = { '619.png', '057.png'	},	-- スピリットボンド(Spirit Bond)
		[ 620 ] = { '620.png', '184.png'	},	-- 覚醒(Awaken)
		[ 621 ] = { '621.png', '045.png'	},	-- マジェスティ(Majesty)
		[ 622 ] = { '622.png', '057.png'	},	-- ガード率アップ(ガード率アップ)
		[ 623 ] = { '623.png', '057.png'	},	-- ランパート(Rampart)
		[ 624 ] = { '624.png', '057.png'	},	-- 風の守り(Wind's Blessing)
		[ 625 ] = { '625.png'				},	-- セイレーンの加護(Siren's Favor)
		[ 626 ] = { '626.png', '057.png'	},	-- ネゲートスリープ(Negate Sleep)
		[ 627 ] = { '627.png', '069.png'	},	-- 戦闘準備期間(Mobilization)

--		[ 628 ] = { '628.png'				},	-- 未使用
--		[ 629 ] = { '629.png'				},	-- 未使用
--		[ 630 ] = { '630.png'				},	-- 未使用
--		[ 631 ] = { '631.png'				},	-- 未使用
--		[ 632 ] = { '632.png'				},	-- 未使用
--		[ 633 ] = { '633.png'				},	-- 未使用
--		[ 634 ] = { '634.png'				},	-- 未使用
--		[ 635 ] = { '635.png'				},	-- 未使用
--		[ 636 ] = { '636.png'				},	-- 未使用
--		[ 637 ] = { '637.png'				},	-- 未使用
--		[ 638 ] = { '638.png'				},	-- 未使用
--		[ 639 ] = { '639.png'				},	-- 未使用
	},

	-- Filter and Order
	EffectEnabled =T{

		-------------------------------------------------------
		-- 強化系

		 36, -- ブリンク(Blink)

		 33, -- ヘイスト(Haste)
		581, -- スナップ(Flurry)

		 40, -- プロテス(Protect)
		 41, -- シェル(Shell)

		106, -- バスリプル(Barsleep)
		107, -- バポイズン(Barpoison)
		108, -- バパライズ(Barparalyze)
		109, -- バブライン(Barblind)
		110, -- バサイレス(Barsilence)
		111, -- バブレイク(Barpetrify)
		112, -- バウィルス(Barvirus)

		 37, -- ストンスキン(Stoneskin)
		 39, -- アクアベール(Aquaveil)

		 42, -- リジェネ(Regen)
		 43, -- リフレシュ(Refresh)


		 34, -- ブレイズスパイク(Blaze Spikes)
		 35, -- アイススパイク(Ice Spikes)
		 38, -- ショックスパイク(Shock Spikes)


		 69, -- インビジ(Invisible)

		249, -- 専心(Dedication)
		235, -- 釣りイメージ(Fishing Imagery)
		236, -- 木工イメージ(Woodworking Imagery)
		237, -- 鍛冶イメージ(Smithing Imagery)
		238, -- 彫金イメージ(Goldsmithing Imagery)
		239, -- 裁縫イメージ(Clothcraft Imagery)
		240, -- 革細工イメージ(Leathercraft Imagery)
		241, -- 骨細工イメージ(Bonecraft Imagery)
		242, -- 錬金術イメージ(Alchemy Imagery)
		243, -- 調理イメージ(Cooking Imagery)

		 68, -- ウォークライ(Warcry)

		253, -- シグネット(Signet)


		100, -- バファイ(Barfire)
		101, -- バブリザ(Barblizzard)
		102, -- バエアロ(Baraero)
		103, -- バストン(Barstone)
		104, -- バサンダ(Barthunder)
		105, -- バウォタ(Barwater)

		113, -- リレイズ(Reraise)
		
		116, -- ファランクス(Phalanx)

		 70, -- デオード(Deodorize)
		 71, -- スニーク(Sneak)





		 94, -- エンファイア(Enfire)
		 95, -- エンブリザド(Enblizzard)
		 96, -- エンエアロ(Enaero)
		 97, -- エンストーン(Enstone)
		 98, -- エンサンダー(Enthunder)
		 99, -- エンウォータ(Enwater)
		

		
		432, -- マルチアタック(Multi Strikes)	ストライ

		275, -- オースピス(Auspice)

		419, -- コンポージャー(Composure)

		 65, -- 不意打ち(Sneak Attack)
		 57, -- ディフェンダー(Defender)

			
		 56, -- バーサク(Berserk)


		-------------------------------------------------------
		-- 強化系　整頓待ち

		 24, -- ＳＴ２４(ST24)
		 25, -- ＳＴ２５(ST25)
		 26, -- ＳＴ２６(ST26)
		 27, -- ＳＴ２７(ST27)
		
		 32, -- とんずら(Flee)
		
		 44, -- マイティストライク(Mighty Strikes)
		 45, -- ためる(Boost)
		 46, -- 百烈拳(Hundred Fists)
		 47, -- 魔力の泉(Manafont)
		 48, -- 連続魔(Chainspell)
		 49, -- 絶対回避(Perfect Dodge)
		 50, -- インビンシブル(Invincible)
		 51, -- ブラッドウェポン(Blood Weapon)
		 52, -- ソウルボイス(Soul Voice)
		 53, -- イーグルアイ(Eagle Eye Shot)
		 54, -- 明鏡止水(Meikyo Shisui)
		 55, -- アストラルフロウ(Astral Flow)
			
		 58, -- アグレッサー(Aggressor)
		 59, -- 集中(Focus)
		 60, -- 回避(Dodge)
		 61, -- かまえる(Counterstance)
		 62, -- センチネル(Sentinel)
		 63, -- 暗黒(Souleater)
		 64, -- ラストリゾート(Last Resort)
		 66, -- 分身(Copy Image)
		 67, -- 心眼(Third Eye)

		 72, -- 狙い撃ち(Sharpshot)
		 73, -- 乱れ撃ち(Barrage)
		 74, -- ホーリーサークル(Holy Circle)
		 75, -- アルケインサークル(Arcane Circle)
		 76, -- かくれる(Hide)
		 77, -- カモフラージュ(Camouflage)
		 78, -- 女神の印(Divine Seal)
		 79, -- 精霊の印(Elemental Seal)
		
		 80, -- STRアップ(STR Boost)
		 81, -- DEXアップ(DEX Boost)
		 82, -- VITアップ(VIT Boost)
		 83, -- AGIアップ(AGI Boost)
		 84, -- INTアップ(INT Boost)
		 85, -- MNDアップ(MND Boost)
		 86, -- CHRアップ(CHR Boost)
		
		 87, -- だまし討ち(Trick Attack)
		 88, -- HPmaxアップ(Max HP Boost)
		 89, -- MPmaxアップ(Max MP Boost)
		 90, -- 命中率アップ(Accuracy Boost)
		 91, -- 攻撃力アップ(Attack Boost)
		 92, -- 回避率アップ(Evasion Boost)
		 93, -- 防御力アップ(Defense Boost)
		
			
		114, -- かばう(Cover)
		115, -- エンドレスショット(Unlimited Shot)
			
			
		117, -- 護摩の守護円(Warding Circle)
		118, -- エンシェントサークル(Ancient Circle)
			
		119, -- STRアップ(STR Boost)
		120, -- DEXアップ(DEX Boost)
		121, -- VITアップ(VIT Boost)
		122, -- AGIアップ(AGI Boost)
		123, -- INTアップ(INT Boost)
		124, -- MNDアップ(MND Boost)
		125, -- CHRアップ(CHR Boost)
			
		126, -- 竜剣(Spirit Surge)

		127, -- コスチューム(Costume)
			
		150, -- 物理バリア(Physical Shield)
		151, -- 遠隔物理バリア(Arrow Shield)
		152, -- 魔法バリア(Magic Shield)
		153, -- ダメージスパイク(Damage Spikes)
		154,  -- ルビーの輝き(Shining Ruby)

		160, -- 試合復帰準備中(preparations)
		161, -- スプリント(Sprint)
		162, -- エンチャント(enchantment)
		163, -- アジュールロー(Azure Lore)
		164, -- ブルーチェーン(Chain Affinity)
		165, -- ブルーバースト(Burst Affinity)
		166, -- オーバードライヴ(Overdrive)

		169, -- ポテンシー(Potency)
		170, -- リゲイン(Regain)
		171, -- パクス(Pax)
		172, -- インテンション(Intension)
		173, -- ドレッドスパイク(Dread Spikes)

		176, -- 移動速度アップ(quickening)

		178, -- 熱波の陣(Firestorm)
		179, -- 吹雪の陣(Hailstorm)
		180, -- 烈風の陣(Windstorm)
		181, -- 砂塵の陣(Sandstorm)
		182, -- 疾雷の陣(Thunderstorm)
		183, -- 豪雨の陣(Rainstorm)
		184, -- 極光の陣(Aurorastorm)
		185, -- 妖霧の陣(Voidstorm)
			
		187, -- 机上演習:蓄積中(Sublimation: Activated)
		188, -- 机上演習:蓄積完了(Sublimation: Complete)
			
		190, -- 魔法攻撃力アップ(Magic Atk. Boost)
		191, -- 魔法防御力アップ(Magic Def. Boost)
			
		195, -- ピーアン(Paeon)
		196, -- バラード(Ballad)
		197, -- ミンネ(Minne)
		198, -- メヌエット(Minuet)
		199, -- マドリガル(Madrigal)
		200, -- プレリュード(Prelude)
		201, -- マンボ(Mambo)
		202, -- オーバード(Aubade)
		203, -- パストラル(Pastoral)
		204, -- ハミング(Hum)
		205, -- ファンタジア(Fantasia)
		206, -- オペレッタ(Operetta)
		207, -- カプリチオ(Capriccio)
		208, -- セレナーデ(Serenade)
		209, -- ロンド(Round)
		210, -- ガボット(Gavotte)
		211, -- フーガ(Fugue)
		212, -- ラプソディ(Rhapsody)
		213, -- アリア(Aria)
		214, -- マーチ(March)
		215, -- エチュード(Etude)
		216, -- カロル(Carol)

		218, -- ヒムヌス(Hymnus)
		219, -- マズルカ(Mazurka)
		220, -- シルベント(Sirvente)
		221, -- ダージュ(Dirge)
		222, -- スケルツォ(Scherzo)

		224, -- ＳＴ２２４(ST224)
		225, -- ＳＴ２２５(ST225)
		226, -- ＳＴ２２６(ST226)
			
		227, -- ストアTP(Store TP)
		228, -- オーラ(Embrava)
		229, -- 魔力の雫(Manawell)
		230, -- クイックマジック(Spontaneity)
		231, -- マルカート(Marcato)
--		232, -- （未使用）((N/A))
	
		233, -- オートリジェネ(Auto-Regen)
		234, -- オートリフレシュ(Auto-Refresh)
					
		250, -- 遠征軍参加資格(EF Badge)
		251, -- 食事(Food)
		252, -- マウント(Mounted)
		254, -- バトルフィールド(Battlefield)
--		255, -- 未使用

		256,	-- サンクション(Sanction)
		257,	-- ビシージド(Besieged)
		258,	-- イリュージョン(Illusion)
		259,	-- エンカンバー(encumbrance)
		260,	-- オブリビセンス(Obliviscence)
		261,	-- インペア(impairment)
		262,	-- オメルタ(Omerta)
		263,	-- デビリテート(debilitation)
		264,	-- パトス(Pathos)
		265,	-- フラーリー(Flurry)
		266,	-- コンセントレーション(Concentration)
		267,	-- アライドタグ(Allied Tags)
		268,	-- シギル(Sigil)

		269, -- レベルシンク(Level Sync)
		270, -- アフターマス:Lv1(Aftermath: Lv.1)
		271, -- アフターマス:Lv2(Aftermath: Lv.2)
		272, -- アフターマス:Lv3(Aftermath: Lv.3)
		273, -- アフターマス(Aftermath)
		274, -- エンライト(Enlight)
		276, -- コンフロント(Confrontation)
		277, -- エンファイアII(Enfire II)
		278, -- エンブリザドII(Enblizzard II)
		279, -- エンエアロII(Enaero II)
		280, -- エンストーンII(Enstone II)
		281, -- エンサンダーII(Enthunder II)
		282, -- エンウォータII(Enwater II)

		283, -- 絶対防御(Perfect Defense)
		284, -- タマゴ(Egg)
		285, -- ビジタント(Visitant)
		286, -- バアムネジア(Baramnesia)
		287, -- アートマ(Atma)
		288, -- エンダーク(Endark)
		289, -- 敵対心アップ(Enmity Boost)
		290, -- モクシャアップ(Subtle Blow Plus)
		291, -- 敵対心ダウン(Enmity Down)
		292, -- ペナント(Pennant)
		293, -- ネゲートペトリ(Negate Petrify)
		294, -- ネゲートテラー(Negate Terror)
		295, -- ネゲートアムネジア(Negate Amnesia)
		296, -- ネゲートドゥーム(Negate Doom)
		297, -- ネゲートポイズン(Negate Poison)

		300, -- ファイアマニューバ(Fire Maneuver)
		301, -- アイスマニューバ(Ice Maneuver)
		302, -- ウィンドマニューバ(Wind Maneuver)
		303, -- アースマニューバ(Earth Maneuver)
		304, -- サンダーマニューバ(Thunder Maneuver)
		305, -- ウォータマニューバ(Water Maneuver)
		306, -- ライトマニューバ(Light Maneuver)
		307, -- ダークマニューバ(Dark Maneuver)
			
		308, -- ダブルアップチャンス(Double-Up Chance)
		309, -- バスト(Bust)
		310, -- ファイターズロール(Fighter's Roll)
		311, -- モンクスロール(Monk's Roll)
		312, -- ヒーラーズロール(Healer's Roll)
		313, -- ウィザーズロール(Wizard's Roll)
		314, -- ワーロックスロール(Warlock's Roll)
		315, -- ローグズロール(Rogue's Roll)
		316, -- ガランツロール(Gallant's Roll)
		317, -- カオスロール(Chaos Roll)
		318, -- ビーストロール(Beast Roll)
		319, -- コーラルロール(Choral Roll)
		320, -- ハンターズロール(Hunter's Roll)
		321, -- サムライロール(Samurai Roll)
		322, -- ニンジャロール(Ninja Roll)
		323, -- ドラケンロール(Drachen Roll)
		324, -- エボカーズロール(Evoker's Roll)
		325, -- メガスズロール(Magus's Roll)
		326, -- コルセアズロール(Corsair's Roll)
		327, -- パペットロール(Puppet Roll)
		328, -- ダンサーロール(Dancer's Roll)
		329, -- スカラーロール(Scholar's Roll)
		330, -- ボルターズロール(Bolter's Roll)
		331, -- キャスターズロール(Caster's Roll)
		332, -- コアサーズロール(Courser's Roll)
		333, -- ブリッツァロール(Blitzer's Roll)
		334, -- タクティックロール(Tactician's Roll)
		335, -- アライズロール(Allies' Roll)
		336, -- マイザーロール(Miser's Roll)
		337, -- コンパニオンロール(Companion's Roll)
		338, -- カウンターロール(Avenger's Roll)
		339, -- ナチュラリストロール(Naturalist's Roll)

		340, -- ウォリアーチャージ(Warrior's Charge)
		341, -- 無想無念(Formless Strikes)
		342, -- アサシンチャージ(Assassin's Charge)
		343, -- フェイント(Feint)
		344, -- フィールティ(Fealty)
		345, -- ダークシール(Dark Seal)
		346, -- ディアボリクアイ(Diabolic Eye)
		347, -- ナイチンゲール(Nightingale)
		348, -- トルバドゥール(Troubadour)
		349, -- K.インスティンクト(Killer Instinct)
				
		350, -- ステルスショット(Stealth Shot)
		351, -- フラッシーショット(Flashy Shot)
			
		352, -- 散華(Sange)
		353, -- 八双(Hasso)
		354, -- 星眼(Seigan)
			
		355, -- コンバージェンス(Convergence)
		356, -- ディフュージョン(Diffusion)

		357, -- スネークアイ(Snake Eye)
		358, -- 白のグリモア(Light Arts)
		359, -- 黒のグリモア(Dark Arts)
		360, -- 簡素清貧の章(Penury)
		361, -- 勤倹小心の章(Parsimony)
		362, -- 電光石火の章(Celerity)
		363, -- 疾風迅雷の章(Alacrity)
		364, -- 意気昂然の章(Rapture)
		365, -- 気炎万丈の章(Ebullience)
		366, -- 女神降臨の章(Accession)
		367, -- 精霊光来の章(Manifestation)
			
		368, -- ドレインサンバ(Drain Samba)
		369, -- アスピルサンバ(Aspir Samba)
		370, -- ヘイストサンバ(Haste Samba)
			
		371, -- ベロシティショット(Velocity Shot)

--		372, -- 未使用
--		373, -- 未使用
--		374, -- 未使用

		375, -- B.フラリッシュ(Building Flourish)
		376, -- トランス(Trance)
		377, -- 連環計(Tabula Rasa)
		
		381, -- フィニシングムーブ1(Finishing Move 1)
		382, -- フィニシングムーブ2(Finishing Move 2)
		383, -- フィニシングムーブ3(Finishing Move 3)
		384, -- フィニシングムーブ4(Finishing Move 4)
		385, -- フィニシングムーブ5(Finishing Move 5)

		401, -- 白の補遺(Addendum: White)
		402, -- 黒の補遺(Addendum: Black)
					
		403, -- リアクト(Reprisal)

		405, -- リタリエーション(Retaliation)
		406, -- 猫足立ち(Footwork)
		407, -- 虚誘掩殺の策(Klimaform)
		408, -- 石火之機(Sekkanoki)
		409, -- ピアニッシモ(Pianissimo)
		410, -- 剣の舞い(Saber Dance)
		411, -- 扇の舞い(Fan Dance)
			
		412, -- 不惜身命の章(Altruism)
		413, -- 一心精進の章(Focalization)
		414, -- 天衣無縫の章(Tranquility)
		415, -- 無憂無風の章(Equanimity)
		416, -- 大悟徹底(Enlightenment)
		417, -- ハートオブソラス(Afflatus Solace)
		418, -- ハートオブミゼリ(Afflatus Misery)
			
		420, -- 陽忍(Yonin)
		421, -- 陰忍(Innin)
			
		422, -- カーバンクルの加護(Carbuncle's Favor)
		423, -- イフリートの加護(Ifrit's Favor)
		424, -- シヴァの加護(Shiva's Favor)
		425, -- ガルーダの加護(Garuda's Favor)
		426, -- タイタンの加護(Titan's Favor)
		427, -- ラムウの加護(Ramuh's Favor)
		428, -- リヴァイアサンの加護(Leviathan's Favor)
		429, -- フェンリルの加護(Fenrir's Favor)
		430, -- ディアボロスの加護(Diabolos's Favor)
		431, -- 神獣の加護(Avatar's Favor)

		433, -- ダブルショット(Double Shot)
		434, -- 天神地祇(Transcendency)
		435, -- リストレント(Restraint)
		436, -- 絶対カウンター(Perfect Counter)
		437, -- マナウォール(Mana Wall)
		438, -- 神聖の印(Divine Emblem)
		439, -- ネザーヴォイド(Nether Void)
		440, -- 先義後利(Sengikori)
		441, -- 二重(Futae)
		442, -- プレスト(Presto)
		443, -- C.フラリッシュ(Climactic Flourish)
		444, -- 分身(2)(Copy Image (2))
		445, -- 分身(3)(Copy Image (3))
		446, -- 分身(4+)(Copy Image (4+))
		447, -- マルチショット(Multi Shots)

		453, -- 女神の愛撫(Divine Caress)
		454, -- サボトゥール(Saboteur)
		455, -- テヌート(Tenuto)
		456, -- 気張れ(Spur)
		457, -- エフラックス(Efflux)
		458, -- 大地の鎧(Earthen Armor)
		459, -- 女神の愛撫(Divine Caress)
		460, -- ブラッドレイジ(Blood Rage)
		461, -- インピタス(Impetus)
		462, -- コンスピレーター(Conspirator)
		
		467, -- トリプルショット(Triple Shot)
		468, -- S.フラリッシュ(Striking Flourish)
		469, -- 令狸執鼠の章(Perpetuance)
		470, -- 震天動地の章(Immanence)
		471, -- 身替(Migawari)
		472, -- T.フラリッシュ(Ternary Flourish)
		
		474, -- 一時技能(Prowess)
		475, -- ヴォイドウォッチャー(Voidwatcher)
		476, -- インスフィア(Ensphere)
		477, -- 女神の聖域(Sacrosanctity)
		478, -- パリセード(Palisade)
		479, -- レッドデリリアム(Scarlet Delirium)
		480, -- レッドデリリアム(Scarlet Delirium)
		481, -- アブダルスの焼印(Abdhaljs Seal)
		482, -- デコイショット(Decoy Shot)
		483, -- 葉隠(Hagakure)
		484, -- 一隻眼(Issekigan)
		485, -- ノートリアスナレッジ(Unbridled Learning)
		486, -- カウンターアップ(Counter Boost)
		487, -- エンドレイン(Endrain)
		488, -- エンアスピル(Enaspir)

		489, -- アフターグロウ(Afterglow)
		490, -- ブラーゼンラッシュ(Brazen Rush)
		491, -- インナーストレングス(Inner Strength)
		492, -- 女神の羽衣(Asylum)
		493, -- サテルソーサリー(Subtle Sorcery)
		494, -- スタイミー(Stymie)
		
--		495, -- 未使用
		
		496, -- インターヴィーン(Intervene)
		497, -- ソールエンスレーヴ(Soul Enslavement)
		498, -- アンリーシュ(Unleash)
		499, -- クラリオンコール(Clarion Call)
		500, -- オーバーキル(Overkill)
		501, -- 八重霞(Yaegasumi)
		502, -- 身影(Mikage)
		503, -- フライハイ(Fly High)
		504, -- アストラルパッセージ(Astral Conduit)
		505, -- N.ウィズドム(Unbridled Wisdom)
			
		507, -- グランドパー(Grand Pas)
		508, -- ワイデンコンパス(Widened Compass)
		509, -- オディリックサブタ(Odyllic Subterfuge)
		510, -- エルゴンパワー(Ergon Might)
		511, -- レイヴシンボル(Reive Mark)
		512, -- イオニス(Ionis)
		513, -- ボルスター(Bolster)
			
		515, -- エンデュアエマネイト(Lasting Emanation)
		516, -- サークルエンリッチ(Ecliptic Attrition)
		517, -- コリメイトファーバー(Collimated Fervor)
		518, -- デマテリアライズ(Dematerialize)
		519, -- タウマテルギフォカス(Theurgic Focus)

--		520, -- 未使用
--		521, -- 未使用

		522, -- E.スフォルツォ(Elemental Sforzo)
		523, -- イグニス(Ignis)
		524, -- ゲールス(Gelus)
		525, -- フラブラ(Flabra)
		526, -- テッルス(Tellus)
		527, -- スルポール(Sulpor)
		528, -- ウンダ(Unda)
		529, -- ルックス(Lux)
		530, -- テネブレイ(Tenebrae)
		531, -- ヴァレション(Vallation)
		532, -- ソードプレイ(Swordplay)
		533, -- フルーグ(Pflug)
		534, -- エンボルド(Embolden)
		535, -- ヴァリエンス(Valiance)
		536, -- ガンビット(Gambit)
		537, -- リエモン(Liement)
		538, -- ワンフォアオール(One for All)

		539, -- リジェネ(Regen)

		541, -- リフレシュ(Refresh)
		542, -- STRアップ(STR Boost)
		543, -- DEXアップ(DEX Boost)
		544, -- VITアップ(VIT Boost)
		545, -- AGIアップ(AGI Boost)
		546, -- INTアップ(INT Boost)
		547, -- MNDアップ(MND Boost)
		548, -- CHRアップ(CHR Boost)
		549, -- 攻撃力アップ(Attack Boost)
		550, -- 防御力アップ(Defense Boost)
		551, -- 魔法攻撃力アップ(Magic Atk. Boost)
		552, -- 魔法防御力アップ(Magic Def. Boost)
		553, -- 命中率アップ(Accuracy Boost)
		554, -- 回避率アップ(Evasion Boost)
		555, -- 魔法命中率アップ(Magic Acc. Boost)
		556, -- 魔法回避率アップ(Magic Evasion Boost)

		568, -- 特殊攻撃回避率アップ(Foil)
		569, -- グローリーブレイズ(Blaze of Glory)
		570, -- バットゥタ(Battuta)

		573, -- アクアスパイク(Deluge Spikes)
		574, -- ファストキャスト(Fast Cast)
		575, -- 出現準備期間(gestation)
		
		577, -- ケット・シーの加護(Cait Sith's Favor)
		578, -- 釣り師のセンス(Fishy Intuition)
		579, -- 一心(Commitment")
		580, -- ヘイスト(Haste)
		582, -- コントラダンス(Contradance)
		583, -- アポジー(Apogee)
		584, -- エントラスト(Entrust)
		585, -- コスチューム(Costume)
		586, -- 被ケアル回復量アップ(Curing Conduit)
		587, -- TPボーナスアップ(TP Bonus)
		588, -- フィニシングムーブ(5+)(Finishing Move (6+))
		589, -- 熱波の陣II(Firestorm)
		590, -- 吹雪の陣II(Hailstorm)
		591, -- 烈風の陣II(Windstorm)
		592, -- 砂塵の陣II(Sandstorm)
		593, -- 疾雷の陣II(Thunderstorm)
		594, -- 豪雨の陣II(Rainstorm)
		595, -- 極光の陣II(Aurorastorm)
		596, -- 妖霧の陣II(Voidstorm)

		598, -- カスケード(Cascade)
		599, -- コンスームマナ(Consume Mana)
		600, -- ルーニストロール(Runeist's Roll)
		601, -- クルケッドカード(Crooked Cards)
		602, -- 神符(Vorseal)
		603, -- 祈祷神符(Elvorseal)
		604, -- マイティガード(Mighty Guard)
		605, -- ゲイルスパイク(Gale Spikes)
		606, -- クロッドスパイク(Clod Spikes)
		607, -- グリントスパイク(Glint Spikes)
		608, -- ネゲートウィルス(Negate Virus)
		609, -- ネゲートカーズ(Negate Curse)
		610, -- ネゲートチャーム(Negate Charm)
		611, -- 魔法回避率アップ(Magic Evasion Boost)
		612, -- コルア展開(Colure Active)
		613, -- ミュモルの光(Mumor's Radiance)
		614, -- ウルゴアの闇(Ullegore's Gloom)
		615, -- ためる(Boost)
		616, -- 芸術家肌(Artisanal Knowledge)
		617, -- サクリファイス(Sacrifice)
		618, -- エンポロックスのツボ(Emporox's Gift)
		619, -- スピリットボンド(Spirit Bond)
		620, -- 覚醒(Awaken)
		621, -- マジェスティ(Majesty)
		622, -- ガード率アップ(ガード率アップ)
		623, -- ランパート(Rampart)
		624, -- 風の守り(Wind's Blessing)
		625, -- セイレーンの加護(Siren's Favor)
		626, -- ネゲートスリープ(Negate Sleep)
		627, -- 戦闘準備期間(Mobilization)

--		628, -- 未使用
--		629, -- 未使用
--		630, -- 未使用
--		631, -- 未使用
--		632, -- 未使用
--		633, -- 未使用
--		634, -- 未使用
--		635, -- 未使用
--		636, -- 未使用
--		637, -- 未使用
--		638, -- 未使用
--		639, -- 未使用

		--------------------------------------------------------------

		-- 区切り
		 -1,

		-------------------------------------------------------
		-- 弱化系

		 10, -- スタン(stun)
		  2, -- 睡眠(sleep)
		  3, -- 毒(poison)
		  4, -- 麻痺(paralysis)
		 13, -- スロウ(slow)
		  5, -- 暗闇(blindness)
		  6, -- 静寂(silence)
		  7, -- 石化(petrification)
		 11, -- バインド(bind)
		 12, -- ヘビィ(weight)
		 21, -- アドル(addle)
		 28, -- テラー(terror)
		 31, -- 悪疫(plague)

		-------------------------------------------------------
		-- 弱化系　整頓待ち

		  1, -- 衰弱(weakness)
		  8, -- 病気(disease)
		  9, -- 呪い(curse)
		 14, -- 魅了(charm)
		 15, -- 死の宣告(doom)
		 16, -- アムネジア(amnesia)
		 17, -- 魅了(charm)
		 18, -- 徐々に石化(gradual petrification)
		 19, -- 睡眠(sleep)
		 20, -- 呪い(curse)
		 22, -- ひるみ(intimidate)
		 23, -- メルトン(Kaustra)

		 29, -- 沈黙(mute)
		 30, -- 呪詛(bane)
		
		128, -- バーン(Burn)
		129, -- フロスト(Frost)
		130, -- チョーク(Choke)
		131, -- ラスプ(Rasp)
		132, -- ショック(Shock)
		133, -- ドラウン(Drown)
			
		134, -- ディア(Dia)
		135, -- バイオ(Bio)
			
		136, -- STRダウン(STR Down)
		137, -- DEXダウン(DEX Down)
		138, -- VITダウン(VIT Down)
		139, -- AGIダウン(AGI Down)
		140, -- INTダウン(INT Down)
		141, -- MNDダウン(MND Down)
		142, -- CHRダウン(CHR Down)
			
		143, -- レベル制限(Level Restriction)
			
		144, -- HPmaxダウン(Max HP Down)
		145, -- MPmaxダウン(Max MP Down)
		146, -- 命中率ダウン(Accuracy Down)
		147, -- 攻撃力ダウン(Attack Down)
		148, -- 回避率ダウン(Evasion Down)
		149, -- 防御力ダウン(Defense Down)

		155, -- 服薬中(medicine)
		156, -- フラッシュ(Flash)
		157, -- サポートジョブ無効(SJ Restriction)
		158, -- 挑発(Provoke)
		159, -- ペナルティ(penalty)
			
		167, -- 魔法防御力ダウン(Magic Def. Down)
		168, -- インヒビットTP(Inhibit TP)
			
		174, -- 魔法命中率ダウン(Magic Acc. Down)
		175, -- 魔法攻撃力ダウン(Magic Atk. Down)
			
		177, -- 装備変更不可(encumbrance)

		186, -- 計略(Helix)
		189, -- TPmaxダウン(Max TP Down)

		192, -- レクイエム(Requiem)
		193, -- ララバイ(Lullaby)
		194, -- エレジー(Elegy)

		217, -- スレノディ(Threnody)

		223, -- ノクターン(Nocturne)

		298, -- 被クリティカルヒット率アップ(critical hit evasion down)

		299, -- オーバーロード(Overload)

		378, -- ドレインデイズ(Drain Daze)
		379, -- アスピルデイズ(Aspir Daze)
		380, -- ヘイストデイズ(Haste Daze)
			
		386, -- クイックステップ1(Lethargic Daze 1)
		387, -- クイックステップ2(Lethargic Daze 2)
		388, -- クイックステップ3(Lethargic Daze 3)
		389, -- クイックステップ4(Lethargic Daze 4)
		390, -- クイックステップ5(Lethargic Daze 5)
		391, -- ボックスステップ1(Sluggish Daze 1)
		392, -- ボックスステップ2(Sluggish Daze 2)
		393, -- ボックスステップ3(Sluggish Daze 3)
		394, -- ボックスステップ4(Sluggish Daze 4)
		395, -- ボックスステップ5(Sluggish Daze 5)
		396, -- スタッターステップ1(Weakened Daze 1)
		397, -- スタッターステップ2(Weakened Daze 2)
		398, -- スタッターステップ3(Weakened Daze 3)
		399, -- スタッターステップ4(Weakened Daze 4)
		400, -- スタッターステップ5(Weakened Daze 5)

		404, -- 魔法回避率ダウン(Magic Evasion Down)

		448, -- フェザーステップ1(Bewildered Daze 1)
		449, -- フェザーステップ2(Bewildered Daze 2)
		450, -- フェザーステップ3(Bewildered Daze 3)
		451, -- フェザーステップ4(Bewildered Daze 4)
		452, -- フェザーステップ5(Bewildered Daze 5)

		463, -- セプルカー(Sepulcher)
		464, -- アルケインクレスト(Arcane Crest)
		465, -- 破魔の刃(Hamanoha)
		466, -- ドラゴンブレイカー(Dragon Breaker)

		473, -- アイテム使用不可(muddle)

		540, -- ポイズン(poison)

		557, -- 攻撃力ダウン(Attack Down)
		558, -- 防御力ダウン(Defense Down)
		559, -- 魔法攻撃力ダウン(Magic Atk. Down)
		560, -- 魔法防御力ダウン(Magic Def. Down)
		561, -- 命中率ダウン(Accuracy Down)
		562, -- 回避率ダウン(Evasion Down)
		563, -- 魔法命中率ダウン(Magic Acc. Down)
		564, -- 魔法回避率ダウン(Magic Evasion Down)
		565, -- スロウ(slow)
		566, -- 麻痺(paralysis)
		567, -- ヘヴィ(weight)
		
		571, -- レイク(Rayke)
		572, -- 回避能力ダウン(Avoidance Down)
		
		576, -- 減退中(Doubt)
		
		597, -- イナンデーション(Inundation)
	},

	-- 魔法による基本効果時間
	SpellEffectDurations =
	{
		[    1 ] = {    0 },		-- ケアル
		[    2 ] = {    0 },		-- ケアルⅡ
		[    3 ] = {    0 },		-- ケアルⅢ
		[    4 ] = {    0 },		-- ケアルⅣ
		[    5 ] = {    0 },		-- ケアルⅤ
		[    6 ] = {    0 },		-- ケアルⅥ
		[    7 ] = {    0 },		-- ケアルガ
		[    8 ] = {    0 },		-- ケアルガⅡ
		[    9 ] = {    0 },		-- ケアルガⅢ
		[   10 ] = {    0 },		-- ケアルガⅣ
		[   11 ] = {    0 },		-- ケアルガⅤ
		[   12 ] = {    0 },		-- レイズ
		[   13 ] = {    0 },		-- レイズⅡ
		[   14 ] = {    0 },		-- ポイゾナ
		[   15 ] = {    0 },		-- パラナ
		[   16 ] = {    0 },		-- ブライナ
		[   17 ] = {    0 },		-- サイレナ
		[   18 ] = {    0 },		-- ストナ
		[   19 ] = {    0 },		-- ウィルナ
		[   20 ] = {    0 },		-- カーズナ
		[   21 ] = {    0 },		-- ホーリー
		[   22 ] = {    0 },		-- ホーリーⅡ

		[   23 ] = {   60 },		-- ディア
		[   24 ] = {  120 },		-- ディアⅡ
		[   25 ] = {  180 },		-- ディアⅢ
		[   26 ] = {  240 },		-- ディアⅣ
		[   27 ] = {  300 },		-- ディアⅤ

		[   28 ] = {    0 },		-- バニシュ
		[   29 ] = {    0 },		-- バニシュⅡ
		[   30 ] = {    0 },		-- バニシュⅢ
		[   31 ] = {    0 },		-- バニシュⅣ
		[   32 ] = {    0 },		-- バニシュⅤ

		[   33 ] = {   60 },		-- ディアガ
		[   34 ] = {  120 },		-- ディアガⅡ
		[   35 ] = {  180 },		-- ディアガⅢ
		[   36 ] = {  240 },		-- ディアガⅣ
		[   37 ] = {  300 },		-- ディアガⅤ

		[   38 ] = {    0 },		-- バニシュガ
		[   39 ] = {    0 },		-- バニシュガⅡ
		[   40 ] = {    0 },		-- バニシュガⅢ
		[   41 ] = {    0 },		-- バニシュガⅣ
		[   42 ] = {    0 },		-- バニシュガⅤ

		[   43 ] = { 1800 },		-- プロテス
		[   44 ] = { 1800 },		-- プロテスⅡ
		[   45 ] = { 1800 },		-- プロテスⅢ
		[   46 ] = { 1800 },		-- プロテスⅣ
		[   47 ] = { 1800 },		-- プロテスⅤ

		[   48 ] = { 1800 },		-- シェル
		[   49 ] = { 1800 },		-- シェルⅡ
		[   50 ] = { 1800 },		-- シェルⅢ
		[   51 ] = { 1800 },		-- シェルⅣ
		[   52 ] = { 1800 },		-- シェルⅤ

		[   53 ] = {  300 },		-- ブリンク
		[   54 ] = {  300 },		-- ストンスキン
		[   55 ] = {  600 },		-- アクアベール

		[   56 ] = {  180 },		-- スロウ

		[   57 ] = {  180 },		-- ヘイスト

		[   58 ] = {  180 },		-- パライズ
		[   59 ] = {  120 },		-- サイレス

		[   60 ] = {  480 },		-- バファイ
		[   61 ] = {  480 },		-- バブリザ
		[   62 ] = {  480 },		-- バエアロ
		[   63 ] = {  480 },		-- バストン
		[   64 ] = {  480 },		-- バサンダ
		[   65 ] = {  480 },		-- バウォタ
		[   66 ] = {  480 },		-- バファイラ
		[   67 ] = {  480 },		-- バブリザラ
		[   68 ] = {  480 },		-- バエアロラ
		[   69 ] = {  480 },		-- バストンラ
		[   70 ] = {  480 },		-- バサンダラ
		[   71 ] = {  480 },		-- バウォタラ
		[   72 ] = {  480 },		-- バスリプル
		[   73 ] = {  480 },		-- バポイズン
		[   74 ] = {  480 },		-- バパライズ
		[   75 ] = {  480 },		-- バブライン
		[   76 ] = {  480 },		-- バサイレス
		[   77 ] = {  480 },		-- バブレイク
		[   78 ] = {  480 },		-- バウィルス

		[   79 ] = {  180 },		-- スロウⅡ
		[   80 ] = {  120 },		-- パライズⅡ
		
		[   84 ] = {  480 },		-- バアムネジア
		[   85 ] = {  480 },		-- バアムネジラ
		[   86 ] = {  480 },		-- バスリプラ
		[   87 ] = {  480 },		-- バポイゾラ
		[   88 ] = {  480 },		-- バパライラ
		[   89 ] = {  480 },		-- バブライラ
		[   90 ] = {  480 },		-- バサイレラ
		[   91 ] = {  480 },		-- バブレクラ
		[   92 ] = {  480 },		-- バウィルラ

		[   93 ] = {    0 },		-- ケアルラ
		[   94 ] = {    0 },		-- サクリファイス
		[   95 ] = {    0 },		-- エスナ

		[   96 ] = {  180 },		-- オースピス
		[   97 ] = {   60 },		-- リアクト
		[   98 ] = {   90 },		-- リポーズ

		[   99 ] = {  180 },		-- 砂塵の陣

		[  100 ] = {  180 },		-- エンファイア
		[  101 ] = {  180 },		-- エンブリザド
		[  102 ] = {  180 },		-- エンエアロ
		[  103 ] = {  180 },		-- エンストーン
		[  104 ] = {  180 },		-- エンサンダー
		[  105 ] = {  180 },		-- エンウォータ

		[  106 ] = {  180 },		-- ファランクス
		[  107 ] = {  240 },		-- ファランクスⅡ

		[  108 ] = {   75 },		-- リジェネ
		[  109 ] = {  150 },		-- リフレシュ

		[  110 ] = {   60 },		-- リジェネⅡ
		[  111 ] = {   60 },		-- リジェネⅢ

		[  112 ] = {   12 },		-- フラッシュ

		[  113 ] = {  180 },		-- 豪雨の陣
		[  114 ] = {  180 },		-- 烈風の陣
		[  115 ] = {  180 },		-- 熱波の陣
		[  116 ] = {  180 },		-- 吹雪の陣
		[  117 ] = {  180 },		-- 疾雷の陣
		[  118 ] = {  180 },		-- 妖霧の陣
		[  119 ] = {  180 },		-- 極光の陣

		[  120 ] = {    0 },		-- テレポヨト
		[  121 ] = {    0 },		-- テレポルテ
		[  122 ] = {    0 },		-- テレポホラ
		[  123 ] = {    0 },		-- テレポデム
		[  124 ] = {    0 },		-- テレポメア

		[  125 ] = { 1800 },		-- プロテア
		[  126 ] = { 1800 },		-- プロテアⅡ
		[  127 ] = { 1800 },		-- プロテアⅢ
		[  128 ] = { 1800 },		-- プロテアⅣ
		[  129 ] = { 1800 },		-- プロテアⅤ

		[  130 ] = { 1800 },		-- シェルラ
		[  131 ] = { 1800 },		-- シェルラⅡ
		[  132 ] = { 1800 },		-- シェルラⅢ
		[  133 ] = { 1800 },		-- シェルラⅣ
		[  134 ] = { 1800 },		-- シェルラⅤ

		[  135 ] = { 3600 },		-- リレイズ
		[  136 ] = {  180 },		-- インビジ
		[  137 ] = {  480 },		-- スニーク
		[  138 ] = {  480 },		-- デオード

		[  139 ] = {    0 },		-- テレポヴァズ
		[  140 ] = {    0 },		-- レイズⅢ

		[  141 ] = { 3600 },		-- リレイズⅡ
		[  142 ] = { 3600 },		-- リレイズⅢ

		[  143 ] = {    0 },		-- イレース

		[  144 ] = {    0 },		-- ファイア
		[  145 ] = {    0 },		-- ファイアⅡ
		[  146 ] = {    0 },		-- ファイアⅢ
		[  147 ] = {    0 },		-- ファイアⅣ
		[  148 ] = {    0 },		-- ファイアⅤ
		[  149 ] = {    0 },		-- ブリザド
		[  150 ] = {    0 },		-- ブリザドⅡ
		[  151 ] = {    0 },		-- ブリザドⅢ
		[  152 ] = {    0 },		-- ブリザドⅣ
		[  153 ] = {    0 },		-- ブリザドⅤ
		[  154 ] = {    0 },		-- エアロ
		[  155 ] = {    0 },		-- エアロⅡ
		[  156 ] = {    0 },		-- エアロⅢ
		[  157 ] = {    0 },		-- エアロⅣ
		[  158 ] = {    0 },		-- エアロⅤ
		[  159 ] = {    0 },		-- ストーン
		[  160 ] = {    0 },		-- ストーンⅡ
		[  161 ] = {    0 },		-- ストーンⅢ
		[  162 ] = {    0 },		-- ストーンⅣ
		[  163 ] = {    0 },		-- ストーンⅤ
		[  164 ] = {    0 },		-- サンダー
		[  165 ] = {    0 },		-- サンダーⅡ
		[  166 ] = {    0 },		-- サンダーⅢ
		[  167 ] = {    0 },		-- サンダーⅣ
		[  168 ] = {    0 },		-- サンダーⅤ
		[  169 ] = {    0 },		-- ウォータ
		[  170 ] = {    0 },		-- ウォータⅡ
		[  171 ] = {    0 },		-- ウォータⅢ
		[  172 ] = {    0 },		-- ウォータⅣ
		[  173 ] = {    0 },		-- ウォータⅤ
		[  174 ] = {    0 },		-- ファイガ
		[  175 ] = {    0 },		-- ファイガⅡ
		[  176 ] = {    0 },		-- ファイガⅢ
		[  177 ] = {    0 },		-- ファイガⅣ
		[  178 ] = {    0 },		-- ファイガⅤ
		[  179 ] = {    0 },		-- ブリザガ
		[  180 ] = {    0 },		-- ブリザガⅡ
		[  181 ] = {    0 },		-- ブリザガⅢ
		[  182 ] = {    0 },		-- ブリザガⅣ
		[  183 ] = {    0 },		-- ブリザガⅤ
		[  184 ] = {    0 },		-- エアロガ
		[  185 ] = {    0 },		-- エアロガⅡ
		[  186 ] = {    0 },		-- エアロガⅢ
		[  187 ] = {    0 },		-- エアロガⅣ
		[  188 ] = {    0 },		-- エアロガⅤ
		[  189 ] = {    0 },		-- ストンガ
		[  190 ] = {    0 },		-- ストンガⅡ
		[  191 ] = {    0 },		-- ストンガⅢ
		[  192 ] = {    0 },		-- ストンガⅣ
		[  193 ] = {    0 },		-- ストンガⅤ
		[  194 ] = {    0 },		-- サンダガ
		[  195 ] = {    0 },		-- サンダガⅡ
		[  196 ] = {    0 },		-- サンダガⅢ
		[  197 ] = {    0 },		-- サンダガⅣ
		[  198 ] = {    0 },		-- サンダガⅤ
		[  199 ] = {    0 },		-- ウォタガ
		[  200 ] = {    0 },		-- ウォタガⅡ
		[  201 ] = {    0 },		-- ウォタガⅢ
		[  202 ] = {    0 },		-- ウォタガⅣ
		[  203 ] = {    0 },		-- ウォタガⅤ
		[  204 ] = {    0 },		-- フレア
		[  205 ] = {    0 },		-- フレアⅡ
		[  206 ] = {    0 },		-- フリーズ
		[  207 ] = {    0 },		-- フリーズⅡ
		[  208 ] = {    0 },		-- トルネド
		[  209 ] = {    0 },		-- トルネドⅡ
		[  210 ] = {    0 },		-- クエイク
		[  211 ] = {    0 },		-- クエイクⅡ
		[  212 ] = {    0 },		-- バースト
		[  213 ] = {    0 },		-- バーストⅡ
		[  214 ] = {    0 },		-- フラッド
		[  215 ] = {    0 },		-- フラッドⅡ

		[  216 ] = {   75 },		-- グラビデ
		[  217 ] = {   90 },		-- グラビデⅡ

		[  218 ] = {    0 },		-- メテオ
		[  219 ] = {    0 },		-- コメット

		[  220 ] = {   90 },		-- ポイズン
		[  221 ] = {  120 },		-- ポイズンⅡ
		[  222 ] = {  150 },		-- ポイズンⅢ
		[  223 ] = {  180 },		-- ポイズンⅣ
		[  224 ] = {  210 },		-- ポイズンⅤ

		[  225 ] = {   90 },		-- ポイゾガ
		[  226 ] = {  120 },		-- ポイゾガⅡ
		[  227 ] = {  150 },		-- ポイゾガⅢ
		[  228 ] = {  180 },		-- ポイゾガⅣ
		[  229 ] = {  210 },		-- ポイゾガⅤ

		[  230 ] = {   60 },		-- バイオ
		[  231 ] = {  120 },		-- バイオⅡ
		[  232 ] = {  180 },		-- バイオⅢ
		[  233 ] = {  240 },		-- バイオⅣ
		[  234 ] = {  300 },		-- バイオⅤ

		[  235 ] = {   90 },		-- バーン
		[  236 ] = {   90 },		-- フロスト
		[  237 ] = {   90 },		-- チョーク
		[  238 ] = {   90 },		-- ラスプ
		[  239 ] = {   90 },		-- ショック
		[  240 ] = {   90 },		-- ドラウン

		[  241 ] = {    0 },		-- リトレース
		[  242 ] = {   90 },		-- アブゾアキュル
		[  243 ] = {    0 },		-- アブゾアトリ
		[  244 ] = {    0 },		-- メテオⅡ
		[  245 ] = {    0 },		-- ドレイン
		[  246 ] = {    0 },		-- ドレインⅡ
		[  247 ] = {    0 },		-- アスピル
		[  248 ] = {    0 },		-- アスピルⅡ

		[  249 ] = {  180 },		-- ブレイズスパイク
		[  250 ] = {  180 },		-- アイススパイク
		[  251 ] = {  180 },		-- ショックスパイク

		[  252 ] = {   12 },		-- スタン
		[  253 ] = {   60 },		-- スリプル
		[  254 ] = {  180 },		-- ブライン
		[  255 ] = {   30 },		-- ブレイク
		[  256 ] = {  480 },		-- ウィルス
		[  257 ] = { 1800 },		-- カーズ
		[  258 ] = {   60 },		-- バインド
		[  259 ] = {   90 },		-- スリプルII

		[  260 ] = {    0 },		-- ディスペル
		[  261 ] = {    0 },		-- デジョン
		[  262 ] = {    0 },		-- デジョンⅡ
		[  263 ] = {    0 },		-- エスケプ
		[  264 ] = {    0 },		-- トラクタ
		[  265 ] = {    0 },		-- トラクタⅡ

		[  266 ] = {   90 },		-- アブゾースト
		[  267 ] = {   90 },		-- アブゾデック
		[  268 ] = {   90 },		-- アブゾバイト
		[  269 ] = {   90 },		-- アブゾアジル
		[  270 ] = {   90 },		-- アブゾイン
		[  271 ] = {   90 },		-- アブゾマイン
		[  272 ] = {   90 },		-- アブゾカリス

		[  273 ] = {   60 },		-- スリプガ
		[  274 ] = {   90 },		-- スリプガII
		[  275 ] = {   90 },		-- アブゾタック
		[  276 ] = {  180 },		-- ブラインⅡ
		[  277 ] = {  180 },		-- ドレッドスパイク

		[  278 ] = {  230 },		-- 土門の計
		[  279 ] = {  230 },		-- 水門の計
		[  280 ] = {  230 },		-- 風門の計
		[  281 ] = {  230 },		-- 火門の計
		[  282 ] = {  230 },		-- 氷門の計
		[  283 ] = {  230 },		-- 雷門の計
		[  284 ] = {  230 },		-- 闇門の計
		[  285 ] = {  230 },		-- 光門の計

		[  286 ] = {  180 },		-- アドル

		[  287 ] = {  300 },		-- 虚誘掩殺の策

		[  288 ] = {    0 },		-- 火精霊召喚
		[  289 ] = {    0 },		-- 氷精霊召喚
		[  290 ] = {    0 },		-- 風精霊召喚
		[  291 ] = {    0 },		-- 土精霊召喚
		[  292 ] = {    0 },		-- 雷精霊召喚
		[  293 ] = {    0 },		-- 水精霊召喚
		[  294 ] = {    0 },		-- 光精霊召喚
		[  295 ] = {    0 },		-- 闇精霊召喚
		[  296 ] = {    0 },		-- カーバンクル召喚
		[  297 ] = {    0 },		-- フェンリル召喚
		[  298 ] = {    0 },		-- イフリート召喚
		[  299 ] = {    0 },		-- タイタン召喚
		[  300 ] = {    0 },		-- リヴァイアサン召喚
		[  301 ] = {    0 },		-- ガルーダ召喚
		[  302 ] = {    0 },		-- シヴァ召喚
		[  303 ] = {    0 },		-- ラムウ召喚
		[  304 ] = {    0 },		-- ディアボロス召喚
		[  305 ] = {    0 },		-- オーディン召喚
		[  306 ] = {    0 },		-- アレキサンダー召喚
		[  307 ] = {    0 },		-- ケット・シー召喚

		[  308 ] = {  180 },		-- 悪事千里の策
		[  309 ] = {  180 },		-- 暗中飛躍の策

		[  310 ] = {  180 },		-- エンライト
		[  311 ] = {  180 },		-- エンダーク
		[  312 ] = {  180 },		-- エンファイアⅡ
		[  313 ] = {  180 },		-- エンブリザドⅡ
		[  314 ] = {  180 },		-- エンエアロⅡ
		[  315 ] = {  180 },		-- エンストーンⅡ
		[  316 ] = {  180 },		-- エンサンダーⅡ
		[  317 ] = {  180 },		-- エンウォータⅡ

		[  318 ] = {  420 },		-- 物見の術:壱
		[  319 ] = {  120 },		-- 哀車の術:壱

		[  320 ] = {   15 },		-- 火遁の術:壱
		[  321 ] = {   15 },		-- 火遁の術:弐
		[  322 ] = {   15 },		-- 火遁の術:参
		[  323 ] = {   15 },		-- 氷遁の術:壱
		[  324 ] = {   15 },		-- 氷遁の術:弐
		[  325 ] = {   15 },		-- 氷遁の術:参
		[  326 ] = {   15 },		-- 風遁の術:壱
		[  327 ] = {   15 },		-- 風遁の術:弐
		[  328 ] = {   15 },		-- 風遁の術:参
		[  329 ] = {   15 },		-- 土遁の術:壱
		[  330 ] = {   15 },		-- 土遁の術:弐
		[  331 ] = {   15 },		-- 土遁の術:参
		[  332 ] = {   15 },		-- 雷遁の術:壱
		[  333 ] = {   15 },		-- 雷遁の術:弐
		[  334 ] = {   15 },		-- 雷遁の術:参
		[  335 ] = {   15 },		-- 水遁の術:壱
		[  336 ] = {   15 },		-- 水遁の術:弐
		[  337 ] = {   15 },		-- 水遁の術:参

		[  338 ] = {  900 },		-- 空蝉の術:壱
		[  339 ] = {  900 },		-- 空蝉の術:弐
		[  340 ] = {  900 },		-- 空蝉の術:参
		[  341 ] = {  120 },		-- 呪縛の術:壱
		[  342 ] = {  120 },		-- 呪縛の術:弐
		[  343 ] = {  120 },		-- 呪縛の術:参
		[  344 ] = {  300 },		-- 捕縄の術:壱
		[  345 ] = {  300 },		-- 捕縄の術:弐
		[  346 ] = {  300 },		-- 捕縄の術:参
		[  347 ] = {  180 },		-- 暗闇の術:壱
		[  348 ] = {  180 },		-- 暗闇の術:弐
		[  349 ] = {  180 },		-- 暗闇の術:参
		[  350 ] = {   90 },		-- 毒盛の術:壱
		[  351 ] = {  120 },		-- 毒盛の術:弐
		[  352 ] = {  150 },		-- 毒盛の術:参
		[  353 ] = {  420 },		-- 遁甲の術:壱
		[  354 ] = {  600 },		-- 遁甲の術:弐

		[  355 ] = {    0 },		-- セイレーン召喚

		[  356 ] = {  120 },		-- パライガ
		[  357 ] = {  180 },		-- スロウガ
		[  358 ] = {  180 },		-- ヘイスガ
		[  359 ] = {  120 },		-- サイレガ

		[  360 ] = {    0 },		-- ディスペガ

		[  361 ] = {  180 },		-- ブライガ
		[  362 ] = {   60 },		-- バインガ
		[  363 ] = {   60 },		-- スリプガ
		[  364 ] = {   90 },		-- スリプガⅡ
		[  365 ] = {   30 },		-- ブレクガ
		[  366 ] = {   75 },		-- グラビガ

		[  367 ] = {    0 },		-- デス

		[  368 ] = {   64 },		-- 魔物のレクイエム
		[  369 ] = {   80 },		-- 魔物のレクイエムⅡ
		[  370 ] = {   96 },		-- 魔物のレクイエムⅢ
		[  371 ] = {  112 },		-- 魔物のレクイエムⅣ
		[  372 ] = {  128 },		-- 魔物のレクイエムⅤ
		[  373 ] = {  144 },		-- 魔物のレクイエムⅥ
		[  374 ] = {  160 },		-- 魔物のレクイエムⅦ
		[  375 ] = {  176 },		-- 魔物のレクイエムⅧ

		[  376 ] = {   30 },		-- 魔物達のララバイ
		[  377 ] = {   60 },		-- 魔物達のララバイⅡ

		[  378 ] = {  120 },		-- 戦士達のピーアン
		[  379 ] = {  120 },		-- 戦士達のピーアンⅡ
		[  380 ] = {  120 },		-- 戦士達のピーアンⅢ
		[  381 ] = {  120 },		-- 戦士達のピーアンⅣ
		[  382 ] = {  120 },		-- 戦士達のピーアンⅤ
		[  383 ] = {  120 },		-- 戦士達のピーアンⅥ
		[  384 ] = {  120 },		-- 戦士達のピーアンⅦ
		[  385 ] = {  120 },		-- 戦士達のピーアンⅧ

		[  386 ] = {  120 },		-- 魔道士のバラード
		[  387 ] = {  120 },		-- 魔道士のバラードⅡ
		[  388 ] = {  120 },		-- 魔道士のバラードⅢ

		[  389 ] = {  120 },		-- 重装騎兵のミンネ
		[  390 ] = {  120 },		-- 重装騎兵のミンネⅡ
		[  391 ] = {  120 },		-- 重装騎兵のミンネⅢ
		[  392 ] = {  120 },		-- 重装騎兵のミンネⅣ
		[  393 ] = {  120 },		-- 重装騎兵のミンネⅤ

		[  394 ] = {  120 },		-- 猛者のメヌエット
		[  395 ] = {  120 },		-- 猛者のメヌエットⅡ
		[  396 ] = {  120 },		-- 猛者のメヌエットⅢ
		[  397 ] = {  120 },		-- 猛者のメヌエットⅣ
		[  398 ] = {  120 },		-- 猛者のメヌエットⅤ

		[  399 ] = {  120 },		-- 剣闘士のマドリガル
		[  400 ] = {  120 },		-- 剣豪のマドリガル
		[  401 ] = {  120 },		-- 狩人のプレリュード
		[  402 ] = {  120 },		-- 弓師のプレリュード
		[  403 ] = {  120 },		-- 闘羊士のマンボ
		[  404 ] = {  120 },		-- 闘龍士のマンボ
		[  405 ] = {  120 },		-- 鶏のオーバード
		[  406 ] = {  120 },		-- 薬草のパストラル
		[  407 ] = {  120 },		-- チョコボのハミング
		[  408 ] = {  120 },		-- 光明のファンタジア
		[  409 ] = {  120 },		-- 小話のオペレッタ
		[  410 ] = {  120 },		-- 腹話のオペレッタ
		[  411 ] = {  120 },		-- 道化のオペレッタ
		[  412 ] = {  120 },		-- 黄金のカプリチオ
		[  413 ] = {  120 },		-- 献身のセレナーデ
		[  414 ] = {  120 },		-- 破邪のロンド
		[  415 ] = {  120 },		-- ゴブリンのガボット
		[  416 ] = {  120 },		-- サボテンダーフーガ
		[  417 ] = {  120 },		-- 栄典の戴冠マーチ
		[  418 ] = {  120 },		-- 静と情熱のアリア
		[  419 ] = {  120 },		-- 無敵の進撃マーチ
		[  420 ] = {  120 },		-- 栄光の凱旋マーチ
		[  421 ] = {  120 },		-- 戦場のエレジー
		[  422 ] = {  180 },		-- 修羅のエレジー
		[  423 ] = {  240 },		-- 地獄のエレジー
		[  424 ] = {  120 },		-- 剛力のエチュード
		[  425 ] = {  120 },		-- 器用のエチュード
		[  426 ] = {  120 },		-- 元気のエチュード
		[  427 ] = {  120 },		-- 機敏のエチュード
		[  428 ] = {  120 },		-- 知恵のエチュード
		[  429 ] = {  120 },		-- 精神のエチュード
		[  430 ] = {  120 },		-- 魅了のエチュード
		[  431 ] = {  120 },		-- 怪力のエチュード
		[  432 ] = {  120 },		-- 妙技のエチュード
		[  433 ] = {  120 },		-- 活力のエチュード
		[  434 ] = {  120 },		-- 俊敏のエチュード
		[  435 ] = {  120 },		-- 英知のエチュード
		[  436 ] = {  120 },		-- 理力のエチュード
		[  437 ] = {  120 },		-- 魅惑のエチュード
		[  438 ] = {  120 },		-- 耐火カロル第一楽章
		[  439 ] = {  120 },		-- 耐寒カロル第一楽章
		[  440 ] = {  120 },		-- 耐風カロル第一楽章
		[  441 ] = {  120 },		-- 耐震カロル第一楽章
		[  442 ] = {  120 },		-- 耐電カロル第一楽章
		[  443 ] = {  120 },		-- 耐波カロル第一楽章
		[  444 ] = {  120 },		-- 耐光カロル第一楽章
		[  445 ] = {  120 },		-- 耐闇カロル第一楽章
		[  446 ] = {  120 },		-- 耐火カロル第二楽章
		[  447 ] = {  120 },		-- 耐寒カロル第二楽章
		[  448 ] = {  120 },		-- 耐風カロル第二楽章
		[  449 ] = {  120 },		-- 耐震カロル第二楽章
		[  450 ] = {  120 },		-- 耐電カロル第二楽章
		[  451 ] = {  120 },		-- 耐波カロル第二楽章
		[  452 ] = {  120 },		-- 耐光カロル第二楽章
		[  453 ] = {  120 },		-- 耐闇カロル第二楽章
		[  454 ] = {   60 },		-- 炎のスレノディ
		[  455 ] = {   60 },		-- 氷のスレノディ
		[  456 ] = {   60 },		-- 風のスレノディ
		[  457 ] = {   60 },		-- 土のスレノディ
		[  458 ] = {   60 },		-- 雷のスレノディ
		[  459 ] = {   60 },		-- 水のスレノディ
		[  460 ] = {   60 },		-- 光のスレノディ
		[  461 ] = {   60 },		-- 闇のスレノディ

		[  462 ] = {    0 },		-- 魔法のフィナーレ

		[  463 ] = {   30 },		-- 魔物のララバイ
		[  464 ] = {  120 },		-- 女神のヒムヌス
		[  465 ] = {  120 },		-- チョコボのマズルカ
		[  466 ] = {  120 },		-- 乙女のヴィルレー
		[  467 ] = {  120 },		-- ラプトルのマズルカ
		[  468 ] = {  120 },		-- 魔物のシルベント
		[  469 ] = {  120 },		-- 冒険者のダージュ
		[  470 ] = {  120 },		-- 警戒のスケルツォ
		[  471 ] = {   60 },		-- 魔物のララバイⅡ
		[  472 ] = {  270 },		-- 恋情のノクターン

		[  473 ] = {  150 },		-- リフレシュⅡ

		[  474 ] = {    0 },		-- ケアルラⅡ
		[  475 ] = {    0 },		-- ケアルラⅢ

		[  476 ] = {  300 },		-- クルセード
		[  477 ] = {   60 },		-- リジェネⅣ
		[  478 ] = {   90 },		-- オーラ

		[  479 ] = {  300 },		-- アディスト
		[  480 ] = {  300 },		-- アディデック
		[  481 ] = {  300 },		-- アディバイト
		[  482 ] = {  300 },		-- アディアジル
		[  483 ] = {  300 },		-- アディイン
		[  484 ] = {  300 },		-- アディマイン
		[  485 ] = {  300 },		-- アディカリス
		[  486 ] = {  300 },		-- ゲインスト
		[  487 ] = {  300 },		-- ゲインデック
		[  488 ] = {  300 },		-- ゲインバイト
		[  489 ] = {  300 },		-- ゲインアジル
		[  490 ] = {  300 },		-- ゲインイン
		[  491 ] = {  300 },		-- ゲインマイン
		[  492 ] = {  300 },		-- ゲインカリス

		[  493 ] = {  180 },		-- ストライ

		[  494 ] = {    0 },		-- アレイズ

		[  495 ] = {  180 },		-- 鼓舞激励の策

		[  496 ] = {    0 },		-- ファイジャ
		[  497 ] = {    0 },		-- ブリザジャ
		[  498 ] = {    0 },		-- エアロジャ
		[  499 ] = {    0 },		-- ストンジャ
		[  500 ] = {    0 },		-- サンダジャ
		[  501 ] = {    0 },		-- ウォタジャ

		[  502 ] = {  180 },		-- メルトン
		[  503 ] = {  180 },		-- インパクト

		[  504 ] = {   60 },		-- リジェネⅤ

		[  505 ] = {  300 },		-- 月下の術:壱
		[  506 ] = {  300 },		-- 夜陰の術:壱
		[  507 ] = {  300 },		-- 妙手の術:壱
		[  508 ] = {  180 },		-- 幽林の術:壱
		[  509 ] = {  300 },		-- 活火の術:壱
		[  510 ] = {   60 },		-- 身替の術:壱

		[  511 ] = {  180 },		-- ヘイストⅡ

		[  513 ] = {   90 },		-- ベノムシェル

		[  515 ] = {   90 },		-- メイルシュトロム

		[  517 ] = {  900 },		-- メタルボディ

		[  519 ] = {    0 },		-- S.ドライバー

		[  521 ] = {    0 },		-- MP吸収キッス
		[  522 ] = {    0 },		-- デスレイ

		[  524 ] = {   30 },		-- 土竜巻

		[  527 ] = {    0 },		-- 怒りの一撃
		[  529 ] = {    0 },		-- メッタ打ち

		[  530 ] = {  300 },		-- リフュエリング
		[  531 ] = {   60 },		-- アイスブレイク
		[  532 ] = {    8 },		-- B.シュトラール

		[  533 ] = {    0 },		-- 自爆

		[  534 ] = {   68 },		-- 神秘の光
		[  535 ] = {   90 },		-- コールドウェーブ
		[  536 ] = {   25 },		-- ポイズンブレス

		[  537 ] = {   60 },		-- スティンキングガス
		[  538 ] = {   60 },		-- メメントモーリ
		[  539 ] = {   60 },		-- テラータッチ
		[  540 ] = {   60 },		-- スパイナルクリーブ
		[  541 ] = {   60 },		-- ブラッドセイバー
		[  542 ] = {   60 },		-- 消化
		[  543 ] = {   60 },		-- M.バイト
		[  544 ] = {   60 },		-- カースドスフィア
		[  545 ] = {   60 },		-- シックルスラッシュ

		[  547 ] = {   90 },		-- コクーン
		[  548 ] = {   60 },		-- F.ホールド
		[  549 ] = {   60 },		-- 花粉

		[  551 ] = {   60 },		-- パワーアタック

		[  554 ] = {   60 },		-- デスシザース
		[  555 ] = {   60 },		-- 磁鉄粉

		[  557 ] = {   60 },		-- アイズオンミー

		[  560 ] = {   60 },		-- F.リップ
		[  561 ] = {   60 },		-- フライトフルロア

		[  563 ] = {   60 },		-- ヘカトンウェーブ
		[  564 ] = {   60 },		-- ボディプレス

		[  565 ] = {   60 },		-- R.ブレス

		[  567 ] = {   60 },		-- ヘルダイブ

		[  569 ] = {   60 },		-- ジェットストリーム
		[  570 ] = {   60 },		-- 吸血

		[  572 ] = {   90 },		-- サウンドブラスト
		[  573 ] = {   60 },		-- フェザーティックル
		[  574 ] = {   30 },		-- フェザーバリア
		[  575 ] = {    2 },		-- ジェタチュラ
		[  576 ] = {   90 },		-- ヤーン
		[  577 ] = {   60 },		-- フットキック
		[  578 ] = {   60 },		-- ワイルドカロット
		[  579 ] = {   60 },		-- 吸印

		[  581 ] = {   60 },		-- いやしの風
		[  582 ] = {   60 },		-- カオティックアイ

		[  584 ] = {   60 },		-- シープソング
		[  585 ] = {   60 },		-- ラムチャージ

		[  587 ] = {   60 },		-- クローサイクロン
		[  588 ] = {   60 },		-- ロウイン
		[  589 ] = {   60 },		-- 次元殺

		[  591 ] = {   60 },		-- 火炎の息
		[  592 ] = {   60 },		-- ブランクゲイズ
		[  593 ] = {   60 },		-- マジックフルーツ
		[  594 ] = {   60 },		-- アッパーカット
		[  595 ] = {   60 },		-- 針千本
		[  596 ] = {   60 },		-- まつぼっくり爆弾
		[  597 ] = {   60 },		-- スプラウトスマック
		[  598 ] = {   60 },		-- サペリフィック
		[  599 ] = {   60 },		-- マヨイタケ

		[  603 ] = {   60 },		-- 種まき
		[  604 ] = {   60 },		-- 臭い息
		[  605 ] = {   60 },		-- ガイストウォール
		[  606 ] = {   60 },		-- アーフルアイ

		[  608 ] = {   60 },		-- フロストブレス

		[  610 ] = {   60 },		-- 超低周波
		[  611 ] = {   60 },		-- ディセバーメント
		[  612 ] = {   60 },		-- A.バースト
		[  613 ] = {  180 },		-- 反応炉冷却
		[  614 ] = {  120 },		-- セイリーンコート
		[  615 ] = {  750 },		-- プラズマチャージ
		[  616 ] = {   60 },		-- テンポラルシフト
		[  617 ] = {   60 },		-- バーチカルクリーヴ
		[  618 ] = {   60 },		-- 炸裂弾

		[  620 ] = {   60 },		-- バトルダンス
		[  621 ] = {   60 },		-- サンドスプレー
		[  622 ] = {   60 },		-- グランドスラム
		[  623 ] = {   60 },		-- ヘッドバット

		[  626 ] = {   60 },		-- 爆弾投げ

		[  628 ] = {   60 },		-- フライパン
		[  629 ] = {   60 },		-- F.ヒッププレス

		[  631 ] = {   60 },		-- ハイドロショット
		[  632 ] = {   90 },		-- 金剛身
		[  633 ] = {   60 },		-- 吶喊
		[  634 ] = {   60 },		-- 贖罪の光

		[  636 ] = {  180 },		-- ワームアップ
		[  637 ] = {   60 },		-- ファイアースピット
		[  638 ] = {   60 },		-- 羽根吹雪

		[  640 ] = {   60 },		-- テールスラップ
		[  641 ] = {   60 },		-- H.バラージ
		[  642 ] = {   90 },		-- ねたみ種
		[  643 ] = {   60 },		-- キャノンボール
		[  644 ] = {  120 },		-- マインドブラスト
		[  645 ] = {   60 },		-- イグジュビエーション
		[  646 ] = {   60 },		-- マジックハンマー
		[  647 ] = {  900 },		-- ゼファーマント
		[  648 ] = {   60 },		-- リガージテーション

		[  650 ] = {   60 },		-- シードスプレー
		[  651 ] = {   60 },		-- コローシブウーズ
		[  652 ] = {   60 },		-- スパイラルスピン
		[  653 ] = {   60 },		-- アシュラクロー
		[  654 ] = {   60 },		-- サブゼロスマッシュ
		[  655 ] = {   90 },		-- 共鳴
		[  656 ] = {  120 },		-- アクリッドストリーム
		[  657 ] = {   60 },		-- ブレーズバウンド
		[  658 ] = {   60 },		-- P.エンブレイス
		[  659 ] = {   30 },		-- D.ロア
		[  660 ] = {   60 },		-- C.ディスチャージ
		[  661 ] = {  300 },		-- 鯨波
		[  662 ] = {  300 },		-- バッテリーチャージ
		[  663 ] = {   60 },		-- リーフストーム
		[  664 ] = {   90 },		-- リジェネレーション
		[  665 ] = {   60 },		-- ファイナルスピア
		[  666 ] = {   60 },		-- ゴブリンラッシュ
		[  667 ] = {   60 },		-- バニティダイブ
		[  668 ] = {  900 },		-- マジックバリア
		[  669 ] = {   60 },		-- 怒りの旋風
		[  670 ] = {   60 },		-- ベンシクタイフーン
		[  671 ] = {   60 },		-- オーロラルドレープ
		[  672 ] = {   60 },		-- オスモーシス
		[  673 ] = {   60 },		-- 四連突
		[  674 ] = {  180 },		-- ファンタッド
		[  675 ] = {   60 },		-- サーマルパルス

		[  677 ] = {   60 },		-- エンプティスラッシュ
		[  678 ] = {   90 },	-- 夢想花
		[  679 ] = {  300 },		-- オカルテーション
		[  680 ] = {   60 },		-- チャージドホイスカー
		[  681 ] = {   60 },		-- 虚無の風
		[  682 ] = {   60 },		-- デルタスラスト
		[  683 ] = {   60 },		-- みんなの怨み
		[  684 ] = {   60 },		-- リービンウィンド
		[  685 ] = {  180 },		-- 牙門
		[  686 ] = {   60 },		-- モータルレイ
		[  687 ] = {   60 },		-- 水風船爆弾
		[  688 ] = {   60 },		-- 重い一撃
		[  689 ] = {   60 },		-- ダークオーブ
		[  690 ] = {   60 },		-- ホワイトウィンド

		[  692 ] = {   60 },		-- サドンランジ
		[  693 ] = {   60 },		-- クアドラストライク
		[  694 ] = {   60 },		-- ヴェイパースプレー
		[  695 ] = {   60 },		-- サンダーブレス
		[  696 ] = {  180 },		-- カウンタースタンス
		[  697 ] = {   60 },		-- 槍玉
		[  698 ] = {   60 },		-- ウィンドブレス
		[  699 ] = {  180 },		-- 偃月刃
		[  700 ] = {   90 },		-- N.メディテイト
		[  701 ] = {   60 },		-- T.アップヒーヴ
		[  702 ] = {   60 },		-- R.デルージュ
		[  703 ] = {  180 },		-- エンバームアース
		[  704 ] = {  120 },		-- パラライズトライアド
		[  705 ] = {  180 },		-- ファウルウォーター
		[  706 ] = {   60 },		-- グルーティナスダート
		[  707 ] = {   60 },		-- レテナグレア
		[  708 ] = {  120 },		-- サブダックション
		[  709 ] = {   60 },		-- T.アッサルト
		[  710 ] = {  300 },		-- エラチックフラッター
		[  711 ] = {   60 },		-- レストラル
		[  712 ] = {   60 },		-- レールキャノン
		[  713 ] = {   60 },		-- ディフュージョンレイ
		[  714 ] = {   60 },		-- シンカードリル
		[  715 ] = {   60 },		-- モルトプルメイジ
		[  716 ] = {   30 },		-- ネクターデルージュ
		[  717 ] = {  120 },		-- スイープガウジ
		[  718 ] = {   60 },		-- A.ライベーション
		[  719 ] = {   90 },		-- シアリングテンペスト
		[  720 ] = {   30 },		-- スペクトラルフロー
		[  721 ] = {   60 },		-- アンビルライトニング
		[  722 ] = {   60 },		-- エントゥーム
		[  723 ] = {   60 },		-- サウリアンスライド
		[  724 ] = {   60 },		-- ポーリングサルヴォ
		[  725 ] = {   60 },		-- B.フルゴア
		[  726 ] = {  300 },		-- スカウリングスペイト
		[  727 ] = {  300 },		-- サイレントストーム
		[  728 ] = {  300 },		-- テネブラルクラッシュ

		[  736 ] = {   60 },		-- サンダーボルト
		[  737 ] = {   90 },		-- 甲羅強化
		[  738 ] = {   30 },		-- アブソルートテラー
		[  739 ] = {   60 },		-- ゲーツオブハデス
		[  740 ] = {   60 },		-- トゥールビヨン"
		[  741 ] = {  300 },		-- ポーラーブルワーク
		[  742 ] = {   60 },		-- ビルジストーム
		[  743 ] = {   60 },		-- ブラッドレイク
		[  744 ] = {   60 },		-- D.ワールウィンド
		[  745 ] = {   60 },		-- カルカリアンヴァーヴ
		[  746 ] = {   30 },		-- ブリスターローア
		[  747 ] = {   60 },		-- アップルート
		[  748 ] = {   60 },		-- クラッシュサンダー
		[  749 ] = {   60 },		-- ポラーロア
		[  750 ] = {  180 },		-- マイティガード
		[  751 ] = {   60 },		-- クルエルジョーク
		[  752 ] = {   60 },		-- セスプール
		[  753 ] = {   60 },		-- テーリングガスト

		[  768 ] = {   60 },		-- インデリジェネ
		[  769 ] = {   60 },		-- インデポイズン
		[  770 ] = {   60 },		-- インデリフレシュ
		[  771 ] = {   60 },		-- インデヘイスト
		[  772 ] = {   60 },		-- インデスト
		[  773 ] = {   60 },		-- インデデック
		[  774 ] = {   60 },		-- インデバイト
		[  775 ] = {   60 },		-- インデアジル
		[  776 ] = {   60 },		-- インデイン
		[  777 ] = {   60 },		-- インデマイン
		[  778 ] = {   60 },		-- インデカリス
		[  779 ] = {   60 },		-- インデフューリー
		[  780 ] = {   60 },		-- インデバリア
		[  781 ] = {   60 },		-- インデアキュメン
		[  782 ] = {   60 },		-- インデフェンド
		[  783 ] = {   60 },		-- インデプレサイス
		[  784 ] = {   60 },		-- インデヴォイダンス
		[  785 ] = {   60 },		-- インデフォーカス
		[  786 ] = {   60 },		-- インデアトゥーン
		[  787 ] = {   60 },		-- インデウィルト
		[  788 ] = {   60 },		-- インデフレイル
		[  789 ] = {   60 },		-- インデフェイド
		[  790 ] = {   60 },		-- インデマレーズ
		[  791 ] = {   60 },		-- インデスリップ
		[  792 ] = {   60 },		-- インデトーパー
		[  793 ] = {   60 },		-- インデヴェックス
		[  794 ] = {   60 },		-- インデランゴール
		[  795 ] = {   60 },		-- インデスロウ
		[  796 ] = {   60 },		-- インデパライズ
		[  797 ] = {   60 },		-- インデグラビデ
		[  798 ] = {   60 },		-- ジオリジェネ
		[  799 ] = {   60 },		-- ジオポイズン
		[  800 ] = {   60 },		-- ジオリフレシュ
		[  801 ] = {   60 },		-- ジオヘイスト
		[  802 ] = {   60 },		-- ジオスト
		[  803 ] = {   60 },		-- ジオデック
		[  804 ] = {   60 },		-- ジオバイト
		[  805 ] = {   60 },		-- ジオアジル
		[  806 ] = {   60 },		-- ジオイン
		[  807 ] = {   60 },		-- ジオマイン
		[  808 ] = {   60 },		-- ジオカリス"
		[  809 ] = {   60 },		-- ジオフューリー
		[  810 ] = {   60 },		-- ジオバリア
		[  811 ] = {   60 },		-- ジオアキュメン
		[  812 ] = {   60 },		-- ジオフェンド
		[  813 ] = {   60 },		-- ジオプレサイス"
		[  814 ] = {   60 },		-- ジオヴォイダンス
		[  815 ] = {   60 },		-- ジオフォーカス
		[  816 ] = {   60 },		-- ジオアトゥーン
		[  817 ] = {   60 },		-- ジオウィルト
		[  818 ] = {   60 },		-- ジオフレイル
		[  819 ] = {   60 },		-- ジオフェイド
		[  820 ] = {   60 },		-- ジオマレーズ
		[  821 ] = {   60 },		-- ジオスリップ
		[  822 ] = {   60 },		-- ジオトーパー
		[  823 ] = {   60 },		-- ジオヴェックス
		[  824 ] = {   60 },		-- ジオランゴール
		[  825 ] = {   60 },		-- ジオスロウ
		[  826 ] = {   60 },		-- ジオパライズ
		[  827 ] = {   60 },		-- ジオグラビデ
		[  828 ] = {    0 },		-- ファイラ
		[  829 ] = {    0 },		-- ファイラⅡ
		[  830 ] = {    0 },		-- ブリザラ
		[  831 ] = {    0 },		-- ブリザラⅡ
		[  832 ] = {    0 },		-- エアロラ
		[  833 ] = {    0 },		-- エアロラⅡ
		[  834 ] = {    0 },		-- ストンラ
		[  835 ] = {    0 },		-- ストンラⅡ
		[  836 ] = {    0 },		-- サンダラ
		[  837 ] = {    0 },		-- サンダラⅡ
		[  838 ] = {    0 },		-- ウォタラ
		[  839 ] = {    0 },		-- ウォタラⅡ
		[  840 ] = {   30 },		-- フォイル
		[  841 ] = {  300 },		-- ディストラ
		[  842 ] = {  300 },		-- ディストラⅡ
		[  843 ] = {  300 },		-- フラズル
		[  844 ] = {  300 },		-- フラズルⅡ
		[  845 ] = {  180 },		-- スナップ
		[  846 ] = {  180 },		-- スナップⅡ
		[  847 ] = {   60 },		-- アトモス召喚
		[  848 ] = { 3600 },		-- リレイズⅣ
		[  849 ] = {   60 },		-- ファイアⅣ
		[  850 ] = {   60 },		-- ブリザドⅣ
		[  851 ] = {   60 },		-- エアロⅣ
		[  852 ] = {   60 },		-- ストーンⅣ
		[  853 ] = {   60 },		-- サンダーⅣ
		[  854 ] = {   60 },		-- ウォータⅣ
		[  855 ] = {  180 },		-- エンライトⅡ
		[  856 ] = {  180 },		-- エンダークⅡ
		[  857 ] = {  180 },		-- 砂塵の陣Ⅱ
		[  858 ] = {  180 },		-- 豪雨の陣Ⅱ
		[  859 ] = {  180 },		-- 烈風の陣Ⅱ
		[  860 ] = {  180 },		-- 熱波の陣Ⅱ
		[  861 ] = {  180 },		-- 吹雪の陣Ⅱ
		[  862 ] = {  180 },		-- 疾雷の陣Ⅱ
		[  863 ] = {  180 },		-- 妖霧の陣Ⅱ
		[  864 ] = {  180 },		-- 極光の陣Ⅱ
		[  865 ] = {   60 },		-- ファイラⅢ
		[  866 ] = {   60 },		-- ブリザラⅢ
		[  867 ] = {   60 },		-- エアロラⅢ
		[  868 ] = {   60 },		-- ストンラⅢ
		[  869 ] = {   60 },		-- サンダラⅢ
		[  870 ] = {   60 },		-- ウォタラⅢ
		[  871 ] = {   90 },		-- 炎のスレノディⅡ
		[  872 ] = {   90 },		-- 氷のスレノディⅡ
		[  873 ] = {   90 },		-- 風のスレノディⅡ
		[  874 ] = {   90 },		-- 土のスレノディⅡ
		[  875 ] = {   90 },		-- 雷のスレノディⅡ
		[  876 ] = {   90 },		-- 水のスレノディⅡ
		[  877 ] = {   90 },		-- 光のスレノディⅡ
		[  878 ] = {   90 },		-- 闇のスレノディⅡ
		[  879 ] = {  300 },		-- イナンデーション
		[  880 ] = {    0 },		-- ドレインⅢ
		[  881 ] = {    0 },		-- アスピルⅢ
		[  882 ] = {  300 },		-- ディストラⅢ
		[  883 ] = {  300 },		-- フラズルⅢ
		[  884 ] = {  180 },		-- アドルⅡ
		[  885 ] = {  230 },		-- 土門の計Ⅱ
		[  886 ] = {  230 },		-- 水門の計Ⅱ
		[  887 ] = {  230 },		-- 風門の計Ⅱ
		[  888 ] = {  230 },		-- 火門の計Ⅱ
		[  889 ] = {  230 },		-- 氷門の計Ⅱ
		[  890 ] = {  230 },		-- 雷門の計Ⅱ
		[  891 ] = {  230 },		-- 闇門の計Ⅱ
		[  892 ] = {  230 },		-- 光門の計Ⅱ
		[  893 ] = {   60 },		-- フルケア
		[  894 ] = {  150 },		-- リフレシュⅢ
		[  895 ] = {  180 },		-- ストライⅡ
	},



-----------------------------------------------------------------------


-----------------------------------------------------------------------

	-- 共通の文字スタイル
	TextStyle = {
		Font = '07やさしさゴシックボールド',
		Fonts = { 'MS ゴシック', 'MS Gothic', 'メイリオ' },
		Alpha = 255,
		Stroke = { Width = 2, Alpha = 200 },
		Flags = { Bold = true, Italic = false }
	},

	-- メインターゲットの情報
	MTInfo = {
		FrameSize = {
			Width  = 320,
			Height =   5,
		},
		SideSize = {
			Width  =   2,
			Height =   5,
		},
		Name =
		{
			Size = 14,
			Offset = {
				X =  40,
				Y = -19,
			}
		},
		Health =
		{
			Size = 10,
			Offset = {
				X =  40,
				Y = -14,
			},
		},
		Level =
		{
			Size = 10,
			Offset = {
				X =   0,
				Y = -14,
			}
		}
	},

	-- サブターゲットの情報
	STInfo = {
		Offset = {
			X = 320 + 8 + 20 + 8,
			Y =   0,
		},

		FrameSize = {
			Width  = 320,
			Height =   5,
		},
		SideSize = {
			Width  =   2,
			Height =   5,
		},
		Name =
		{
			Size = 14,
			Offset = {
				X =  40,
				Y = -19,
			}
		},
		Health =
		{
			Size = 10,
			Offset = {
				X =  40,
				Y = -14,
			},
		},
		Level =
		{
			Size = 10,
			Offset = {
				X =   0,
				Y = -14,
			},
		},
	},	

	-- 矢印の大きさ
	ArrowSize = {
		Width	= 20,
		Height	= 11,
	},
}

return settings
