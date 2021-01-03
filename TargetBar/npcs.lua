-- https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%8A%E3%83%AB%E3%83%95%E3%82%A1%E3%83%B3%E3%82%BF%E3%82%B8%E3%83%BCXI%E3%81%AE%E7%99%BB%E5%A0%B4%E4%BA%BA%E7%89%A9
-- Last Upade 2021/01/02 1

-- NPC
local NPCs =
{
	-----------------------------------------------------------
	-- サンドリア王国

	-- 北サンドリア
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

	-- 南サンドリア
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

	-- サンドリア港
	[ "Altiret"							] = "アルティレー",
	[ "Antreneau"						] = "アントレノー",
	[ "Brugaire"						] = "ブルゲール",
	[ "Coullave"						] = "クラーヴ",
	[ "Deraquien"						] = "デラキアン",
	[ "Maunadolace"						] = "モナドラス",
	[ "Thierride"						] = "テリード",
	[ "Ufanne"							] = "ユファン",

	-- ドラギーユ城
	[ "Aramaviont"						] = "アラマビオン",
	[ "Chalvatot"						] = "シャルヴァト",
	[ "Curilla"							] = "クリルラ",
	[ "Halver"							] = "ハルヴァー",
	[ "Milchupain"						] = "ミルシュパン",
	[ "Rahal"							] = "ラーアル",
	[ "Rembard"							] = "レンバード",

	-- ボストーニュ監獄
	[ "Novalmauge"						] = "ノヴァルモージュ",

	-- 南サンドリア[S]
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

	-- サンドリア共通(その他)
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

	-- ファノエ運河
	[ "Ineuteniace"						] = "イニュティニアス",

	-- 東ロンフォール[S]
	[ "Cerane I Virgaut"				] = "セラーヌ・I・ヴィルゴ",

	-- ジャグナー森林[S]
	[ "Laisavie X Berlends"				] = "レザヴィ・X・ベルラン",

	-- ブンカール湾[S]
	[ "Noillurie"						] = "ノユリ",

	-----------------------------------------------------------
	-- バストゥーク共和国

	-- バストゥーク鉱山区
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

	-- バストゥーク商業区
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

	-- 大工房
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

	-- バストゥーク港
	[ "Carmelo"							] = "カルメロ",
	[ "Dhen Tevryukoh"					] = "デン・テブリュコー",
	[ "Ehrhard"							] = "エアハルト",
	[ "Ensetsu"							] = "エンセツ",
	[ "Kaede"							] = "カエデ",
	[ "Kagetora"						] = "カゲトラ",
	[ "Oggbi"							] = "オグビィ",
	[ "Sugandhi"						] = "スガンディー",

	-- バストゥーク商業区[S]
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

	[ "Ulla"							] = "ウラ",

	-- バストゥーク共通(その他)
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
	[ "Volker"							] = "フォルカー",
	[ "War Cloud"						] = "ウォークラウド",
	[ "Werei"							] = "ウェライ",
	[ "Werner"							] = "ベルナー",
	[ "Yomi"							] = "ヨミ",
	[ "Zeid"							] = "ザイド",


	-- エルディーム古墳[S]
	[ "Erlene"							] = "アーリーン",

	-----------------------------------------------------------
	-- ウィンダス連邦

	-- ウィンダス森の区
	[ "Abby Jalunshi"					] = "アビ・ジャルンシ",
	[ "Aja-Panja"						] = "アジャパンジャ",
	[ "Amimi"							] = "アミミ",
	[ "Anillah"							] = "アニラー",
	[ "An Polaali"						] = "アン・ポラリ",
	[ "An Shanaa"						] = "アン・シャナ",
	[ "Apururu"							] = "アプルル",
	[ "Baha Mannohl"					] = "バハ・マンノオル",
	[ "Bin Stejihna"					] = "ビン・ステジナ",
	[ "Blank Card"						] = "ブランク・カード",
	[ "Boizo-Naizo"						] = "ボイゾナイゾ",
	[ "Bopa Greso"						] = "ボパ・グレソ",
	[ "Bozack"							] = "ボザック",
	[ "Bwi Kaghonsa"					] = "ビウィ・カゴンサ",
	[ "Catalia"							] = "カタリア",
	[ "Cayu Pensharhumi"				] = "カユ・ペンサルミ",
	[ "Cha Lebagta"						] = "カ・レバグタ",
	[ "Dazi Nosuk"						] = "ダジ・ノスク",
	[ "Dhahah"							] = "ダハハ",
	[ "Dhahih"							] = "ダハヒ",
	[ "Dhakih"							] = "ダハキ",
	[ "Dhakoh"							] = "ダハコ",
	[ "Edmondo"							] = "エドモンド",
	[ "Eight of Spades"					] = "エイト・オブ・スペード",
	[ "Erpolant"						] = "エルポラント",
	[ "Etsa Rhuyuli"					] = "エッサ・ルユリ",
	[ "Femardaque"						] = "フェマルダク",
	[ "Fhelm Jobeizat"					] = "フェルム・ジョベイザット",
	[ "Forine"							] = "フォリネ",
	[ "Four of Spades"					] = "フォー・オブ・スペード",
	[ "Funtrox"							] = "フントロックス",
	[ "Gioh Ajihri"						] = "ギオ・アジリ",
	[ "Gottah Maporushanoh"				] = "ゴッタ・マポルシャノ",
	[ "Hae Jakkya"						] = "ハエ・ジャッキヤ",
	[ "Hakaru-Marikaru"					] = "ハカルマリカル",
	[ "Harara, W.W."					] = "ハララ, W.W.",
	[ "Hlif"							] = "ハルイフ",
	[ "Hohl Nhaesin"					] = "ホル・ナエシン",
	[ "Ibwam"							] = "イブワム",
	[ "Illu Bohjaa"						] = "イール・ボジャ",
	[ "Istvan"							] = "イストヴァン",
	[ "Iya Rihyo"						] = "イヤ・リヨ",
	[ "Jack of Spades"					] = "ジャック・オブ・スペード",
	[ "Ju Kamja"						] = "ジュ・カムジャ",
	[ "Kapeh Myohrye"					] = "カペ・ミョーリエ",
	[ "Khomi Tibariah"					] = "コミ・チバリア",
	[ "Ki Volep"						] = "キ・ヴォレップ",
	[ "Kiria-Romaria"					] = "キリアロマリア",
	[ "Kohpe Takhabio"					] = "コペ・タカビオ",
	[ "Kopua-Mobua A.M.A.N."			] = "コプアモブア A.M.A.N.",
	[ "Kopuro-Popuro"					] = "コプロポプロ",
	[ "Kororo"							] = "コロロ",
	[ "Kototo"							] = "コトト",
	[ "Kuoh Rhel"						] = "クオ・レル",
	[ "Kyaa Taali"						] = "キャッ・ターリ",
	[ "Lih Pituu"						] = "リィ・ピトゥー",
	[ "Matata"							] = "マタタ",
	[ "Meh Kotomaihro"					] = "メ・コトマイロ",
	[ "Mheca Khetashipah"				] = "メカ・ケタシパ",
	[ "Miiri-Wohri"						] = "ミーリウォーリ",
	[ "Millerovieunet"					] = "ミレロヴィエウネット",
	[ "Mourices"						] = "モーリセス",
	[ "Muhk Johldy"						] = "ムク・ジョルディ",
	[ "Mul Betreh"						] = "ムル・ベトレ",
	[ "Mushuhi-Metahi"					] = "ムシュヒメタヒ",
	[ "Nanaa Mihgo"						] = "ナナー・ミーゴ",
	[ "Nhobi Zalkia"					] = "ノビ・ザルキア",
	[ "Nikkoko"							] = "ニッココ",
	[ "Nine of Spades"					] = "ナイン・オブ・スペード",
	[ "Nya Labiccio"					] = "ニャ・ラビッキオ",
	[ "Orahi-Karapahi"					] = "オラヒカラパヒ",
	[ "Orlaine"							] = "オルラーヌ",
	[ "Otte Burhiyu"					] = "オッテ・ブリユ",
	[ "Palyalya"						] = "パリャリャ",
	[ "Panoquieur, T.K."				] = "パノキュイエル, T.K.",
	[ "Patsaa Maehoc"					] = "パッサ・マエオク",
	[ "Pattsu-Yabittsu"					] = "パッツヤビッツ",
	[ "Pehki Machumaht"					] = "ペキ・マクマト",
	[ "Perih Vashai"					] = "ペリィ・ヴァシャイ",
	[ "Peshi Yohnts"					] = "ペシ・ヨーンツ",
	[ "Pew Sahbaraef"					] = "ペウ・サバラエフ",
	[ "Phuz Mannohl"					] = "プズ・マンノオル",
	[ "Ponono"							] = "ポノノ",
	[ "Pulonono"						] = "プロノノ",
	[ "Phub Bayzarahn"					] = "プブ・ベイザラン",
	[ "Quesse"							] = "ケッセ",
	[ "Rakoh Buuma"						] = "ラコ・ブーマ",
	[ "Retto-Marutto"					] = "レットマルット",
	[ "Ronana"							] = "ロナナ",
	[ "Samigo-Pormigo"					] = "サミゴポーミゴ",
	[ "Sariale"							] = "サリアレ",
	[ "Sevah Kummekihn"					] = "セヴァ・クーメキン",
	[ "Selele"							] = "セレレ",
	[ "Seno Zarhin"						] = "セノ・ザリン",
	[ "Seven of Spades"					] = "セブン・オブ・スペード",
	[ "Shaty-Monty"						] = "シャティモンティ",
	[ "Six of Spades"					] = "シックス・オブ・スペード",
	[ "Sola Jaab"						] = "ソラ・ジャーブ",
	[ "Soni-Muni"						] = "ソニムニ",
	[ "Spare Zero"						] = "スペア・ゼロ",
	[ "Spare One"						] = "スペア・ワン",
	[ "Spare Two"						] = "スペア・トゥー",
	[ "Spare Three"						] = "スペア・スリー",
	[ "Spare Four"						] = "スペア・フォー",
	[ "Spare Five"						] = "スペア・ファイブ",
	[ "Sunana"							] = "スナナ",
	[ "Tapoh Lihzeh"					] = "タポ・リゼ",
	[ "Taraihi-Perunhi"					] = "タライヒペルンヒ",
	[ "Terude-Harude"					] = "テルデハルデ",
	[ "Teldro-Kesdrodo"					] = "テルドロケスドロド",
	[ "Ten of Spades"					] = "テン・オブ・スペード",
	[ "Tesch Garanjy"					] = "テスク・ガランジ",
	[ "Three of Spades"					] = "スリー・オブ・スペード",
	[ "Tico Karimakiba"					] = "チコ・カリマキバ",
	[ "Tih Pikeh"						] = "チ・ピケ",
	[ "Toppi-Meppi"						] = "トッピメッピ",
	[ "Two of Spades"					] = "トゥー・オブ・スペード",
	[ "Umumu"							] = "ウムム",
	[ "Uuroro"							] = "ウーロロ",
	[ "Varun"							] = "ヴァルン",
	[ "Wani Casdohry"					] = "ワニ・カスドリー",
	[ "Wetata"							] = "ウェタタ",
	[ "Wije Tiren"						] = "ウィジェ・チレン",
	[ "Yonolala"						] = "ヨノララ",
	[ "Zahsa Syalmhaia"					] = "ザサ・シャルマヤ",

	-- チョコボサーキット
	[ "Chualulu"						] = "チュアルル",
	[ "Raquel"							] = "ラクエル",
	[ "Rungaga"							] = "ルンガガ",
	[ "Timothy"							] = "ティモシー",



	-- ウィンダス石の区
	[ "Hiwon-Biwon"						] = "ヒウォンビウォン",
	[ "Koru-Moru"						] = "コルモル",
	[ "Shantotto"						] = "シャントット",
	[ "Yoran-Oran"						] = "ヨランオラン",

	-- ウィンダス水の区
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

	-- ウィンダス港
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

	-- 天の塔
	[ "Chumimi"							] = "チュミミ",
	[ "Kupipi"							] = "クピピ",
	[ "Mhabi Molkot"					] = "マビ・モルコット",
	[ "Zubaba"							] = "スババ",

	-- ウィンダス水の区[S]
	[ "Dhea Prandoleh"					] = "デア・プランドレ",
	[ "Ezura-Romazura"					] = "エズラロマズラ",
	[ "Haja Zhwan"						] = "ハジャ・ゾワン",
	[ "Lutete"							] = "ルテテ",
	[ "Nyumomo"							] = "ニュモモ",
	[ "Vhino Delkahngo"					] = "ヴィノ・デルカオンゴ",

	-- ウィンダス共通(その他)
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

	-----------------------------------------------------------

	-- タブナジア地下壕
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

	-----------------------------------------------------------

	-- アトルガン白門
	[ "Rodin-Comidin"			] = "ロディンコミディン",

	-----------------------------------------------------------

	-- 共通
	[ "A.M.A.N. Reclaimer"		] = "A.M.A.N. リクレーマー",
	[ "A.M.A.N. Validator"		] = "A.M.A.N. バリデーター",

	[ "Artisan Moogle"			] = "アーティザン モーグリ",

	[ "Auction Counter"			] = "オークション カウンター",

	[ "Chat Manual"				] = "チャット マニュアル",
	[ "Chocobo"					] = "チョコボ",

	[ "Door:Chocobo Stables"	] = "扉:チョコボ厩舎",

	[ "Gate: Chocobo Circuit"	] = "門:チョコボサーキット",
	[ "Game Table"				] = "ゲームテーブル",

	[ "Home Point #1"			] = "ホームポイント #1",
	[ "Home Point #2"			] = "ホームポイント #2",
	[ "Home Point #3"			] = "ホームポイント #3",
	[ "Home Point #4"			] = "ホームポイント #4",


	[ "Linkshell Concierge"		] = "リンクシェル コンシェルジュ",

	[ "Mystic Retriever"		] = "神秘的な回収物",

	[ "Moogle"					] = "モーグリ",

	[ "Voidwatch Purveyor"		] = "ヴォイドウォッチ パーベイヤー",


	-- プロマシアの呪縛
	[ "Louverance"				] = "ルーヴランス",
	[ "Prishe"					] = "プリッシュ",
	[ "Tenzen"					] = "テンゼン",
	[ "Selh'teus"				] = "セルテウス",
	[ "Ulmia"					] = "ウルミア",




}

return NPCs