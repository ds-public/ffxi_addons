-- https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%8A%E3%83%AB%E3%83%95%E3%82%A1%E3%83%B3%E3%82%BF%E3%82%B8%E3%83%BCXI%E3%81%AE%E7%99%BB%E5%A0%B4%E4%BA%BA%E7%89%A9
-- Last Upade 2021/01/10 0

-- NPC
local NPCs =
{
	-----------------------------------------------------------
	-- サンドリア王国

	-- 南サンドリア
	[ 230 ] = {
		[ "Amutiyaal"						] = "アムティヤール",
		[ "Atelloune"						] = "アテルーネ",
		[ "Balasiel"						] = "バラシエル",
		[ "Exoroche"						] = "エグゾロッシュ",
		[ "Faulpie"							] = "フォルピー",
		[ "Femitte"							] = "フェミト",
		[ "Ferdoulemiont"					] = "フェルドゥルミオン",
		[ "Guilboire"						] = "ギルボワール",
		[ "Hinaree"							] = "ヒナリー",
		[ "Kipopo"							] = "キーポポ",
		[ "Lusiane"							] = "ルジアーヌ",
		[ "Orechiniel"						] = "オルシニエル",
		[ "Raminel"							] = "ラミネール",
		[ "Tek Lengyon"						] = "テク・レンギョン",
		[ "Valderotaux"						] = "バルデロト",
	},

	-- 北サンドリア
	[ 231 ] = {
		[ "Ailbeche"						] = "アイルベーシュ",
		[ "Alphollon C Meriard"				] = "アルフォロン・C・メリアル",
		[ "Amarefice"						] = "アマルフィス",
		[ "Arachagnon"						] = "アラシャノ",
		[ "Beadurinc"						] = "ビードリンク",
		[ "Cheupirudaux"					] = "シュピルドー",
		[ "Excenmille"						] = "エグセニミル",
		[ "Greubaque"						] = "グルーバック",
		[ "Mevreauche"						] = "メヴロッシュ",
		[ "Narcheral"						] = "ナルシェラル",
		[ "Pinok-Morok"						] = "ピノクモロック",
		[ "Pirvidiauce"						] = "ピルヴィディオス",
		[ "Ramua"							] = "ラミュア",
		[ "Ulycille"						] = "ウリシル",
	},

	-- サンドリア港
	[ 232 ] = {
		[ "Altiret"							] = "アルティレー",
		[ "Antreneau"						] = "アントレノー",
		[ "Brugaire"						] = "ブルゲール",
		[ "Coullave"						] = "クラーヴ",
		[ "Deraquien"						] = "デラキアン",
		[ "Maunadolace"						] = "モナドラス",
		[ "Thierride"						] = "テリード",
		[ "Ufanne"							] = "ユファン",
	},

	-- ドラギーユ城
	[ 233 ] = {
		[ "Aramaviont"						] = "アラマビオン",
		[ "Chalvatot"						] = "シャルヴァト",
		[ "Curilla"							] = "クリルラ",
		[ "Halver"							] = "ハルヴァー",
		[ "Milchupain"						] = "ミルシュパン",
		[ "Rahal"							] = "ラーアル",
		[ "Rembard"							] = "レンバード",
	},

	-- ボストーニュ監獄
	[ 167 ] = {
		[ "Novalmauge"						] = "ノヴァルモージュ",
	},

	-- 南サンドリア[S]
	[  80 ] = {
		[ "Alphonimile"						] = "アルフォニミル",
		[ "Altennia"						] = "アルテニア",
		[ "Ashmea B Greinner"				] = "アシュメア・B・グライナー",
		[ "Febrenard C Brunnaut"			] = "フェブルナルド・C・ブリュノー",
		[ "Feldrautte I Rouhent"			] = "フェルドロット・I・ルーアン",
		[ "Leonoyne"						] = "レオノアーヌ",
		[ "Mieuseloir B Enchelles"			] = "ミュゼルワール・B・アンシェル",
		[ "Rasdinice"						] = "ラスディニス",
		[ "Rholont"							] = "ロロン",
		[ "Valaineral R Davilles"			] = "ヴァレンラール・R・ダヴィル",
		[ "Yrvaulair S Cousseraux"			] = "イルヴォレール・S・クスロー",
	},

	-- サンドリア共通(その他)
	[ 300 ] = {
		[ "Acheufagais R D'Oraguille"		] = "アシュファーグ・R・ドラギーユ",
		[ "Alphollon I Tavnazia"			] = "アルフォロン・C・タブナジア",
		[ "Ancolain"						] = "アンコレン",
		[ "Aragoneu Knight"					] = "アラゴーニュナイト",
		[ "Bistillot"						] = "ビスティヨ",
		[ "Cannau"							] = "カノー",
		[ "Chalaimbille R d'Oraguille"		] = "シャラムビール・R・ドラギーユ",
		[ "Claidie"							] = "クレーディ",
		[ "Coteaulepoint"					] = "コトールポワン",
		[ "Cyranuce"						] = "シラヌス",
		[ "Darvylle"						] = "ダルヴィーユ",
		[ "Destin"							] = "デスティン",
		[ "Eideialc"						] = "エディアルク",
		[ "Elbiont N Dieuler"				] = "エルビオン・N・デュレル",
		[ "Erpalacion"						] = "エルパラシオン",
		[ "Esmallegue"						] = "エスマレーグ",
		[ "Fellenant"						] = "フェレナン",
		[ "Francmage"						] = "フランマージュ",
		[ "Giollemitte B Feroun"			] = "ギョルルミット・B・フェルン",
		[ "Grantieul R d'Oraguille"			] = "グランテュール・R・ドラギーユ",
		[ "Guillauhonbert R d'Oraguille"	] = "ギョホンベール・R・ドラギーユ",
		[ "Hantileon"						] = "ハンティリヨン",
		[ "Jayramus"						] = "ジェラムス",
		[ "Lanfeaur R D'Oraguille"			] = "ランフォル・R・ドラギーユ",
		[ "Leaute"							] = "ローテ",
		[ "Machegue"						] = "マシェーグ",
		[ "Marelinne R D'Oraguille"			] = "マレリーヌ・R・ドラギーユ",
		[ "Maxcimille"						] = "マクシミル",
		[ "Mouchand"						] = "ムシャン",
		[ "Muchavatte"						] = "ムシャヴァット",
		[ "Muchavatte P Couchire"			] = "ムシャヴァット・P・クシレ",
		[ "Palardaifault V Draffles"		] = "パラルデフォー・V・ドラフレス",
		[ "Periduque"						] = "ペリデューク",
		[ "Perseus"							] = "ペルセウス",
		[ "Phillieulais S Dieuffon"			] = "フィリユーレ・S・デュフォン",
		[ "Pieuje"							] = "ピエージェ",
		[ "Raigegue R d'Oraguille"			] = "ルジーグ・R・ドラギーユ",
		[ "Raillefal"						] = "ライファル",
		[ "Rainemard"						] = "ライニマード",
		[ "Ranperre R D'Oraguille"			] = "ランペール・R・ドラギーユ",
		[ "Red Rose Condottiere"			] = "レッド・ローズ・コンドティエーレ",
		[ "Resviel R D'Oraguille"			] = "レスヴィエル・R・ドラギーユ",
		[ "Rochefogne"						] = "ロシュフォーニュ",
		[ "Rongelouts"						] = "ロンジェルツ",
		[ "Rongelouts N Distaud"			] = "ロンジェルツ・N・ディストー",
		[ "Royal Knight"					] = "ロイヤルナイト",
		[ "Savage Hound Condottiere"		] = "サベッジ・ハウンド・コンドティエーレ",
		[ "Shamonde"						] = "シャマンド",
		[ "Torresapet B Ordelle"			] = "トルレザーペ・B・オルデール",
		[ "Travialce"						] = "トラビアルス",
		[ "Trion"							] = "トリオン",
		[ "Vestillet"						] = "ヴェスティーレ",
		[ "Vijartal"						] = "ヴィジャルタール",
		[ "Vijartal Caphieux"				] = "ヴィジャルタール・カフュー",
		[ "Vilbert"							] = "ビルバート",
		[ "Volledyne"						] = "ヴォルダイン",
	},

	-- ファノエ運河
	[   1 ] = {
		[ "Ineuteniace"						] = "イニュティニアス",
	},

	-- 東ロンフォール[S]
	[  81 ] = {
		[ "Cerane I Virgaut"				] = "セラーヌ・I・ヴィルゴ",
	},

	-- ジャグナー森林[S]
	[  82 ] = {
		[ "Laisavie X Berlends"				] = "レザヴィ・X・ベルラン",
	},

	-- ブンカール湾[S]
	[  83 ] = {
		[ "Noillurie"						] = "ノユリ",
	},

	-----------------------------------------------------------
	-- バストゥーク共和国

	-- バストゥーク鉱山区
	[ 234 ] = {
		[ "Abd-al-Raziq"					] = "アブダルラジク",
		[ "Azima"							] = "アズィマ",
		[ "Babenn"							] = "バベン",
		[ "Christina"						] = "クリスティニア",
		[ "Dry Bone"						] = "ドライボーン",
		[ "Gumbah"							] = "グンパ",
		[ "Neigepance"						] = "ネージュパンセ",
		[ "Proud Beard"						] = "プラウドビアード",
		[ "Roh Latteh"						] = "ロ・ラッテ",
		[ "Sieglinde"						] = "ジーグリンデ",
		[ "Titus"							] = "ティトゥス",
		[ "Wahid"							] = "ワヒッド",
		[ "Zopago"							] = "ゾパゴ",
	},

	-- バストゥーク商業区
	[ 235 ] = {
		[ "Alib-Mufalib"					] = "アリブムファリブ",
		[ "Brygid"							] = "ブリジッド",
		[ "Dalzakk"							] = "ダルザック",
		[ "Degenhard"						] = "デーゲンハルト",
		[ "Fatimah"							] = "ファティマ",
		[ "Gwill"							] = "グィル",
		[ "Ken"								] = "ケン",
		[ "Lame Deer"						] = "レイムディア",
		[ "Matthias"						] = "マティアス",
		[ "Michea"							] = "ミシェア",
		[ "Mjoll"							] = "ミョル",
		[ "Nbu Latteh"						] = "ンブ・ラッテ",
		[ "Reinberta"						] = "レインベルタ",
		[ "Shamarhaan"						] = "シャマルハーン",
		[ "Tancredi"						] = "タンクレーディ",
		[ "Ulrike"							] = "ウルリケ",
		[ "Wulfnoth"						] = "ウルフノス",
		[ "Zolku-Azolku"					] = "ゾルクアゾルク",
		[ "Zon-Fobun"						] = "ゾンフォブン",
	},

	-- バストゥーク港
	[ 236 ] = {
		[ "Carmelo"							] = "カルメロ",
		[ "Dhen Tevryukoh"					] = "デン・テブリュコー",
		[ "Ehrhard"							] = "エアハルト",
		[ "Ensetsu"							] = "エンセツ",
		[ "Kaede"							] = "カエデ",
		[ "Kagetora"						] = "カゲトラ",
		[ "Oggbi"							] = "オグビィ",
		[ "Sugandhi"						] = "スガンディー",
	},
	
	-- 大工房
	[ 237 ] = {
		[ "Alois"							] = "アロイス",
		[ "Ayame"							] = "アヤメ",
		[ "Cid"								] = "シド",
		[ "Ghemp"							] = "ゲンプ",
		[ "Helga"							] = "ヘルガ",
		[ "Hugues"							] = "ユーグ",
		[ "Invincible Shield"				] = "インビンシブルシールド",
		[ "Iron Eater"						] = "アイアンイーター",
		[ "Karst"							] = "カルスト",
		[ "Lucius"							] = "ルシウス",
		[ "Naji"							] = "ナジ",
		[ "Raibaht"							] = "ライバート",
		[ "Romero"							] = "ロメロ",
		[ "Savae E Paleade"					] = "サヴエ・E・パレアド",
		[ "Wise Owl"						] = "ワイズアウル",
	},

	-- バストゥーク商業区[S]
	[  87 ] = {
		[ "Adelheid Sturm"					] = "アーデルハイト・シュトルム",
		[ "Angry Bull"						] = "アングリーブル",
		[ "Bartholomaus"					] = "バルトロメウス",
		[ "Bartholomaus Krueger"			] = "バルトロメウス・クリューガー",
		[ "Blatherix"						] = "ブラザリクス",
		[ "Elivira Gogol"					] = "エリヴィラ・ゴーゴリ",
		[ "Else"							] = "エルゼ",
		[ "Gentle Tiger"					] = "ジェントルタイガー",
		[ "Kilhwch"							] = "キリッチ",
		[ "Kurt"							] = "クルト",
		[ "Ludwig"							] = "ルートヴィヒ",
		[ "Ludwig Eichberg"					] = "ルートヴィヒ・アイヒベルク",
		[ "Maximilian Berger"				] = "マクシミリアン・ベルガー",
		[ "Pagdako"							] = "パグダコ",
		[ "Sonia"							] = "ソニア",
		[ "Striking Bull"					] = "ストライキングブル",
	},

	-- バストゥーク共通(その他)
	[ 301 ] = {
		[ "Bumimi"							] = "ブミミ",
		[ "Cornelia"						] = "コーネリア",
		[ "Dalha"							] = "ダルハ",
		[ "Derek Karst"						] = "デレク・カルスト",
		[ "Driftlix"						] = "ドリフトリクス",
		[ "Five Moons"						] = "ファイブムーンズ",
		[ "Friese"							] = "フリーゼ",
		[ "Hani"							] = "ハニ",
		[ "Klara"							] = "クララ",
		[ "Mayer"							] = "マイヤー",
		[ "Nicolaus"						] = "ニコラウス",
		[ "Omran"							] = "オムラン",
		[ "Pale Eagle"						] = "ペイルイーグル",
		[ "Prien"							] = "プリーン",
		[ "Raogrimm"						] = "ラオグリム",
		[ "Schultz"							] = "シュルツ",
		[ "Ulbrecht"						] = "ウルブレヒト",
		[ "Ulrich"							] = "ウルリッヒ",
		[ "Ulla"							] = "ウラ",
		[ "Volker"							] = "フォルカー",
		[ "War Cloud"						] = "ウォークラウド",
		[ "Werei"							] = "ウェライ",
		[ "Werner"							] = "ベルナー",
		[ "Yomi"							] = "ヨミ",
		[ "Zeid"							] = "ザイド",
	},

	-- エルディーム古墳[S]
	[ 175 ] = {
		[ "Erlene"							] = "アーリーン",
	},

	-----------------------------------------------------------
	-- ウィンダス連邦

	-- チョコボサーキット
	[  70 ] = {
		[ "Chualulu"						] = { "チュアルル", "<チョコボレース案内>" },
		[ "Raquel"							] = "ラクエル",
		[ "Rungaga"							] = { "ルンガガ", "<チョコボレース受付>" },
		[ "Timothy"							] = "ティモシー",
	},


	-- ウィンダス水の区
	[ 238 ] = {
		[ "Angelica"						] = "アンジェリカ",
		[ "Baren-Moren"						] = "バレンモレン",
		[ "Chamama"							] = "チャママ",
		[ "Chomo Jinjahl"					] = "チョモ・ジンジャル",
		[ "Dabido-Sorobido"					] = "ダビドソロビド",
		[ "Fuepepe"							] = "フエペペ",
		[ "Hakeem"							] = "ハキーム",
		[ "Honoi-Gomoi"						] = "ホノイゴモイ",
		[ "Ildy-Goldy"						] = "イルディゴルディ",
		[ "Jacodaut"						] = "ジャコドー",
		[ "Janta-Jonta"						] = "ジャンタジョンタ",
		[ "Kayeel-Payeel"					] = "カイルパイル",
		[ "Kenapa-Keppa"					] = "ケナパケッパ",
		[ "Kerutoto"						] = "ケルトト",
		[ "Kipo-Opo"						] = "キーポオーポ",
		[ "Koowawa"							] = "コーワワ",
		[ "Kopopo"							] = "コポポ",
		[ "Leepe-Hoppe"						] = "リーペホッペ",
		[ "Naiko-Paneiko"					] = "ナイコパニィコ",
		[ "Ness Rugetomal"					] = "ネス・ルーゲトマル",
		[ "Ohbiru-Dohbiru"					] = "オービルドービル",
		[ "Piketo-Puketo"					] = "ピケットプケット",
		[ "Rabiri-Tabiri"					] = "ラビリタビリ",
		[ "Ranpi-Monpi"						] = "ランピモンピ",
		[ "Shohrun-Tuhrun"					] = "ショウルントゥウルン",
		[ "Tonana"							] = "トナナ",
		[ "Tosuka-Porika"					] = "トスカポリカ",
	},
	
	-- ウィンダス石の区
	[ 239 ] = {
		[ "Ambrosius"						] = "アンブロシウス",
		[ "Anini"							] = "アニニ",
		[ "Arbitrix"						] = { "アルビトリクス", "<ゴブリンの不思議箱>" },
		[ "Aromu-Oromu"						] = "アロムオロム",
		[ "Augu-Maugu"						] = "アウグマウグ",
		[ "Bonchacha"						] = "ボンチャチャ",
		[ "Burute-Sorute"					] = { "ブルテソルテ", "<称号変更人>" },
		[ "Chawo Shipeynyo"					] = "チャヲ・シペインヨ",
		[ "Chomomo"							] = "チョモモ",
		[ "Dabaide-Obaide"					] = "ダバイデオバイデ",
		[ "Ekamama"							] = "エカママ",
		[ "Esmeralda"						] = "エスメラルダ",
		[ "Finene"							] = "フィネネ",
		[ "Five of Diamonds"				] = "ファイブ・オブ・ダイヤモンド",
		[ "Florencia"						] = "フロレンシア",
		[ "Four of Diamonds"				] = "フォー・オブ・ダイヤモンド",
		[ "Gerun-Garun"						] = "ゲルンガルン",
		[ "Haah Chakaila"					] = "ハー・チャカイラ",
		[ "Hiwon-Biwon"						] = "ヒウォンビウォン",
		[ "Horuni-Mawoni"					] = "ホルニマヲニ",
		[ "Ignaz"							] = "イグナズ",
		[ "Jack of Diamonds"				] = { "ジャック・オブ・ダイヤモンド", "<チュートリアル>" },
		[ "Juna Moshal"						] = "ジュナ・モシャル",
		[ "Juvillie"						] = { "ジュビリー", "<記憶のウタイビト>" },
		[ "Kaaya Majiad"					] = "カーヤ・マジアド",
		[ "Kalupa-Tawalupa"					] = "カルパタワルパ",
		[ "Karija-Marija"					] = "カリジャマリジャ",
		[ "Karola"							] = "カロラ",
		[ "Keir"							] = "キール",
		[ "Kenono"							] = { "ケノノ", "<宅配サービス>" },
		[ "Keo-Koruo"						] = "ケオコルオ",
		[ "Kimumu"							] = "キムム",
		[ "Kobunono"						] = { "コブノノ", "<競売所案内>" },
		[ "Kohpo-Akuupo"					] = "コッポ・アクッポ",
		[ "Komomo"							] = "コモモ",
		[ "Koru-Moru"						] = "コルモル",
		[ "Lala Gohma"						] = "ララ・ゴマ",
		[ "Luuh Koplehn"					] = "ルー・コプレン",
		[ "Maan-Pokuun"						] = "マーンポクーン",
		[ "Malmi-Monmi"						] = "マルミモンミ",
		[ "Mehruru"							] = "メルル",
		[ "Migi Centa"						] = "ミギ・センタ",
		[ "Moan-Maon"						] = "モアンマオン",
		[ "Mukuku"							] = "ムクク",
		[ "Naih Arihmepp"					] = "ナイ・アリメップ",
		[ "Nine of Diamonds"				] = "ナイン・オブ・ダイヤモンド",
		[ "Nozaza"							] = "ノザザ",
		[ "Ojha Rhawash"					] = { "オジャ・ラワシュ", "<栽培案内>" },
		[ "Orudoba-Sondeba"					] = "オルドラソンデバ",
		[ "Pakeke"							] = "パケケ",
		[ "Pakke-Pokke"						] = "パッケポッケ",
		[ "Pakora-Makora"					] = "パコラマコラ",
		[ "Pantsa-Karutsa"					] = "パンツァカルツァ",
		[ "Polikal-Ramikal"					] = "ポリカルラミカル",
		[ "Polink-Moink"					] = "ポリンクモインク",
		[ "Purakoko"						] = "プラココ",
		[ "Purere"							] = "プレレ",
		[ "Quentin"							] = "クエンティン",
		[ "Raamimi"							] = "ラーミミ",
		[ "Ran"								] = "ラン",
		[ "Rutango-Botango"					] = "ルタンゴボタンゴ",
		[ "Scavnix"							] = { "スカフニクス", "<ショップ:雑貨>" },
		[ "Selulu"							] = { "セルル", "<宅配サービス>" },
		[ "Shantotto"						] = "シャントット",
		[ "Seven of Diamonds"				] = { "セブン・オブ・ダイヤモンド", "<門番>" },
		[ "Shinchai-Tocchai"				] = { "シンチャイトッチャイ", "<モグハウス案内>" },
		[ "Suhie-Kaihie"					] = "シュヒエカイヒエ",
		[ "Takoda"							] = "タコダ",
		[ "Ten of Diamonds"					] = "テン・オブ・ダイヤモンド",
		[ "Toi-Poi"							] = "トイポイ",
		[ "Tsuaora-Tsuora"					] = "ツアロラツオラ",
		[ "Uwaine"							] = "ウウェイン",
		[ "Yanakiki"						] = "ヤナキキ",
		[ "Yoran-Oran"						] = "ヨランオラン",
		[ "Yoriri"							] = "ヨリリ",
		[ "Zayhi-Bauhi"						] = "ザイヒバウヒ",
		[ "Zokima-Rokima"					] = "ゾキマロキマ",

		[ "Door:House of the Hero"			] = "扉:英雄の家",
		[ "Door:Koru-Moru's Manor"			] = "扉:コルモルの館",
		[ "Door:Jeunoan Consul"				] = "扉:ジュノ領事館",
		[ "Door:Shantotto's Manor"			] = "扉:シャントットの館",
		[ "Door:Yoran-Oran's Manor"			] = "扉:ヨランオランの館",
		[ "Door:Zonpa-Zippa's Manor"		] = "扉:ゾンパジッパの館",

		[ "Priming Gate"					] = "水呼びの扉",

		[ "Enigmatic Footprints"			] = "デュナミス:ダイバージェンス",

	},

	-- ウィンダス港
	[ 240 ] = {
		[ "Aroro"							] = "アロロ",
		[ "Boronene"						] = "ボロネネ",
		[ "Chapa-Cha"						] = "チャパチャ",
		[ "Degong"							] = "デゴン",
		[ "Drozga"							] = "ドローガ",
		[ "Erabu-Fumulubu"					] = "エラブフムルブ",
		[ "Hakkuru-Rinkuru"					] = "ハックルリンクル",
		[ "Hohbiba-Mubiba"					] = "ホービバムビバ",
		[ "Kucha Malkobhi"					] = "クチャ・マルコビ",
		[ "Kuroido-Moido"					] = "クロイドモイド",
		[ "Kususu"							] = "クスス",
		[ "Laughing Lizard"					] = "ラフィングリザード",
		[ "Milma-Hapilma, W.W."				] = "ミルマハピルマ,W.W.",
		[ "Ohruru"							] = "オールル",
		[ "Panja-Nanja"						] = "パンジャナンジャ",
		[ "Pankii-Mankii"					] = "パンキーマンキー",
		[ "Ryan"							] = "ライアン",
		[ "Sattsuh Ahkanpari"				] = "サッツ・アカンパリ",
		[ "Thubu Parohren"					] = "ツブ・パロホレン",
	},

	-- ウィンダス森の区
	[ 241 ] = {
		[ "Abby Jalunshi"					] = { "アビ・ジャルンシ", "<モグハウス案内>" },
		[ "Aja-Panja"						] = "アジャパンジャ",
		[ "Amimi"							] = { "アミミ", "<レンタルチョコボ>" },
		[ "Anillah"							] = { "アニラー", "<下級職人:合成イメージのサポート>" },
		[ "An Polaali"						] = "アン・ポラリ",
		[ "An Shanaa"						] = "アン・シャナ",
		[ "Apururu"							] = "アプルル",
		[ "Baha Mannohl"					] = "バハ・マンノオル",
		[ "Bin Stejihna"					] = { "ビン・ステジナ", "<ショップ:特産品 ザルクヘイム>" },
		[ "Blank Card"						] = "ブランク・カード",
		[ "Boizo-Naizo"						] = "ボイゾナイゾ",
		[ "Bopa Greso"						] = "ボパ・グレソ",
		[ "Bozack"							] = { "ボザック", "<記憶のウタイビト>" },
		[ "Bwi Kaghonsa"					] = { "ビウィ・カゴンサ", "<チョコボの宝探し>" },
		[ "Catalia"							] = "カタリア",
		[ "Cayu Pensharhumi"				] = "カユ・ペンサルミ",
		[ "Cha Lebagta"						] = "カ・レバグタ",
		[ "Chihpi Kapirapehro"				] = "チピ・カピラペロ",
		[ "Cocchi Ryojhbon"					] = "コッキ・リョジボン",
		[ "Dazi Nosuk"						] = "ダジ・ノスク",
		[ "Dhahah"							] = "ダハハ",
		[ "Dhahih"							] = "ダハヒ",
		[ "Dhakih"							] = "ダハキ",
		[ "Dhakoh"							] = "ダハコ",
		[ "Dhiz Tomehrih"					] = "ディズ・トメリ",
		[ "Edmondo"							] = "エドモンド",
		[ "Eight of Spades"					] = "エイト・オブ・スペード",
		[ "Erpolant"						] = "エルポラント",
		[ "Etsa Rhuyuli"					] = "エッサ・ルユリ",
		[ "Etsatsa"							] = "エツァツァ",
		[ "Femardaque"						] = "フェマルダク",
		[ "Fhelm Jobeizat"					] = { "フェルム・ジョベイザット", "<エミネンスレコードポイント交換>" },
		[ "Forine"							] = "フォリーヌ",
		[ "Four of Spades"					] = "フォー・オブ・スペード",
		[ "Funtrox"							] = { "フントロックス", "<ゴブリンの不思議箱>" },
		[ "Gioh Ajihri"						] = "ギオ・アジリ",
		[ "Gottah Maporushanoh"				] = "ゴッタ・マポルシャノ",
		[ "Hae Jakkya"						] = "ハエ・ジャッキヤ",
		[ "Hakaru-Marikaru"					] = "ハカルマリカル",
		[ "Harara, W.W."					] = { "ハララ, W.W.", "<コンクェスト:ウィンダス>" },
		[ "Hauh Colphioh"					] = { "ハウ・コルピオ", "<指定生産品の納入・ギルドポイント交換>" },
		[ "Hayah Dahbalesahma"				] = "ハヤ・ダバレサマ",
		[ "Hlif"							] = "ハルイフ",
		[ "Hohl Nhaesin"					] = "ホル・ナエシン",
		[ "Ibwam"							] = "イブワム",
		[ "Illu Bohjaa"						] = "イール・ボジャ",
		[ "Istvan"							] = "イストヴァン",
		[ "Iya Rihyo"						] = "イヤ・リヨ",
		[ "Jack of Spades"					] = { "ジャック・オブ・スペード", "<チュートリアル>" },
		[ "Ju Kamja"						] = { "ジュ・カムジャ", "<宅配サービス>" },
		[ "Julissois"						] = { "ジュリソアー", "<合成セット納入・合成キット販売>" },
		[ "Kapeh Myohrye"					] = "カペ・ミョーリエ",
		[ "Khomi Tibariah"					] = "コミ・チバリア",
		[ "Ki Volep"						] = "キ・ヴォレップ",
		[ "Kiria-Romaria"					] = { "キリアロマリア", "<チョコボ育成案内>" },
		[ "Kohpe Takhabio"					] = "コペ・タカビオ",
		[ "Kopua-Mobua A.M.A.N."			] = { "コプアモブア A.M.A.N.", "<メンター登録>" },
		[ "Kopuro-Popuro"					] = "コプロポプロ",
		[ "Kororo"							] = "コロロ",
		[ "Kototo"							] = "コトト",
		[ "Kuoh Rhel"						] = "クオ・レル",
		[ "Kuu Lohro"						] = "クー・ロロ",
		[ "Kuzah Hpirohpon"					] = { "クザ・ピロポン", "<ショップ:裁縫ギルド>" },
		[ "Kyaa Taali"						] = { "キャッ・ターリ", "<下級職人:合成イメージのサポート>" },
		[ "Lih Pituu"						] = { "リィ・ピトゥー", "<上級職人:上級合成イメージのサポート>" },
		[ "Mahoh Mahborogho"				] = "マオ・マボロゴ",
		[ "Manyny"							] = { "マニニ", "<ショップ:雑貨>" },
		[ "Matata"							] = "マタタ",
		[ "Meh Kotomaihro"					] = "メ・コトマイロ",
		[ "Meriri"							] = { "メリリ", "<ショップ:裁縫ギルド>" },
		[ "Mheca Khetashipah"				] = "メカ・ケタシパ",
		[ "Miiri-Wohri"						] = "ミーリウォーリ",
		[ "Millerovieunet"					] = { "ミレロヴィエウネット", "<ショップ:特産品 クフィム>" },
		[ "Mocchi Katsartbih"				] = "モッチ・カッサルトビ",
		[ "Mono Nchaa"						] = { "モノ・ンチャ", "<ショップ:雑貨>" },
		[ "Mourices"						] = "モーリス",
		[ "Muhk Johldy"						] = "ムク・ジョルディ",
		[ "Mul Betreh"						] = "ムル・ベトレ",
		[ "Mushuhi-Metahi"					] = { "ムシュヒメタヒ", "<天気予報>" },
		[ "Nanaa Mihgo"						] = "ナナー・ミーゴ",
		[ "Nhobi Zalkia"					] = { "ノビ・ザルキア", "<ショップ:特産品 クゾッツ>" },
		[ "Nikkoko"							] = { "ニッココ", "<中級職人:合成イメージのサポート>" },
		[ "Nine of Spades"					] = "ナイン・オブ・スペード",
		[ "Nya Labiccio"					] = { "ニャ・ラビッキオ", "<ショップ:特産品 グスタベルグ>" },
		[ "Orahi-Karapahi"					] = "オラヒカラパヒ",
		[ "Orlaine"							] = { "オルラーヌ", "<レンタルチョコボ>" },
		[ "Otte Burhiyu"					] = "オッテ・ブリユ",
		[ "Palyalya"						] = { "パリャリャ", "<競売所案内>" },
		[ "Panoquieur, T.K."				] = { "パノキア, T.K.", "<コンクェスト:サンドリア>" },
		[ "Patsaa Maehoc"					] = "パッサ・マエオク",
		[ "Pattsu-Yabittsu"					] = { "パッツヤビッツ", "<転送サービス:ウィンダス水の区>" },
		[ "Pehki Machumaht"					] = { "ペキ・マクマト", "<ショップ:魔法の地図>" },
		[ "Perih Vashai"					] = "ペリィ・ヴァシャイ",
		[ "Peshi Yohnts"					] = { "ペシ・ヨーンツ", "<ギルドマスター>" },
		[ "Pew Sahbaraef"					] = { "ペウ・サバラエフ", "<宅配サービス>" },
		[ "Phuz Mannohl"					] = "プズ・マンノオル",
		[ "Ponono"							] = { "ポノノ", "<ギルドマスター>" },
		[ "Pulonono"						] = { "プロノノ", "<チョコボ育成>" },
		[ "Phub Bayzarahn"					] = "プブ・ベイザラン",
		[ "Quesse"							] = { "ケッセ", "<ショップ:チョコボ厩舎>" },
		[ "Rakoh Buuma"						] = { "ラコ・ブーマ", "<ミッション>" },
		[ "Retto-Marutto"					] = { "レットマルット", "<ショップ:骨細工ギルド>" },
		[ "Roberta"							] = "ロベルタ",
		[ "Ronana"							] = { "ロナナ", "<中級職人:合成イメージのサポート>" },
		[ "Samigo-Pormigo"					] = { "サミゴポーミゴ", "<指定生産品の納入・ギルドポイント交換>" },
		[ "Sariale"							] = { "サリアレ", "<レンタルチョコボ>" },
		[ "Sevah Kummekihn"					] = { "セヴァ・クーメキン", "<記憶のウタイビト>" },
		[ "Selele"							] = { "セレレ", "<チュートリアル>" },
		[ "Seno Zarhin"						] = "セノ・ザリン",
		[ "Seven of Spades"					] = "セブン・オブ・スペード",
		[ "Shaty-Monty"						] = { "シャティモンティ", "<チョコボの集い>" },
		[ "Shih Tayuun"						] = { "シ・タユーン", "<ショップ:骨細工ギルド>" },
		[ "Six of Spades"					] = "シックス・オブ・スペード",
		[ "Sola Jaab"						] = "ソラ・ジャーブ",
		[ "Soni-Muni"						] = "ソニムニ",
		[ "Sorutoto"						] = "ソルトト",
		[ "Spare Zero"						] = "スペア・ゼロ",
		[ "Spare One"						] = "スペア・ワン",
		[ "Spare Two"						] = "スペア・トゥー",
		[ "Spare Three"						] = "スペア・スリー",
		[ "Spare Four"						] = "スペア・フォー",
		[ "Spare Five"						] = "スペア・ファイブ",
		[ "Sunakku-Matakku"					] = "スナックマタック",
		[ "Sunana"							] = "スナナ",
		[ "Tapoh Lihzeh"					] = "タポ・リゼ",
		[ "Taraihi-Perunhi"					] = { "タライヒペルンヒ", "<ショップ:特産品 デルフラント>" },
		[ "Terude-Harude"					] = { "テルデハルデ", "<上級職人:上級合成イメージのサポート>" },
		[ "Teldro-Kesdrodo"					] = { "テルドロケスドロド", "<ユニティ・コンコード>" },
		[ "Ten of Spades"					] = "テン・オブ・スペード",
		[ "Tergil"							] = { "タージル", "<合成セット納入・合成キット販売>" },
		[ "Tesch Garanjy"					] = { "テスク・ガランジ", "<装備品保管>" },
		[ "Three of Spades"					] = "スリー・オブ・スペード",
		[ "Tico Karimakiba"					] = { "チコ・カリマキバ", "<モンスター相関図>" },
		[ "Tih Pikeh"						] = "チ・ピケ",
		[ "Toppi-Meppi"						] = { "トッピメッピ", "<チョココイン交換>" },
		[ "Tosh Hohnay"						] = "トス・ホナイ",
		[ "Two of Spades"					] = "トゥー・オブ・スペード",
		[ "Umumu"							] = "ウムム",
		[ "Uuroro"							] = "ウーロロ",
		[ "Varun"							] = "ヴァルン",
		[ "Wani Casdohry"					] = "ワニ・カスドリー",
		[ "Wetata"							] = { "ウェタタ", "<フェイス習得>" },
		[ "Wije Tiren"						] = { "ウィジェ・チレン", "<ショップ:薬>" },
		[ "Yonolala"						] = { "ヨノララ", "<ユニティ・コンコード>" },
		[ "Zahsa Syalmhaia"					] = "ザサ・シャルマヤ",

		-- オブジェクト
		[ "Door:Manustery"					] = "扉:手の院",
		[ "Door:Nchaa's Good Goods"			] = "扉:ンチャの道具屋",
	},
	
	-- 天の塔
	[ 242 ] = {
		[ "Abobo"							] = "アボボ",
		[ "Aeshushu"						] = "アエシュシュ",
		[ "Bebibi"							] = "ベビビ",
		[ "Boycoco"							] = "ボイココ",
		[ "Chumimi"							] = "チュミミ",
		[ "Chuqui-Chanqui"					] = "チュクイチャンクイ",
		[ "Churara"							] = "チュララ",
		[ "Dattata"							] = "ダッタタ",
		[ "Damama"							] = "ダママ",
		[ "Ewchichi"						] = "エウチチ",
		[ "Foo Beibo"						] = "フー・ベイボ",
		[ "Gamimi"							] = { "ガミミ", "<ワールドパスの発行>" },
		[ "Habida-Jubida"					] = "ハビダジュビダ",
		[ "Heruru"							] = "ヘルル",
		[ "Hikkuku"							] = "ヒックク",
		[ "Ikucheechee"						] = "イクチーチー",
		[ "Jatata"							] = "ジャタタ",
		[ "Jerrett"							] = "ジェレット",
		[ "Kierron"							] = "キーロン",
		[ "Kinono"							] = "キノノ",
		[ "Kiwawa"							] = "キワワ",
		[ "Kupipi"							] = "クピピ",
		[ "Lin Megomifu"					] = "リン・メゴミフ",
		[ "Mashua"							] = { "マシュア", "<記憶のウタイビト>" },
		[ "Mhabi Molkot"					] = "マビ・モルコット",
		[ "Nebibi"							] = "ネビビ",
		[ "Nului-Nlui"						] = "ヌルインルイ",
		[ "Nayutata"						] = "ナユタタ",
		[ "Parara"							] = "パララ",
		[ "Pompi-Rompi"						] = { "ポンピロンピ", "<ウェディングマスター>" },
		[ "Rakano-Marukano"					] = { "ラカノマルカノ", "<所属国の移籍>" },
		[ "Rayjin-Ojin"						] = "ライジンオジン",
		[ "Rhy Epocan"						] = "リィ・エポカン",
		[ "Ritoto"							] = "リトト",
		[ "Sassa-Kotassa"					] = "サッサコタッサ",
		[ "Shaz Norem"						] = "シャズ・ノレム",
		[ "Sheelala"						] = "シーララ",
		[ "Tamil-Hamel"						] = "タミルハメル",
		[ "Tayaya"							] = "タヤヤ",
		[ "Tsuryarya"						] = "ツリャリャ",
		[ "Ufu Koromoa"						] = "ウフ・コロモア",
		[ "Urubero-Mohbero"					] = "ウルベロモーベロ",
		[ "Utsuitsui"						] = "ウツイツイ",
		[ "Vahn Paineesha"					] = "ヴァン・パイニーシャ",
		[ "Wabble-Mopple"					] = "ワッブルモップル",
		[ "Yakuku"							] = "ヤクク",
		[ "Zubaba"							] = "スババ",
		[ "Zubu-Abibu"						] = "ズブアビブ",

		[ "Door:Clerical Chamber"			] = "扉:書記官の間",
		[ "Door:Starway Stairway"			] = "扉:星の道の階段",
		[ "Door:Vestal Chamber"				] = "扉:神子の間",

		[ "Matrimonial Coffer"				] = { "結婚の箱", "<ショップ:結婚式の衣装と指輪>" },
		[ "Celebratory Chest"				] = { "祝福の箱", "<ショップ:結婚式を彩るアイテム>" },

	},

	-- ウィンダス水の区[S]
	[  94 ] = {
		[ "Dhea Prandoleh"					] = "デア・プランドレ",
		[ "Ezura-Romazura"					] = "エズラロマズラ",
		[ "Haja Zhwan"						] = "ハジャ・ゾワン",
		[ "Lutete"							] = "ルテテ",
		[ "Nyumomo"							] = "ニュモモ",
		[ "Vhino Delkahngo"					] = "ヴィノ・デルカオンゴ",
	},

	-- ウィンダス共通(その他)
	[ 302 ] = {
		[ "Ajido-Marujido"					] = "アジドマルジド",
		[ "Alon-Mylon"						] = "アロンマイロン",
		[ "Doron-Fulun"						] = "ドロンフルン",
		[ "Garazu-Horeizu"					] = "ガラズホレイズ",
		[ "Gariri"							] = "ガリリ",
		[ "Ghyo Molkot"						] = "ギオ・モルコット",
		[ "Gurebu-Ogurebu"					] = "クレブオグレブ",
		[ "Iru-Kuiru"						] = "イルクイル",
		[ "Joker"							] = "ジョーカー",
		[ "Kamolo-Domilo"					] = "カモロドミロ",
		[ "Karababa"						] = "カラババ",
		[ "Karaha-Baruha"					] = "カラハバルハ",
		[ "King of Hearts"					] = "キング・オブ・ハーツ",
		[ "Lhu Mhakaracca"					] = "ルー・マカラッカ",
		[ "Lukka-Lakka"						] = "ルッカラッカ",
		[ "Lungo-Nango"						] = "ルンゴナンゴ",
		[ "Maju-Naju"						] = "マジュナジュ",
		[ "Medada"							] = "メダダ",
		[ "Miratete"						] = "ミラテテ",
		[ "Naho Gwanboh"					] = "ナホ・ゴワンボ",
		[ "Nhev Befrathi"					] = "ネヴ・ベフラティ",
		[ "Pattna-Ottna"					] = "パットナオットナ",
		[ "Rakapopo"						] = "ラカポポ",
		[ "Rimilala"						] = "リミララ",
		[ "Robel-Akbel"						] = "ロベルアクベル",
		[ "Rukususu"						] = "ルクスス",
		[ "Samariri"						] = "サマリリ",
		[ "Sedal-Godjal"					] = "セーダルゴジャル",
		[ "Semih Lafihna"					] = "セミ・ラフィーナ",
		[ "Shahr Yagenmhi"					] = "シャル・ヤゲンミ",
		[ "Shanlili"						] = "シャンリリ",
		[ "Star Sibyl"						] = "星の神子",
		[ "Syu Befrathi"					] = "シウ・ベラフティ",
		[ "Tabilolo"						] = "タビロロ",
		[ "Tihl Midurhi"					] = "ティル・ミドゥーリ",
		[ "Tukuku"							] = "トゥクク",
		[ "Uran-Mafran"						] = "ウランマフラン",
		[ "Yow Rabntah"						] = "ヨー・ラブンタ",
		[ "Zonpa-Zippa"						] = "ゾンパジッパ",
	},

	-----------------------------------------------------------

	-- タブナジア地下壕
	[  26 ] = {
		[ "Anteurephiaux"			] = "アントレイフィオ",
		[ "Despachiaire"			] = "デスパシエール",
		[ "Elysia"					] = "エリシア",
		[ "Equette"					] = "エケット",
		[ "Leporaitceau"			] = "レポルーツォ",
		[ "Ondieulix"				] = "オンデュリュクス",
		[ "Parelbriaux"				] = "パレルブリオー",
		[ "Pradiulot"				] = "プラデューロ",
		[ "Quelveuiat"				] = "ケルビュイア",
		[ "Wazozo"					] = "ワゾゾ",
		[ "Zadant"					] = "ザダント",
	},

	-----------------------------------------------------------

	-- アトルガン白門
	[  50 ] = {
		[ "Rodin-Comidin"			] = "ロディンコミディン",
	},

	-----------------------------------------------------------

	-- 共通
	[ 900 ] = {
		[ "A.M.A.N. Reclaimer"		] = { "A.M.A.N. リクレーマー", "<特定装備品の下取り>" },
		[ "A.M.A.N. Validator"		] = { "A.M.A.N. バリデーター", "<ディード報酬の受け取り>" },

		[ "Artisan Moogle"			] = { "アーティザンモーグリ", "<モグサック拡張>" },

		[ "Auction Counter"			] = "競売所",

		[ "Chat Manual"				] = { "チャットマニュアル", "<チャットのマナーについて>" },
		[ "Chocobo"					] = "チョコボ",

		[ "Door:Chocobo Stables"	] = "扉:チョコボ厩舎",
		[ "Door:Boneworkers' Guild"	] = "扉:骨細工ギルド",
		[ "Door:San d'Orian Consul"	] = "扉:サンドリア領事館",
		[ "Door:Weavers' Guild"		] = "扉:裁縫ギルド",

		[ "Ephemeral Moogle"		] = { "エフェメラルモーグリ", "<クリスタル保管>" },

		[ "Festive Moogle"			] = { "フェスティブモーグリ", "<キャンペーンコード入力・モグチケット交換>" },

		[ "Gate: Chocobo Circuit"	] = "門:チョコボサーキット",
		[ "Game Table"				] = { "ゲームテーブル", "<ベンチャーロール>" },

		[ "Greeter Moogle"			] = { "グリーターモーグリ", "<ログインボーナスポイント交換>" },

		[ "Home Point #1"			] = "ホームポイント #1",
		[ "Home Point #2"			] = "ホームポイント #2",
		[ "Home Point #3"			] = "ホームポイント #3",
		[ "Home Point #4"			] = "ホームポイント #4",
		[ "Home Point #5"			] = "ホームポイント #5",


		[ "Linkshell Concierge"		] = { "リンクシェル・コンシェルジュ", "<リンクパール仲介>" },

		[ "Mystic Retriever"		] = { "神秘的な回収物", "未取得報酬アイテムの受け取り" },

		[ "Moogle"					] = "モーグリ",

		[ "Synergy Engineer"		] = { "シナジーエンジニア", "<錬成サポート>" },
		[ "Synergy Enthusiast"		] = { "シナジーエンスージアスト", "<錬成レシピ>" },
		[ "Synergy Furnace"			] = { "錬成窯", "<錬成>" },
		[ "Trail Markings"			] = { "目印となる痕跡", "<デュナミス>" },

		[ "Transporter"				] = "トランスポーター",

		[ "Voidwatch Purveyor"		] = { "ヴォイドウォッチ・パーベイヤー", "<ヴォイドウォッチポイント交換>" },
	},

	-----------------------------------------------------------

	-- プロマシアの呪縛
	[ 901 ] = {
		[ "Louverance"				] = "ルーヴランス",
		[ "Prishe"					] = "プリッシュ",
		[ "Tenzen"					] = "テンゼン",
		[ "Selh'teus"				] = "セルテウス",
		[ "Ulmia"					] = "ウルミア",
	},

	-----------------------------------------------------------

	-- イベントシーン
	[ 910 ] = {
		[ "Ayame"					] = "アヤメ",
		[ "Falreze"					] = "ファルレゼ",
		[ "Rahal"					] = "ラーアル",
		[ "Shantotto"				] = "シャントット",
		[ "Trion"					] = "トリオン",
		[ "Volker"					] = "フォルカー",
		[ "Wolfgang"				] = "ウォルフガング",
	}

}

return NPCs
