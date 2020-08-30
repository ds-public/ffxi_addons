-- https://github.com/Windower/Resources/blob/master/resources_data/job_abilities.lua

-- ジョブアビリティによる基本効果時間
local Abilities =
{
	[   16 ] = {  44,   45 },		-- マイティストライク
	[   17 ] = {  46,   45 },		-- 百烈拳
	[   18 ] = nil,					-- 女神の祝福
	[   19 ] = {  47,   60 },		-- 魔力の泉
	[   20 ] = {  48,   60 },		-- 連続魔
	[   21 ] = {  49,   39 },		-- 絶対回避
	[   22 ] = {  50,   30 },		-- インビンシブル
	[   23 ] = {  51,   30 },		-- ブラッドウェポン
	[   24 ] = nil,					-- 使い魔
	[   25 ] = {  52,  180 },		-- ソウルボイス
	[   26 ] = nil,					-- イーグルアイ
	[   27 ] = {  54,   30 },		-- 明鏡止水
	[   28 ] = nil,					-- 微塵がくれ
	[   29 ] = { 126,   60 },		-- 竜剣
	[   30 ] = {  55,  180 },		-- アストラルフロウ
	[   31 ] = {  56,  180 },		-- バーサク
	[   32 ] = {  68,   30 },		-- ウォークライ
	[   33 ] = {  57,  180 },		-- ディフェンダー
	[   34 ] = {  58,  180 },		-- アグレッサー
	[   35 ] = {},					-- 挑発
	[   36 ] = {  59,   30 },		-- 集中
	[   37 ] = {  60,   30 },		-- 回避
	[   38 ] = nil,					-- チャクラ
	[   39 ] = { 618,   18 },		-- ためる
	[   40 ] = {  61,  300 },		-- かまえる
	[   41 ] = nil,					-- ぬすむ
	[   42 ] = {  32,   30 },		-- とんずら
	[   43 ] = {  75,  135 },		-- かくれる
	[   44 ] = {  65,   60 },		-- 不意打ち
	[   45 ] = nil,					-- かすめとる
	[   46 ] = {  10,    6 },		-- シールドバッシュ
	[   47 ] = {  74,  180 },		-- ホーリーサーク
	[   48 ] = {  62,   30 },		-- センチネル
	[   49 ] = {  63,   60 },		-- 暗黒
	[   50 ] = {  75,  180 },		-- アルケインサークル
	[   51 ] = {  64,  180 },		-- ラストリゾート
	[   52 ] = nil,					-- あやつる
	[   53 ] = nil,					-- みやぶる
	[   54 ] = nil,					-- なだめる
	[   55 ] = nil,					-- ペットコマンド
	[   56 ] = nil,					-- スカベンジ
	[   57 ] = {  11,   30 },		-- 影縫い
	[   58 ] = nil,					-- カモフラージュ
	[   59 ] = {  72,   60 },		-- 狙い撃ち
	[   60 ] = {  73,   60 },		-- 乱れ撃ち
	[   61 ] = nil,					-- コールワイバーン
	[   62 ] = {  67,   30 },		-- 心眼
	[   63 ] = {},					-- 黙想
	[   64 ] = { 117,  180 },		-- 護摩の守護円
	[   65 ] = { 118,  180 },		-- エンシェントサークル
	[   66 ] = nil,					-- ジャンプ
	[   67 ] = nil,					-- ハイジャンプ
	[   68 ] = nil,					-- スーパージャンプ
	[   69 ] = nil,					-- たたかえ
	[   70 ] = nil,					-- もどれ
	[   71 ] = nil,					-- かえれ
	[   72 ] = nil,					-- ほんきだせ
	[   73 ] = nil,					-- まってろ
	[   74 ] = {  78,   60 },		-- 女神の印
	[   75 ] = {  79,   60 },		-- 精霊の印
	[   76 ] = {  87,   60 },		-- だまし討ち
	[   77 ] = {   0,   12 },		-- ウェポンバッシュ
	[   78 ] = nil,					-- いたわる
	[   79 ] = { 114,   15 },		-- かばう
	[   80 ] = nil,					-- スピリットリンク
	[   81 ] = nil,					-- 罵倒
	[   82 ] = nil,					-- 気孔弾
	[   83 ] = nil,					-- コンバート
	[   84 ] = nil,					-- アカンプリス
	[   85 ] = nil,					-- よびだす
	[   86 ] = { 115,   60 },		-- エンドレスショット
	[   87 ] = nil,					-- 送還
	[   88 ] = nil,					-- 神獣の攻撃
	[   89 ] = nil,					-- 神獣の退避"
	[   90 ] = nil,					-- 神獣の帰還
	[   91 ] = nil,					-- 契約の履行:幻術
	[   92 ] = {  93,   30 },		-- ランパート
	[   93 ] = { 163,   30 },		-- アジュールロー
	[   94 ] = { 164,   30 },		-- ブルーチェーン
	[   95 ] = { 165,   30 },		-- ブルーバースト
	[   96 ] = nil,					-- ワイルドカード
	[   97 ] = nil,					-- ファントムロール
	[   98 ] = { 310,  300 },		-- ファイターズロール
	[   99 ] = { 311,  300 },		-- モンクスロール
	[  100 ] = { 312,  300 },		-- ヒーラーズロール
	[  101 ] = { 313,  300 },		-- ウィザーズロール
	[  102 ] = { 314,  300 },		-- ワーロックスロール
	[  103 ] = { 315,  300 },		-- ローグズロール
	[  104 ] = { 316,  300 },		-- ガランツロール
	[  105 ] = { 317,  300 },		-- カオスロール
	[  106 ] = { 318,  300 },		-- ビーストロール
	[  107 ] = { 319,  300 },		-- コーラルロール
	[  108 ] = { 320,  300 },		-- ハンターズロール
	[  109 ] = { 321,  300 },		-- サムライロール
	[  110 ] = { 322,  300 },		-- ニンジャロール
	[  111 ] = { 323,  300 },		-- ドラケンロール
	[  112 ] = { 324,  300 },		-- エボカーズロール
	[  113 ] = { 325,  300 },		-- メガスズロール
	[  114 ] = { 326,  300 },		-- コルセアズロール
	[  115 ] = { 327,  300 },		-- パペットロール
	[  116 ] = { 328,  300 },		-- ダンサーロール
	[  117 ] = { 329,  300 },		-- スカラーロール
	[  118 ] = { 330,  300 },		-- ボルターズロール
	[  119 ] = { 331,  300 },		-- キャスターズロール
	[  120 ] = { 332,  300 },		-- コアサーズロール
	[  121 ] = { 333,  300 },		-- ブリッツァロール
	[  122 ] = { 334,  300 },		-- タクティックロール
	[  123 ] = nil,					-- ダブルアップ
	[  124 ] = nil,					-- クイックドロー
	[  125 ] = nil,					-- ファイアショット
	[  126 ] = nil,					-- アイスショット
	[  127 ] = {},					-- ウィンドショット
	[  128 ] = nil,					-- アースショット
	[  129 ] = nil,					-- サンダーショット
	[  130 ] = nil,					-- ウォータショット
	[  131 ] = nil,					-- ライトショット
	[  132 ] = nil,					-- ダークショット
	[  133 ] = nil,					-- ランダムディール

	[  135 ] = { 166,   60 },		-- オーバードライヴ
	[  136 ] = nil,					-- アクティベート
	[  137 ] = nil,					-- リペアー
	[  138 ] = nil,					-- ディプロイ
	[  139 ] = nil,					-- ディアクティベート
	[  140 ] = nil,					-- リトリーブ
	[  141 ] = nil,					-- ファイアマニューバ
	[  142 ] = nil,					-- アイスマニューバ
	[  143 ] = nil,					-- ウィンドマニューバ
	[  144 ] = nil,					-- アースマニューバ
	[  145 ] = nil,					-- サンダーマニューバ
	[  146 ] = nil,					-- ウォータマニューバ
	[  147 ] = nil,					-- ライトマニューバ
	[  148 ] = nil,					-- ダークマニューバ
	[  149 ] = { 340,   60 },		-- ウォリアーチャージ
	[  150 ] = nil,					-- トマホーク
	[  151 ] = {  88,  180 },		-- マントラ
	[  152 ] = { 341,  180 },		-- 無想無念
	[  153 ] = nil,					-- マーター
	[  154 ] = nil,					-- デヴォーション
	[  155 ] = { 342,   60 },		-- アサシンチャージ
	[  156 ] = { 343,   60 },		-- フェイント
	[  157 ] = { 344,   60 },		-- フィールティ
	[  158 ] = nil,					-- シバルリー
	[  159 ] = { 345,   60 },		-- ダークシール
	[  160 ] = { 346,  180 },		-- ディアボリクアイ
	[  161 ] = nil,					-- フェラルハウル
	[  162 ] = { 349,  180 },		-- K.インスティンクト
	[  163 ] = { 347,   60 },		-- ナイチンゲール
	[  164 ] = { 348,   60 },		-- トルバドゥール
	[  165 ] = { 350,   60 },		-- ステルスショット
	[  166 ] = { 351,   60 },		-- フラッシーショット
	[  167 ] = nil,					-- 士気昂揚
	[  168 ] = nil,					-- 峰打ち
	[  169 ] = {   0,  180 },		-- ディープブリージング　次の飛竜のブレスの威力が大幅アップ(アイコンを表示するなら126竜剣が良さそうだがおそらく効果切れが取得できないのでアイコンは表示しない方が良いかもしれない)
	[  170 ] = { 149,   30 },		-- アンゴン
	[  171 ] = { 352,   60 },		-- 散華
	[  172 ] = nil,					-- 契約の履行:験術
	[  173 ] = { 353,  300 },		-- 八双
	[  174 ] = { 354,  300 },		-- 星眼
	[  175 ] = { 355,   60 },		-- コンバージェンス
	[  176 ] = { 356,   60 },		-- ディフュージョン
	[  177 ] = { 357,   60 },		-- スネークアイ
	[  178 ] = nil,					-- フォールド
	[  179 ] = nil,					-- 黒衣チェンジ
	[  180 ] = nil,					-- 腹話術
	[  181 ] = { 376,   60 },		-- トランス
	[  182 ] = nil,					-- サンバモード
	[  183 ] = nil,					-- ワルツモード
	[  184 ] = { 368,   90 },		-- ドレインサンバ
	[  185 ] = { 368,   90 },		-- ドレインサンバⅡ
	[  186 ] = { 368,   90 },		-- ドレインサンバⅢ
	[  187 ] = { 369,   90 },		-- アスピルサンバ
	[  188 ] = { 369,   90 },		-- アスピルサンバⅡ
	[  189 ] = { 370,   90 },		-- ヘイストサンバ
	[  190 ] = {},					-- ケアルワルツ
	[  191 ] = nil,					-- ケアルワルツⅡ
	[  192 ] = nil,					-- ケアルワルツⅢ
	[  193 ] = nil,					-- ケアルワルツⅣ
	[  194 ] = nil,					-- ヒーリングワルツ
	[  195 ] = nil,					-- ディバインワルツ
	[  196 ] = { {  69,  180, }, {  71,  180 } },		-- スペクトラルジグ
	[  197 ] = { 176,  120 },		-- チョコボジグ
	[  198 ] = nil,					-- ジグモード
	[  199 ] = nil,					-- ステップ
	[  200 ] = nil,					-- フラリッシュⅠ
	[  201 ] = { 386,   60 },		-- クイックステップ
	[  202 ] = { 391,   60 },		-- ボックスステップ
	[  203 ] = { 396,   60 },		-- スタッターステップ
	[  204 ] = nil,					-- A.フラリッシュ
	[  205 ] = nil,					-- D.フラリッシュ
	[  206 ] = {},					-- R.フラリッシュ
	[  207 ] = nil,					-- V.フラリッシュ
	[  208 ] = { 375,   60 },		-- B.フラリッシュ
	[  209 ] = { 640,   10 },		-- W.フラリッシュ
	[  210 ] = { 377,  180 },		-- 連環計
	[  211 ] = { 358, 7200 },		-- 白のグリモア
	[  212 ] = { 359, 7200 },		-- 黒のグリモア
	[  213 ] = nil,					-- フラリッシュⅡ
	[  214 ] = nil,					-- 以逸待労の計
	[  215 ] = nil,					-- 簡素清貧の章
	[  216 ] = nil,					-- 電光石火の章
	[  217 ] = nil,					-- 意気昂然の章
	[  218 ] = nil,					-- 女神降臨の章
	[  219 ] = nil,					-- 勤倹小心の章
	[  220 ] = nil,					-- 疾風迅雷の章
	[  221 ] = nil,					-- 気炎万丈の章
	[  222 ] = nil,					-- 精霊光来の章
	[  223 ] = nil,					-- 戦術魔道書
	[  224 ] = { 371, 7200 },		-- ベロシティショット
	[  225 ] = nil,					-- ひきつけろ
	[  226 ] = { 405,  180 },		-- リタリエーション
	[  227 ] = { 406,   60 },		-- 猫足立ち
	[  228 ] = nil,					-- ぶんどる
	[  229 ] = { 409,   60 },		-- ピアニッシモ
	[  230 ] = { 408,   60 },		-- 石火之機

	[  232 ] = nil,					-- エレメントサイフォン
	[  233 ] = { 187, 7200 },		-- 机上演習
	[  234 ] = { 401, 7200 },		-- 白の補遺
	[  235 ] = { 402, 7200 },		-- 黒の補遺
	[  236 ] = nil,					-- コラボレーター
	[  237 ] = { 410,  300 },		-- 剣の舞い
	[  238 ] = { 411,  300 },		-- 扇の舞い
	[  239 ] = nil,					-- ノーフットライズ
	[  240 ] = nil,					-- 不惜身命の章
	[  241 ] = nil,					-- 一心精進の章
	[  242 ] = nil,					-- 天衣無縫の章
	[  243 ] = nil,					-- 無憂無風の章
	[  244 ] = { 416,   60 },		-- 大悟徹底
	[  245 ] = { 417, 7200 },		-- ハートオブソラス
	[  246 ] = { 418, 7200 },		-- ハートオブミゼリ
	[  247 ] = { 419, 7200 },		-- コンポージャー
	[  248 ] = { 420,  300 },		-- 陽忍
	[  249 ] = { 421,  300 },		-- 陰忍
	[  250 ] = nil,					-- 神獣の加護
	[  251 ] = nil,					-- しじをさせろ
	[  252 ] = { 435,  300 },		-- リストレント
	[  253 ] = { 436,   30 },		-- 絶対カウンター
	[  254 ] = { 437,  300 },		-- マナウォール
	[  255 ] = { 438,   60 },		-- 神聖の印
	[  256 ] = { 439,   60 },		-- ネザーヴォイド
	[  257 ] = { 433,   90 },		-- ダブルショット
	[  258 ] = { 440,   60 },		-- 先義後利
	[  259 ] = { 441,   60 },		-- 二重
	[  260 ] = nil,					-- スピリットジャンプ
	[  261 ] = { 442,   30 },		-- プレスト
	[  262 ] = nil,					-- ディバインワルツⅡ
	[  263 ] = nil,					-- フラリッシュⅢ
	[  264 ] = { 443,   60 },		-- C.フラリッシュ
	[  265 ] = nil,					-- ライブラ
	[  266 ] = nil,					-- タクティクスウィッチ
	[  267 ] = { 460,   30 },		-- ブラッドレイジ

	[  269 ] = { 461,  180 },		-- インピタス
	[  270 ] = { 453,   60 },		-- 女神の愛撫
	[  271 ] = { 477,   60 },		-- 女神の聖域
	[  272 ] = nil,					-- エンミティダウス
	[  273 ] = { 229,   60 },		-- 魔力の雫
	[  274 ] = { 454,   60 },		-- サボトゥール
	[  275 ] = { 230,   60 },		-- クイックマジック
	[  276 ] = { 462,   60 },		-- コンスピレーター
	[  277 ] = { 463,  180 },		-- セプルカー
	[  278 ] = { 478,   60 },		-- パリセード
	[  279 ] = { 464,  180 },		-- アルケインクレスト
	[  280 ] = { 479,  180 },		-- レッドデリリアム
	[  281 ] = nil,					-- きばれ
	[  282 ] = nil,					-- ふりしぼれ
	[  283 ] = { 455,   60 },		-- テヌート
	[  284 ] = { 231,   60 },		-- マルカート
	[  285 ] = nil,					-- バウンティショット
	[  286 ] = { 482,  180 },		-- デコイショット
	[  287 ] = { 465,  180 },		-- 破魔の刃
	[  288 ] = { 483,   60 },		-- 葉隠

	[  291 ] = { 484,   60 },		-- 一隻眼
	[  292 ] = { 466,  180 },		-- ドラゴンブレイカー
	[  293 ] = nil,					-- ソウルジャンプ

	[  295 ] = nil,					-- ステディウィング
	[  296 ] = nil,					-- マナシード
	[  297 ] = { 457,   60 },		-- エフラックス
	[  298 ] = { 485,   60 },		-- ノートリアスナレッジ

	[  301 ] = { 467,   90 },		-- トリプルショット
	[  302 ] = { 335,  300 },		-- アライズロール
	[  303 ] = { 336,  300 },		-- マイザーロール
	[  304 ] = { 337,  300 },		-- コンパニオンロール
	[  305 ] = { 338,  300 },		-- カウンターロール

	[  309 ] = nil,					-- クールダウン
	[  310 ] = nil,					-- 応急処置
	[  311 ] = nil,					-- ケアルワルツⅤ
	[  312 ] = { 448,   60 },		-- フェザーステップ
	[  313 ] = { 468,   60 },		-- S.フラリッシュ
	[  314 ] = { 472,   60 },		-- T.フラリッシュ

	[  316 ] = nil,					-- 令狸執鼠の章
	[  317 ] = nil,					-- 震天動地の章
	[  318 ] = nil,					-- スマイトブレス
	[  319 ] = nil,					-- レストアブレス
	[  320 ] = { 640,   60 },		-- 渾然一体　被連携ダメージアップ
	[  321 ] = {  22,   30 },		-- まどわす
	[  322 ] = nil,					-- フラッシング
	[  323 ] = { 490,   30 },		-- ブラーゼンラッシュ
	[  324 ] = { 491,   30 },		-- インナーストレング
	[  325 ] = { 492,   30 },		-- 女神の羽衣
	[  326 ] = { 493,   60 },		-- サテルソーサリー
	[  327 ] = { 494,   60 },		-- スタイミー
	[  328 ] = nil,					-- ラーセニー
	[  329 ] = { 496,   30 },		-- インターヴィーン
	[  330 ] = { 497,   30 },		-- ソールエンスレーヴ
	[  331 ] = { 498,   60 },		-- アンリーシュ
	[  332 ] = { 499,  180 },		-- クラリオンコール
	[  333 ] = { 500,   60 },		-- オーバーキル
	[  334 ] = { 501,   45 },		-- 八重霞
	[  335 ] = { 502,   45 },		-- 身影
	[  336 ] = { 503,   30 },		-- フライハイ
	[  337 ] = { 504,   30 },		-- アストラルパッセージ
	[  338 ] = { 505,   60 },		-- N.ウィズドム
	[  339 ] = nil,					-- カットカード
	[  340 ] = nil,					-- ヘディーアーテフィス
	[  341 ] = { 507,   30 },		-- グランドパー
	[  342 ] = nil,					-- カペルエミサリウス
	[  343 ] = { 513,  180 },		-- ボルスター
	[  344 ] = nil,					-- スワイプ
	[  345 ] = nil,					-- フルサークル
	[  346 ] = nil,					-- エンデュアエマネイト
	[  347 ] = nil,					-- サークルエンリッチ
	[  348 ] = { 517,   60 },		-- コリメイトファーバー
	[  349 ] = nil,					-- ライフサイクル
	[  350 ] = { 569,   60 },		-- グローリーブレイズ
	[  351 ] = { 518,   60 },		-- デマテリアライズ
	[  352 ] = {  59,   60 },		-- タウマテルギフォカス
	[  353 ] = nil,					-- コンセントリクパルス
	[  354 ] = nil,					-- メンドハレイション
	[  355 ] = nil,					-- レイディアルアルカナ
	[  356 ] = { 522,   30 },		-- E.スフォルツォ
	[  357 ] = nil,					-- エンチャントルーン
	[  358 ] = { 523,  300 },		-- イグニス
	[  359 ] = { 524,  300 },		-- ゲールス
	[  360 ] = { 525,  300 },		-- フラブラ
	[  361 ] = { 526,  300 },		-- テッルス
	[  362 ] = { 527,  300 },		-- スルポール
	[  363 ] = { 528,  300 },		-- ウンダ
	[  364 ] = { 529,  300 },		-- ルックス
	[  365 ] = { 530,  300 },		-- テネブレイ
	[  366 ] = { 531,  120 },		-- ヴァレション
	[  367 ] = { 532,  120 },		-- ソードプレイ
	[  368 ] = {},					-- ランジ
	[  369 ] = { 533,  120 },		-- フルーグ
	[  370 ] = { 534,   60 },		-- エンボルド
	[  371 ] = { 535,  180 },		-- ヴァリエンス
	[  372 ] = { 536,  300 },		-- ガンビット
	[  373 ] = { 537,   10 },		-- リエモン
	[  374 ] = { 152,   30 },		-- ワンフォアオール
	[  375 ] = { 571,   30 },		-- レイク
	[  376 ] = { 570,   90 },		-- バットゥタ
	[  377 ] = { 508,   60 },		-- ワイデンコンパス
	[  378 ] = { 509,   30 },		-- オディリックサブタ
	[  379 ] = nil,					-- ワード
	[  380 ] = nil,					-- エフューズ
	[  381 ] = { 176,  120 },		-- チョコボジグⅡ
	[  382 ] = nil,					-- リリンク
	[  383 ] = {},					-- ビベイシャス
	[  384 ] = { 582,   60 },		-- コントラダンス
	[  385 ] = { 583,   60 },		-- アポジー
	[  386 ] = { 584,   60 },		-- エントラスト
	[  387 ] = nil,					-- しょうしゅう
	[  388 ] = { 598,   60 },		-- カスケード
	[  389 ] = { 599,   60 },		-- コンスームマナ
	[  390 ] = { 339,  300 },		-- ナチュラリストロール
	[  391 ] = { 600,  300 },		-- ルーニストロール
	[  392 ] = { 601,   60 },		-- クルケッドカード
	[  393 ] = nil,					-- スピリットボンド
	[  394 ] = { 621,  180 },		-- マジェスティ

	[  512 ] = nil,					-- ルビーの癒し
	[  513 ] = {   3,   60 },		-- ポイズンネイル　召喚獣の技(追加効果:毒)
	[  514 ] = { 154,  180 },		-- ルビーの輝き
	[  515 ] = { 251,  180 },		-- ルビーの煌き　ステータスのいずれかを上昇(ひとまず食事アイコンを代わりに表示)
	[  516 ] = nil,					-- プチメテオ
	[  517 ] = nil,					-- ルビーの癒しⅡ
	[  518 ] = nil,					-- シアリングライト
	[  519 ] = nil,					-- ホーリーミスト
	[  520 ] = nil,					-- ルビーの安らぎ
	[  521 ] = nil,					-- リーガルスクラッチ
	[  522 ] = {   2,   30 },		-- ミュインララバイ
	[  523 ] = { {  6,   20 }, {  16,   10 } },		-- イアリーアイ
	[  524 ] = nil,					-- レベル？ホーリー
	[  525 ] = nil,					-- レイズⅡ
	[  526 ] = { 113, 3600 },		-- リレイズⅡ
	[  527 ] = { 113, 3600 },		-- アルタナフェーバー
	[  528 ] = {   5,   60 },		-- ムーンリットチャージ
	[  529 ] = {   4,   60 },		-- クレセントファング
	[  530 ] = { { 146,   60 }, { 148,   60 } },		-- ルナークライ
	[  531 ] = nil,					-- ルナーロア
	[  532 ] = { { 119,  180 }, { 120,  180 }, { 121,  180 }, { 122,  180 }, { 123,  180 }, { 124, 180 }, { 125,  180 } },		-- 上弦の唸り
	[  533 ] = { {  90,  180 }, {  92,  180 } },		-- 下弦の咆哮
	[  534 ] = nil,					-- エクリプスバイト

	[  536 ] = nil,					-- ハウリングムーン
	[  537 ] = nil,					-- ルナーベイ
	[  538 ] = { 251,   60 },		-- ヘヴンズハウル　エンドレインまたはエンアスピル
	[  539 ] = { 503,  180 },		-- インパクト
	[  544 ] = nil,					-- パンチ

	[  545 ] = nil,					-- ファイアⅡ
	[  546 ] = nil,					-- バーニングストライク
	[  547 ] = nil,					-- ダブルパンチ
	[  548 ] = {  68,   60 },		-- 紅蓮の咆哮
	[  549 ] = nil,					-- ファイアⅣ
	[  550 ] = nil,					-- フレイムクラッシュ
	[  551 ] = nil,					-- メテオストライク
	[  552 ] = nil,					-- インフェルノ
	[  553 ] = {  94,   90 },		-- 灼熱の咆哮
	[  554 ] = { 128,   60 },		-- コンフラグストライク

	[  560 ] = {  13,   60 },		-- ロックスロー
	[  561 ] = nil,					-- ストーンⅡ
	[  562 ] = {  11,   60 },		-- ロックバスター
	[  563 ] = {  13,   60 },		-- メガリススロー
	[  564 ] = {  37,  900 },		-- 大地の守り
	[  565 ] = nil,					-- ストーンⅣ
	[  566 ] = {  11,   60 },		-- マウンテンバスター
	[  567 ] = {  10,    5 },		-- ジオクラッシュ
	[  568 ] = nil,					-- アースフューリー
	[  569 ] = { 458,   60 },		-- 大地の鎧
	[  570 ] = {  13,   60 },		-- クラッグスロー

	[  576 ] = nil,					-- バラクーダダイブ
	[  577 ] = nil,					-- ウォータⅡ
	[  578 ] = {  12,   60 },		-- テールウィップ
	[  579 ] = nil,					-- 湧水
	[  580 ] = {  13,  180 },		-- スロウガ
	[  581 ] = nil,					-- ウォータⅣ
	[  582 ] = nil,					-- スピニングダイブ
	[  583 ] = nil,					-- グランドフォール
	[  584 ] = nil,					-- タイダルウェイブ
	[  585 ] = { 147,   60 },		-- タイダルロア
	[  586 ] = { 585,  180 },		-- スージングカレント

	[  592 ] = nil,					-- クロー
	[  593 ] = nil,					-- エアロⅡ
	[  594 ] = nil,					-- 風の囁き
	[  595 ] = {  33,  180 },		-- ヘイスガ
	[  596 ] = {  36,  900 },		-- 真空の鎧
	[  597 ] = nil,					-- エアロⅣ
	[  598 ] = nil,					-- プレデタークロー
	[  599 ] = nil,					-- ウインドブレード
	[  600 ] = nil,					-- エリアルブラスト
	[  601 ] = { 176,  120 },		-- 真空の具足
	[  602 ] = {  33,  180 },		-- ヘイスガⅡ

	[  608 ] = nil,					-- アクスキック
	[  609 ] = nil,					-- ブリザドⅡ
	[  610 ] = {  35,  180 },		-- 凍てつく鎧
	[  611 ] = {   2,   60 },		-- スリプガ
	[  612 ] = nil,					-- ダブルスラップ
	[  613 ] = nil,					-- ブリザドⅣ
	[  614 ] = nil,					-- ラッシュ
	[  615 ] = nil,					-- ヘヴンリーストライク
	[  616 ] = nil,					-- ダイヤモンドダスト
	[  617 ] = { 148,  180 },		-- ダイヤモンドストーム
	[  618 ] = { 587,  300 },		-- クリスタルブレシング

	[  624 ] = {  10,    8 },		-- ショックストライク
	[  625 ] = nil,					-- サンダーⅡ
	[  626 ] = {  98,  120 },		-- 雷鼓
	[  627 ] = {   4,   60 },		-- サンダースパーク
	[  628 ] = {  38,  180 },		-- 雷電の鎧
	[  629 ] = nil,					-- サンダーⅣ
	[  630 ] = {  10,    8 },		-- カオスストライク
	[  631 ] = nil,					-- サンダーストーム
	[  632 ] = nil,					-- ジャッジボルト
	[  633 ] = {  10,    8 },		-- スタンガ
	[  634 ] = {  10,    8 },		-- ボルトストライク

	[  639 ] = nil,					-- ヒールブレスⅣ
	[  640 ] = nil,					-- ヒールブレス
	[  641 ] = nil,					-- ヒールブレスⅡ
	[  642 ] = nil,					-- ヒールブレスⅢ
	[  643 ] = nil,					-- キュアポイズン
	[  644 ] = nil,					-- キュアブラインド
	[  645 ] = nil,					-- キュアパラライズ
	[  646 ] = nil,					-- フレイムブレス
	[  647 ] = nil,					-- フロストブレス
	[  648 ] = nil,					-- ガストブレス
	[  649 ] = nil,					-- サンドブレス
	[  650 ] = nil,					-- ライトニングブレス
	[  651 ] = nil,					-- ハイドロブレス
	[  652 ] = nil,					-- スーパークライム
	[  653 ] = nil,					-- キュアカーズ
	[  654 ] = nil,					-- キュアウィルス

	[  656 ] = nil,					-- カミサドー
	[  657 ] = {  12,   60 },		-- ソムノレンス
	[  658 ] = {   2,   90 },		-- ナイトメア
	[  659 ] = { 640,   60 },		-- アルティメットテラー　全能力ダウン　術者に加算
	[  660 ] = { 116,  180 },		-- ノクトシールド
	[  661 ] = { { 190,  180 }, { 191,  180 } },		-- ドリームシュラウド
	[  662 ] = nil,					-- ネザーブラスト
	[  663 ] = {  20,   60 },		-- カコデモニア
	[  664 ] = nil,					-- ルイナスオーメン
	[  665 ] = nil,					-- ナイトテラー
	[  666 ] = nil,					-- パボルノクターナス
	[  667 ] = nil,					-- ブラインドサイド

	[  668 ] = nil,					-- ディコンストラクション　良性効果のランダム吸収
	[  669 ] = nil,					-- クロノシフト　ランダム吸収した良性効果の味方への付与

	[  670 ] = nil,					-- 斬鉄剣
	[  671 ] = { 283,   30 },		-- 絶対防御
	[  672 ] = nil,					-- フットキック
	[  673 ] = {   5,   60 },		-- 土煙
	[  674 ] = nil,					-- 爪旋風脚
	[  675 ] = {  10,    5 },		-- ヘッドバット
	[  676 ] = {   2,   25 },		-- 夢想花
	[  677 ] = { 138,   60 },		-- 種まき
	[  678 ] = {   3,   30 },		-- リーフダガー
	[  679 ] = { 141,   60 },		-- スクリーム
	[  680 ] = {   4,   60 },		-- 咆哮
	[  681 ] = nil,					-- レイザーファング
	[  682 ] = nil,					-- クローサイクロン
	[  683 ] = {  10,    5 },		-- テイルブロー
	[  684 ] = nil,					-- ファイアボール
	[  685 ] = nil,					-- ブロックヘッド
	[  686 ] = {   6,   60 },		-- ブレインクラッシュ
	[  687 ] = { 148,   60 },		-- 超低周波
	[  688 ] = {  92,   60 },		-- 体液分泌
	[  689 ] = nil,					-- 頭突き
	[  690 ] = {  56,  180 },		-- レイジ
	[  691 ] = nil,					-- シープチャージ
	[  692 ] = {   2,   60 },		-- シープソング
	[  693 ] = { 136,   60 },		-- バブルシャワー
	[  694 ] = { 191,   60 },		-- バブルカーテン
	[  695 ] = nil,					-- ビッグシザー
	[  696 ] = {  93,   60 },		-- シザーガード
	[  697 ] = {  37,  900 },		-- メタルボディ
	[  698 ] = nil,					-- ニードルショット
	[  699 ] = nil,					-- 針？本
	[  700 ] = nil,					-- フロッグキック
	[  701 ] = {   4,  300 },		-- スポア
	[  702 ] = {   3,  300 },		-- マヨイタケ
	[  703 ] = {   4,  300 },		-- シビレタケ
	[  704 ] = {   8,  300 },		-- オドリタケ
	[  705 ] = {   6,  300 },		-- サイレスガス
	[  706 ] = {   5,  300 },		-- ダークスポア
	[  707 ] = nil,					-- パワーアタック
	[  708 ] = { 148,   60 },		-- 高周波フィールド
	[  709 ] = nil,					-- ライノアタック
	[  710 ] = { 554,   60 },		-- ライノガード
	[  711 ] = { 136,   60 },		-- スポイル
	[  712 ] = nil,					-- カースドスフィア
	[  713 ] = {   3,   60 },		-- 毒液
	[  714 ] = { 140,   60 },		-- サンドブラスト
	[  715 ] = {  11,   60 },		-- サンドピット
	[  716 ] = {   3,   60 },		-- ベノムスプレー
	[  717 ] = nil,					-- M.バイト
	[  718 ] = {   2,   90 },		-- サペリフィック
	[  719 ] = {  13,   60 },		-- グロオーサケス
	[  720 ] = {   4,   60 },		-- パルジィパレン
	[  721 ] = nil,					-- ガイストウォール
	[  722 ] = {  10,    5 },		-- ナビングノイズ
	[  723 ] = nil,					-- ニンブルスナップ
	[  724 ] = nil,					-- サイクロテール
	[  725 ] = {   3,   60 },		-- トクシックスピット
	[  726 ] = nil,					-- ダブルクロー
	[  727 ] = nil,					-- グラップル
	[  728 ] = nil,					-- スピニングトップ
	[  729 ] = {  13,   90 },		-- F.ホールド
	[  730 ] = {   6,   60 },		-- カオティックアイ
	[  731 ] = {   4,   60 },		-- ブラスター
	[  732 ] = {  10,    5 },		-- 吸着
	[  733 ] = nil,					-- ドレインキッス
	[  734 ] = {   4,   60 },		-- 雪煙
	[  735 ] = nil,					-- ワイルドカロット
	[  736 ] = {  10,    5 },		-- サドンランジ
	[  737 ] = { 146,   60 },		-- スパイラルスピン
	[  738 ] = { 147,   60 },		-- ノイサムパウダー

	[  740 ] = { 147,   60 },		-- アシッドミスト
	[  741 ] = nil,					-- TP吸収キッス

	[  743 ] = {  10,    5 },		-- サイズテール
	[  744 ] = nil,					-- リッパーファング
	[  745 ] = {  13,   60 },		-- 噛みつきラッシュ
	[  746 ] = {  10,    5 },		-- チャージドホイスカー
	[  747 ] = { { 135,   60 }, { 144,   60 } },		-- ピュルラントウーズ
	[  748 ] = { { 147,   60 }, { 149,   60 } },		-- コローシブウーズ
	[  749 ] = nil,					-- バックヒール
	[  750 ] = {  28,    2 },		-- ジェタチュラ
	[  751 ] = { {   4,   60 }, {   6,   60 } },		-- チョークブレス
	[  752 ] = {  45,  180 },		-- ファンタッド
	[  753 ] = { 149, 3600 },		-- トータスストンプ
	[  754 ] = {  93,   90 },		-- 甲羅強化
	[  755 ] = nil,					-- アクアブレス
	[  756 ] = {  10,    5 },		-- ウィングスラップ
	[  757 ] = nil,					-- ビークランジ
	[  758 ] = {  13,   60 },		-- 威嚇
	[  759 ] = nil,					-- リコイルダイブ
	[  760 ] = { 191,   60 },		-- ウォーターウォール
	[  761 ] = nil,					-- センシラブレード
	[  762 ] = { 130,   45 },		-- テグミナバフェット
	[  763 ] = nil,					-- モルトプルメイジ
	[  764 ] = { { 149,   45 }, { 167,   45 } },		-- スワープフレンジー
	[  765 ] = { 149,   90 },		-- スイープガウジ
	[  766 ] = { {  33,   60 }, { 167,   60 }, { 486,   60 }, { 622,   60 } },		-- ゼラススノート
	[  767 ] = {  16,    5 },		-- ペンタペック
	[  768 ] = {  10,    5 },		-- ティックルテンドリル
	[  769 ] = { {   4,   60 }, {   5,   60 } },		-- スティンクボム
	[  770 ] = {   3,   30 },		-- ネクターデルージュ
	[  771 ] = { {  12,   60 }, { 133,   60 } },		-- ネペンシックプランジ
	[  772 ] = nil,					-- サマーソルト
	[  773 ] = nil,					-- ルビーの贖罪
	[  774 ] = { {  12,  180 }, { 133,  180 } },		-- ファウルウォーター
	[  775 ] = { {  31,   60 }, {   5,   60 }, { 167,   60 } },		-- ペステレントプルーム
	[  776 ] = nil,					-- ペッキングフラリー
	[  777 ] = nil,					-- シックルスラッシュ
	[  778 ] = {   3,   60 },		-- アシッドスプレー
	[  779 ] = {  13,   60 },		-- スパイダーウェブ
	[  780 ] = nil,					-- リーガルガッシュ
	[  781 ] = {  31,   60 },		-- I.サッカー
	[  782 ] = nil,					-- グルームスプレー

	[  786 ] = { 146,   60 },		-- ディスエンバウエル
	[  787 ] = {  10,    5 },		-- E.サルヴォ

	[  960 ] = nil,					-- クラーサクコール
	[  961 ] = nil,					-- ウェルト
	[  962 ] = {  96,  120 },		-- 疾風の刃
	[  963 ] = {   6,   90 },		-- ルナティックボイス
	[  964 ] = nil,					-- ラウンドハウス
	[  965 ] = {  39,  900 },		-- シヌーク
	[  966 ] = { 422,  180 },		-- 修羅のエレジー
	[  967 ] = nil,					-- ソニックバフェット
	[  968 ] = { 167,   30 },		-- トルネドⅡ　氷属性への耐性ダウン
	[  969 ] = { 152,   60 },		-- 風の守り
	[  970 ] = nil,					-- ヒステリックアサルト
}

return Abilities
