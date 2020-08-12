-- アドオン情報設定
_addon.name		= 'TargetBar'
_addon.author	= 'dsw'
_addon.version	= '2020-06-08'
_addon.language	= 'japanese'
_addon.command  = 'targetbar'
_addon.commands = { 'tb' }

-----------------------------------------------------------------------

-- パッケージ追加
local Config = require( 'config' )
local Packets = require( 'packets' )
local Resources = require( 'resources' )

-- パケット種別
local LOGIN_ZONE_PACKET 	= 0x0A
local LOGOUT_ZONE_PACKET	= 0x0B
local SKILL_CHARGE_FINISHED	= 0x28
local EFFECT_FINISHED		= 0x29

local WIDE_SCAN 			= 0xF4

local CUTSCENE_STATUS_ID	= 4

-----------------------------------------------------------------------

-- 設定情報の読み込み
local Defaults = require( 'settings' )
local Settings = Config.load( Defaults )

local Spells = require( 'spells' )

-----------------------------------------------------------------------

-- ＵＩ定義
local UI = require( 'ui' )

-----------------------------------------------------------------------

local addon =
{
	-- フィールド変数(protected想定/実際はpublic)
	isLogin		= false,
	isZoning	= false,		-- ゾーン内にいるかどうか
	isCutscene	= false,		-- カットシーン中かどうか
	isDisplay	= false,

	-----------------------------------------------------------

	visible = false,

	-- ターゲットのインスタンスは参照が使い回されてしまうため表示状態の判定には使えない
	mtVisible = false,
	mtVisible = false,
	
	-- 現在のターゲット
	mTarget = nil,
	sTarget = nil,

	-- レベルを保持するリスト
	levelTable = nil,
	levelTableWorks = nil,

	-- バフ効果の管理対象ゾーンチェンジで必ずクリアすること
	effectiveTargets = nil,

	-- スキャン間隔(デフォルトは30秒)
	lastScanningTime = 0,

	isPlayerPosition = false,
	playerPosition = { X = 0, Y = 0 },

	scanningUpdateTime = 0,
	scanningActiveTime = 0,

	-- アイテム情報を全て取得完了(ゾーンチェンジが完全に完了した判定に使用する)
	finishInventoy = false,

	-------------------------------------------------------------------

	-- スクリプトのロード完了後に行う処理(通常起動の場合はログイン前であるためセーブは使えない)
	Prepare = function( this )
		this.isLogin    = false
		this.isZoning   = false
		this.isCutscene = false
		this.isDisplay  = false
		this.isAwake    = false

		UI:Load( Settings )
	end,

	Destroy = function( this )
		UI:Hide()

		this.effectiveTargets = nil
		this.levelTableWorks = nil
		this.levelTable = nil

		this.isAwake    = false
		this.isDisplay  = false
		this.isCutscene = false
		this.isZoning   = false
		this.isLogin    = false
	end,
	-------------------------------------------------------------------

	-- ログイン(キャラクター選択後のゲーム開始)時に実行する処理
	Startup = function( this )
		if( this.isLogin == true ) then return end
		if( UI:CheckResolution( Settings ) == false ) then
			-- 位置がリセットされた
			Config.save( Settings )
		end

		this.levelTable = {}
		this.levelTableWorks = {}
		this.effectiveTargets = {}

		this.isLogin = true
		this:CheckZoning()

		this:Display()
	end,

	-- ゾーン内にいるか確認する
	CheckZoning = function( this )
		local info = windower.ffxi.get_info()
		if( ( info.zone ~= nil and info.zone >= 0 ) or info.mog_house == true ) then
			this.isZoning = true
		end
		return this.isZoning
	end,

	-- 表示可能状態になっているか確認する
	Display = function( this )
		if( this.isDisplay == true ) then return true end
		if( this.isLogin == true and this.isZoning == true and this.isCutscene == false and UI:IsLoaded() == true ) then
			-- UIの準備が整っていたら最初の表示を行う
			this.isDisplay = true
			return true
		end
		return false
	end,
	-----------------------------------------------------------

	-- プレイヤーがエネミーのターゲットになっているか判定する
	CheckClaim = function( this, claimId, playerId )
		if claimId == playerId then
			return true
		else
			for i = 1, 5, 1 do
				member = windower.ffxi.get_mob_by_target( 'p' .. i )
				if member == nil then
					-- do nothing
				elseif claimId == member.id then
					return true
				end
			end
		end
		return false
	end,

	-- ターゲットの色種別を取得する
	GetTargetColor = function( this, target )
		local color
		local player = windower.ffxi.get_mob_by_target( 'me' )

--		print( "tt = " .. target.spawn_type )

		-- 色の設定
		if( target.spawn_type == 1 or target.spawn_type == 13 or target.spawn_type == 14 ) then
			--  1 = 他のプレイヤー
			-- 13 = 自分
			-- 14 = フェイス
			if( target.in_party == false or ( target.in_party == true and target.id == player.id ) ) then
				-- 自分・その他(白)
				color = 1
			else
				-- パーティメンバー(水)
				color = 2
			end
		elseif( target.spawn_type == 16 ) then
			--モンスター
			if( target.claim_id == 0 ) then
				-- 戦闘中ではない(黄)
				color = 3
			elseif( this:CheckClaim( target.claim_id, player.id ) == true ) then
				-- プレイヤーと戦闘中(赤)
				color = 4
			else
				-- 他のプレイヤーと戦闘中(紫)
				color = 5
			end
		elseif( target.spawn_type ==  2 ) then
			--ＮＰＣ(緑)
			color = 6
		elseif( target.spawn_type == 34 ) then
			-- オブジェクト(緑)
			color = 7
		else
			-- 不明
			color = 7
		end
		return color
	end,

	-- ゲージを強制消去する
	Hide = function( this )
		this.visible = false

		if( this.mtVisible == true ) then
			UI:HideMT()	-- メインターゲットゲージを消す
			this.mtVisible  = false
		end

		if( this.stVisible == true ) then
			UI:HideST()	-- サブターゲットゲージを消す
			this.stVisible  = false
		end

		this.mTarget = nil
		this.sTarget = nil
	end,


	-- 広域スキャンを実行する
	Scan = function( this )
		local info = windower.ffxi.get_info()
		if( this.isZoning == false or ( info ~= nil and info.mog_house == true ) or this.isCutscene == true or this.scanningUpdateTime ~= 0 ) then
			--条件的にスキャン不可
			return
		end

		-- 現在位置を取得する
		local isPlayerPosition = false
		local playerPosition = { X = 0, Y = 0 }

		local p = windower.ffxi.get_player()
		if( p ~= nil ) then
			local me = windower.ffxi.get_mob_by_id( p.id )
			if( me ~= nil ) then
				-- 現在位置が取得できた
				isPlayerPosition = true
				playerPosition.X = string.format( "%6.2f", me.x )
				playerPosition.Y = string.format( "%6.2f", me.y )
			end
		end	

		-- 現在位置が取得できないうちはまだスキャンを実行しない
		if( isPlayerPosition == false ) then
			return
		end

		-------------------------------

		-- スキャンを行う必要があるか判定する
		local useScanning = false
		if( this.lastScanningTime == 0 ) then

			if( this.isPlayerPosition == false ) then
				-- 現在位置が取れていないので設定して終了する
				this.isPlayerPosition = true
				this.playerPosition.X = playerPosition.X
				this.playerPosition.Y = playerPosition.Y
				return
			end

			-- 現在位置と前回のスキャン時の位置を比較して移動を行っていないならスキャンはしない
			local dx = playerPosition.X - this.playerPosition.X
			local dy = playerPosition.Y - this.playerPosition.Y
			local distance = math.sqrt( dx * dx + dy * dy )
			if( distance == 0 and this.finishInventoy == false ) then
				return 
			end

			useScanning = true	-- ゾーンチェンジ後などなので即時実行する
		else
			-- 一定時間経過か距離を移動していれば実行する
			if( ( os.clock() - this.lastScanningTime ) >= 60 ) then
				-- １分経過で再スキャンを実行する
				useScanning = true
			else
				if( this.isPlayerPosition == false ) then
					-- 現在位置が取れていないので設定して終了する
					this.isPlayerPosition = true
					this.playerPosition.X = playerPosition.X
					this.playerPosition.Y = playerPosition.Y
					return
				else
					-- 現在位置と前回のスキャン時の位置を比較して一定距離が離れていたらスキャンを実行する
					local dx = playerPosition.X - this.playerPosition.X
					local dy = playerPosition.Y - this.playerPosition.Y
					local distance = math.sqrt( dx * dx + dy * dy )
					if( distance >= 150 ) then
						-- 150m 以上離れたら再スキャンを実行する
						useScanning = true
					end
				end
			end
		end

		if( useScanning == false ) then
			-- スキャン不要
			return
		end

		-------------------------------

		local time = os.clock()

		-- 現在の時間を追加する
		this.lastScanningTime = time

		-- 現在位置を更新する
		this.isPlayerPosition = true
		this.playerPosition.X = playerPosition.X
		this.playerPosition.Y = playerPosition.Y

		-- スキャンを実行する
		local packet = Packets.new( 'outgoing', WIDE_SCAN,
		{
			[ 'Flags' ]		= 1,
			[ '_unknown1' ]	= 0,
			[ '_unknown2' ]	= 0,
		} )
		Packets.inject( packet )

		-- スキャン実行中表示のための情報を設定する
		this.scanningUpdateTime = time
		this.scanningActiveTime = time

		UI:ShowScanning( 0 )

--		print( "Scanning..." )
	end,

	-------------------------------------------------------------------

	-- 全てのバフ効果管理対象を追加する
	AddEffectToTargets = function( this, data )

		local playerId = windower.ffxi.get_player().id

		local actor = windower.packets.parse_action( data )

		-- オートアタックと魔法詠唱開始は除外
--		if( T{  1,  3, 4,  6,  7,  8, 11 }:contains( actor.category ) == false ) then
		if( T{  1,  8 }:contains( actor.category ) == false ) then

			-- ここは単にモニター用


			-- 無効
			--  1.オートアタック
			--  7.ウェポンスキル(エネミースキル)準備
			--  8.魔法準備
			--  9.アイテム準備

			-- 有効
			--  3.ウェポンスキル(エネミースキル)発動
			--  4.魔法発動
			--  5.アイテム発動
			--  6.ジョブアビリティ発動
			-- 11.ウェポンスキル(エネミースキル)発動

--			print( "actor.category " .. actor.category )

			if( #actor.targets >= 1 ) then
				local sid = actor.param
				if( sid == nil ) then sid = 'nil' end

				for _, target in pairs( actor.targets ) do

					local mid = target.actions[ 1 ].message
					if( mid == nil ) then mid = 'nil' end
					local eid = target.actions[ 1 ].param
					if( eid == nil ) then eid = 'nil' end

					if( actor.category == 11 and mid == 1 ) then
						-- シャントットⅡ通常攻撃
					else
--						print( 'tc = ' .. #actor.targets .. ' sid = ' .. sid .. ' mid = ' .. mid .. ' eid = ' .. eid .. ' st = ' .. st .. ' tid = ' .. target.id .. ' pid = ' .. playerId )
					end
				end
			end
		end

		if( actor.category == 1 ) then
			-- 通常攻撃

			-- message
			--  1 = ヒット effectId はダメージ値
			-- 15 = ミス   effectId は 0
			-- 31 = 身代わりとなって消えた effectId は 1

			-- 攻撃を受けたらブリンクは消去
			if( #actor.targets >= 1 ) then
				for _, target in pairs( actor.targets ) do
					local message = target.actions[ 1 ].message
					if( message == 1 ) then
						-- 通常攻撃がヒットしたのでt回数制限のある絶対回避エフェクトを消す
						if( this.effectiveTargets[ target.id ] ~= nil ) then
							-- 既にバフ効果管理対象として登録されているターゲット
							this.effectiveTargets[ target.id ][  36 ] = nil	-- ブリンク
							this.effectiveTargets[ target.id ][  66 ] = nil	-- 分身1
							this.effectiveTargets[ target.id ][ 444 ] = nil	-- 分身2
							this.effectiveTargets[ target.id ][ 445 ] = nil	-- 分身3
							this.effectiveTargets[ target.id ][ 446 ] = nil	-- 分身4
						end
					end
				end
			end
		end


		if( actor.category == 4 ) then
			-- 魔法発動

			-- スキル識別子をわかりやすく変数に格納する
			local spellId = actor.param

			if( spellId == nil or Spells[ spellId ] == nil ) then
				return	-- 無効な魔法
			end

			local fromPlayer = ( actor.actor_id == playerId )

			-- 行動者にも効果があるか確認する
			if( fromPlayer == false ) then
				if( type( Spells[ spellId ][ 1 ] ) == 'table' ) then 
					if( type( Spells[ spellId ][ 1 ][ 1 ] ) == 'table' ) then
						-- 効果は対象と行動にN種類
						for i = 1, #Spells[ spellId ][ 2 ] do
							this:AddOneSpellEffectToTarget( spellId, actor.actor_id, false, Spells[ spellId ][ 2 ][ i ][ 1 ], Spells[ spellIdd ][ 2 ][ i ][ 2 ] )
						end
					end
				end
			end

			if( #actor.targets >= 1 ) then
				-- ターゲットが１体以上存在する
				for _, target in pairs( actor.targets ) do
					if( target.id ~= playerId ) then	-- プレイヤーは別途より正確に処理するので処理は必要無し
						-- 処理するのはプレイヤー以外
						local message = target.actions[ 1 ].message

						-----------------------
						-- デバッグ用
						local effectId = target.actions[ 1 ].param

						local en = "???"
						if( Resources.buffs[ effectId ] ~= nil ) then
							en = Resources.buffs[ effectId ].name
						end
						local sn = "???"
						if( Resources.spells[ spellId ] ~= nil ) then
							sn = Resources.spells[ spellId ].name
						end

						PrintFF11( "e " .. en .. '(' .. effectId .. ') ' .. " s " .. sn .. '(' .. spellId .. ') m ' .. message .. ' t ' .. target.id .. ' fp ' .. tostring( fromPlayer ) )
						-----------------------

						
						if( T{   2, 230, 252, 266 }:contains( message ) == true ) then
							-- □□□は、○○○の効果。(230は自身・266は他人)
							this:AddSpellEffectToTarget( spellId, target.id, fromPlayer )							
						elseif( T{ 236, 237, 268, 271 }:contains( message ) == true ) then
							-- □□□は、○○○の状態になった。
							this:AddSpellEffectToTarget( spellId, target.id, fromPlayer )							
						elseif( T{ 329, 330, 331, 332, 333, 334, 335 }:contains( message ) == true ) then
							-- □□□の、○○○を吸収した。(STR～CHR)　　アブゾタック　アブゾアキュル　アブゾアトリ
							this:AddSpellEffectToTarget( spellId, target.id, fromPlayer )							
						end
					else

						-- プレイヤーを対象としている(処理は不要)

						local message = target.actions[ 1 ].message
						local effectId = target.actions[ 1 ].param

--						print( "effectId = " .. effectId .. " skillId = " .. skillId .. " message = " .. message )
					end
				end
			end
		end

		if( actor.actor_id ~= playerId ) then
			-------------  全ての行動において、そのactor(行動した側)の弱体を消す処理
			--  弱体が入ったかどうかログに出ない場合（物理青魔やWS）のための処理
			if( this.effectiveTargets[ actor.actor_id ] ~= nil ) then
				-- 既にバフ効果管理対象として登録されているターゲット
				this.effectiveTargets[ actor.actor_id ][ 10 ] = nil	-- スタン効果クリア
				this.effectiveTargets[ actor.actor_id ][  2 ] = nil	-- 睡眠効果クリア
			end
		end
	end,

	-- 魔法による効果を追加する
	AddSpellEffectToTarget = function( this, spellId, targetId, fromPlayer )

		if( this.effectiveTargets[ targetId ] == nil ) then
			-- 対象のデバフ情報初期化
--			PrintFF11( "Add Target " .. targetId .. " effectId " .. fixedEffectId .. " " .. Resources.buffs[ effectId ].name .. " skillId " .. skillId .. " " .. Resources.spells[ skillId ].name .. " " .. Resources.spells[ skillId ].duration )
			this.effectiveTargets[ targetId ] = {}
		end

		if( T{  23,  24,  25,  26,  27,  33,  34,  35,  36,  37, 230, 231, 232, 233, 234 }:contains( spellId ) == true ) then
			-- ディア系・バイオ系
			local priorities = {
				[  23 ] =  1, -- ディア
				[  24 ] =  3, -- ディアⅡ
				[  25 ] =  5, -- ディアⅢ
				[  26 ] =  7, -- ディアⅣ
				[  27 ] =  9, -- ディアⅤ

				[  33 ] =  1, -- ディアガ
				[  34 ] =  3, -- ディアガⅡ
				[  35 ] =  5, -- ディアガⅢ
				[  36 ] =  7, -- ディアガⅣ
				[  37 ] =  9, -- ディアガⅤ

				[ 230 ] =  2, -- バイオ
				[ 231 ] =  4, -- バイオⅡ
				[ 232 ] =  6, -- バイオⅢ
				[ 233 ] =  8, -- バイオⅣ
				[ 234 ] = 10, -- バイオⅤ
			}

			-- ディア系とバイオ系(上書きに失敗したかはわからないため独自に処理する必要がある)

			-- 優先順位を取得する
			local activePriority = 0
			local activeEffect = this.effectiveTargets[ targetId ][ 134 ] or this.effectiveTargets[ targetId ][ 135 ]
			if( activeEffect ~= nil ) then
				activePriority = priorities[ activeEffect.SpellId ]
			end
		
			if( priorities[ spellId ] >  activePriority ) then
				-- 新しくかけるスキルの方が優先順位が高い場合は新しいスキルで情報を上書きする
				if( T{  23,  24,  25,  26,  27,  33,  34,  35,  36,  37 }:contains( spellId ) == true ) then
					-- ディア系
					this.effectiveTargets[ targetId ][ 134 ] = { EndTime = os.clock() + Spells[ spellId ][ 2 ], SpellId = spellId, FromPlayer = fromplayer }
					this.effectiveTargets[ targetId ][ 135 ] = nil
				elseif( T{ 230, 231, 232, 233, 234 }:contains( spellId ) == true ) then
					-- バイオ系
					this.effectiveTargets[ targetId ][ 134 ] = nil
					this.effectiveTargets[ targetId ][ 135 ] = { EndTime = os.clock() + Spells[ spellId ][ 2 ], SpellId = spellId, FromPlayer = fromPlayer }
				end
			end
	
		elseif( T{ 278, 279, 280, 281, 282, 283, 284, 285, 885, 886, 887, 888, 889, 890, 891, 892 }:contains( spellId ) == true ) then
			-- 計略系
			this.effectiveTargets[ targetId ][ 186 ] = { EndTime = os.clock() + Spells[ spellId ][ 2 ], SpellId = spellId, fromPlayer = fromPlayer }
		else
			-- その他
			if( Spells[ spellId ] ~= nil ) then
				if( type( Spells[ spellId ][ 1 ] ) ~= 'table' ) then 
					-- 効果は対象に1種類
					this:AddOneSpellEffectToTarget( spellId, targetId, fromPlayer, Spells[ spellId ][ 1 ], Spells[ spellId ][ 2 ] )
				else
					if( type( Spells[ spellId ][ 1 ][ 1 ] ) ~= 'table' ) then
						-- 効果は対象にN種類
						for i = 1, #Spells[ spellId ] do
							this:AddOneSpellEffectToTarget( spellId, targetId, fromPlayer, Spells[ spellId ][ i ][ 1 ], Spells[ spellId ][ i ][ 2 ] )
						end
					else
						-- 効果は対象と行動にN種類
						for i = 1, #Spells[ spellId ][ 1 ] do
							this:AddOneSpellEffectToTarget( spellId, targetId, fromPlayer, Spells[ spellId ][ 1 ][ i ][ 1 ], Spells[ spellId ][ 1 ][ i ][ 2 ] )
						end
					end
				end
			end
		end
	end,

	-- 1種類の効果のみを設定する
	AddOneSpellEffectToTarget = function( this, spellId, targetId, fromPlayer, effectId, duration )

		this.effectiveTargets[ targetId ][ effectId ] = { EndTime = os.clock() + duration, SpellId = spellId, FromPlayer = fromPlayer }

		-------------------
		-- 例外処理

		-- いずれか１つのみ有効な効果の処理

		-- スロウ・ヘイスト・スナップはいずれか１つだけ有効
		local speed_effectIds = T{  13,  33, 565, 580, 581 }
		if( speed_effectIds:contains( effectId ) == true ) then
			for i = 1, #speed_effectIds do
				if( speed_effectIds[ i ] ~= effectId ) then
					this.effectiveTargets[ targetId ][ speed_effectIds[ i ] ] = nil
				end
			end
		end

		-- バ系はいずれか１つだけ有効
		local ba_effectIds = T{ 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 286 }
		if( ba_effectIds:contains( effectId ) == true ) then
			for i = 1, #ba_effectIds do
				if( ba_effectIds[ i ] ~= effectId ) then
					this.effectiveTargets[ targetId ][ ba_effectIds[ i ] ] = nil
				end
			end
		end

		-- エン系はいずれか１つだけ有効
		local en_effectIds = T{  94,  95,  96,  97,  98,  99, 274, 277, 278, 279, 280, 281, 282, 288, 487, 488 }
		if( en_effectIds:contains( effectId ) == true ) then
			for i = 1, #en_effectIds do
				if( en_effectIds[ i ] ~= effectId ) then
					this.effectiveTargets[ targetId ][ en_effectIds[ i ] ] = nil
				end
			end
		end

		-- スパイク系はいずれか１つだけ有効
		local spike_effectIds = T{   34,  35,  38, 173, 573 }
		if( spike_effectIds:contains( effectId ) == true ) then
			for i = 1, #spike_effectIds do
				if( spike_effectIds[ i ] ~= effectId ) then
					this.effectiveTargets[ targetId ][ spike_effectIds[ i ] ] = nil
				end
			end
		end
	end,



	-- 対象もしくは効果を除去する
	RemoveEffectFromTarget = function( this, data )
		local targetId  = data:unpack( 'I', 0x09 )
		local effectId  = data:unpack( 'I', 0x0D )
		local message   = data:unpack( 'H', 0x19 ) % 32768

		local playerId = windower.ffxi.get_player().id
		if( targetId == playerId ) then
			-- プレイヤーの場合は別途処理するので無視する
			return
		end

		if( effectId ~= 0 ) then
			print( "release effectId " .. effectId .. " message " .. message .. " targetId " .. targetId )
		end

		if S{   6,  20, 113, 406, 605, 646 }[ message ] then
			-- 対象消失
--			print( "remove target 1 : " .. targetId )
			this.effectiveTargets[ targetId ] = nil
		elseif S{ 204, 206 }[ message ] then
			if this.effectiveTargets[ targetId ] then
				-- 効果消失
				print( "release OK  target " .. targetId .. " effectId " .. effectId )
				this.effectiveTargets[ targetId ][ effectId ] = nil
			end
		end
	end,

	-- 表示する効果情報を取得する
	GetEffects = function( this, targetId, playerId, limit )

		local effects = nil
		if( this.effectiveTargets[ targetId ] ~= nil ) then

			local category = 1	-- 最初は強化系

			effects = {}
			for i = 1, #Settings.EffectEnabled, 1 do
				local effectId = Settings.EffectEnabled[ i ]
				if( effectId >= 0 ) then
					if( this.effectiveTargets[ targetId ][ effectId ] ~= nil ) then

						if( targetId ~= playerId and this.effectiveTargets[ targetId ][ effectId ].FromPlayer == false ) then
							-- 対象がプレイヤーではなく且つその効果がプレイヤー起因ではない場合
							-- 効果の終了時間に達していたら効果を消去する
							if( this.effectiveTargets[ targetId ][ effectId ].EndTime ~= 0 and ( this.effectiveTargets[ targetId ][ effectId ].EndTime - os.clock() ) <= 0 ) then
								this.effectiveTargets[ targetId ][ effectId ]= nil
							end
						end
						
						-- 終了時間で効果が消えていない場合に改めて表示対象とする
						if( this.effectiveTargets[ targetId ][ effectId ] ~= nil ) then
							local c = #effects + 1
							-- 効果を登録
							effects[ c ] = {}
							effects[ c ].EffectId = effectId
							effects[ c ].EndTime  = this.effectiveTargets[ targetId ][ effectId ].EndTime
							effects[ c ].Category = category	-- 1=強化系・2=弱化系
							limit = limit - 1
						end
					end
				else
					-- カテゴリ切り替え
					category = 2	-- 弱化系
				end

				if( limit == 0 ) then break end
			end
			if( #effects == 0 ) then effects = nil end
		end

		return effects
	end,

	-- レベルを取得する(エネミーのみ有効)
	GetLevel = function( this, targetIndex )
		local level = '?'
		if( this.levelTable[ targetIndex ] ~=  nil ) then
			level = this.levelTable[ targetIndex ].Level
			if( lavel == 0 ) then
				level = '?'
				this.lastScanningTime = 0	-- レベルが不明なエネミーを発見したのでスキャンを試みる
			end
		else
			this.lastScanningTime = 0	-- レベルが不明なエネミーを発見したのでスキャンを試みる
		end
		return level
	end,
}
-----------------------------------------------------------------------

-- イベント登録とイベント実行
addon.RegisterEvents = function( this )

	-- アドオンがロードされた際のイベントを登録する(グローバル処理が実行された後に呼びされる)
	windower.register_event( 'load', function()
		this:Prepare()
		if( windower.ffxi.get_info().logged_in == true ) then
			-- ゲームが開始状態である場合のみ準備処理を呼ぶ(この準備準備は基本的にコマンドでロードされた場合のみ呼ばれる事になる)
			this:Startup()	-- スクリプトのリロードのケース
		end	
	end)

	-- アドオンがアンロードされた際のイベントを登録する(アドオンを明示的にアンロードした時にしか呼ばれない)
	windower.register_event( 'unload', function()
	end)

	-- ログインした際のイベントを登録する(キャラクターを選択してゲームが開始した後に呼ばれる)
	windower.register_event( 'login', function()
		-- キャラクター選択以前に処理する事は基本的に無いのでこのタイミングで準備処理を実行する事が正しい
		-- 付け加えるならばこのイベントの直前に再度設定情報が読み込まれるようなのでこれ以前のオンメモリの設定情報の変更は無意味である
		this:Startup()
	end)

	-- ログアウトした際のイベントを登録する(タイトル画面に戻る)スクリプト自体はまだ生きている
	windower.register_event( 'logout', function()
		this:Destroy()
	end)

	-- パケット受信時のイベントを登録する
	windower.register_event( 'incoming chunk', function( id, original, modified, isInjected, isBlocked )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		-----------------------------------

		if( id == LOGIN_ZONE_PACKET ) then
			-- ゾーンイン
			this.isZoning = true	-- ゾーン内
			this.levelTable = {}
			this.levelTableWorks = {}
			this.effectiveTargets = {}
			this.lastScanningTime = 0
			this.isPlayerPosition = false
			this.finishInventoy = false
		elseif( id == 0x1D ) then
			-- アイテム情報を全て取得した(ゾーンチェンジの完全完了判定)
			this.finishInventoy = true
		elseif( id == LOGOUT_ZONE_PACKET ) then
			-- ゾーンアウト
			this:Hide()
			this.effectiveTargets = nil
			this.levelTableWorks = nil
			this.levelTable = nil
			this.isZoning = false	-- ゾーン外
		elseif( id == WIDE_SCAN ) then
			-- ワイドスキャン
			local packet = Packets.parse( 'incoming', original )
--			print( "I " .. packet.Index .. ' L ' .. packet.Level )
			this.levelTableWorks[ packet.Index ] = { Level = packet.Level }
			this.scanningUpdateTime = os.clock()	-- 表示継続
		elseif( id == SKILL_CHARGE_FINISHED ) then
			-- チャージが終了しスキルが発動した
			this:AddEffectToTargets( original )
		elseif( id == EFFECT_FINISHED ) then
			-- 効果が終了した
			this:RemoveEffectFromTarget( original )
		elseif( id == 0x63 ) then
			-- プレイヤーの効果情報を更新する
			if( original:byte( 5 ) == 9 ) then
--				print( "Player Buffers" )
				local p = windower.ffxi.get_player()
				if( p ~= nil ) then
					local playerId = p.id
--					print( "PlayerId " .. targetId )

					-- 完全にクリアする
					this.effectiveTargets[ playerId ] = {}

					-- 最大３２個の効果
					for i = 1, 32 do

						-- 効果識別子
						local effectId = original:unpack( 'H', i * 2 + 7 )

						if  effectId ~= 0 and effectId ~= 255 then -- 255 is used for "no buff"
							if( Settings.EffectEnabled:contains( effectId ) == true ) then

								-- 終了時間を取得する
								local endTime
								if( effectId ~= 474 ) then
									endTime = original:unpack( 'I', i * 4 + 0x45 ) / 60 + 501079520 + 1009810800 + 71582788
								else
									-- 一時技能
									endTime = -1
								end
--								print( "eid:" .. effectId .. ' t:' .. endTime )
								endTime = ( endTime - os.time() ) + os.clock()

								-- 有効な効果
								this.effectiveTargets[ playerId ][ effectId ] = { SkillId = 0, EndTime = endTime }	-- 原因となった技能は不明
							end
						end
					end
				end
			end
		elseif( id == 0x76 ) then
			print( "Member Buffers" )
			for  k = 0, 4 do
				local memberId = original:unpack( 'I', k * 48 + 5 )
				if memberId ~= 0 then
					this.effectiveTargets[ memberId ] = {}

					for i = 1, 32 do
						local effectId = original:byte( k * 48 + 5 + 16 + i - 1 ) + 256 * ( math.floor( data:byte( k * 48 + 5 + 8+ math.floor( ( i - 1 ) / 4 ) ) / 4 ^ ( ( i - 1 ) % 4 )  ) % 4 )
						if( effectId ~= 0 ) then
							print( "MemberId " .. memberId .. " EffectId " .. effectId )
							-- パーティメンバーの場合は終了時間がわからない
							this.effectiveTargets[ memberId ][ effectId ] = { SkillId = 0, EndTime = 0 }	-- 原因となった技能は不明・終了時間も不明
						end
					end
				end
			end			
		end
	end)

	-- 状況変化の際に呼び出されるイベントを登録する(カットシーン対応)
	windower.register_event( 'status change', function( statusId )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		-----------------------------------
		-- カットシーンかどうかで表示を切り替える
		if( statusId == CUTSCENE_STATUS_ID ) then
			-- カットシーンに入った
			this:Hide()
			this.isCutscene = true
		else
			-- カットシーンから出た
			this.isCutscene = false
		end
	end)

	-- ターゲットが変更された際に呼びたされるイベントを登録する
	windower.register_event( 'target change', function( index )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		-----------------------------------
		if( index == 0 ) then
			-- 何もターゲットしていない
			this:Hide()
		else
			-- 何らかをターゲットした
			this.visible = true
		end
	end)

	-- ゾーンアウトした際に呼び出されるイベントを登録する
--	windower.register_event( 'zone change', function()
--		-- バフ効果管理情報をクリアする
--		this.effectiveTargets = {}
--	end)

	-----------------------------------------------------------------------

	-- 画面描画が行われる前に呼び出されるイベントを登録する
	windower.register_event( 'prerender',  function( ... )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		-----------------------------------

		local mtVisible = false
		local stVisible = false

		local mTarget = nil
		local sTarget = nil

		local level
		local color
		local isSameTarget
		local effects

		local info = windower.ffxi.get_info()
		if this.visible == true and ( this.isZoning == true or info.mog_house == true ) and this.isCutscene == false then

			-- 表示可能な状態

			-- 注意:
			-- 　保持している前フレームのターゲットインスタンスは、
			-- 　表示と非表示の状態変化の判定には使えない。
			-- 　ターゲットインスタンスが無効になった瞬間に、
			-- 　保持している前フレームのターゲットインスタンスも nil になる。
			-- 　よって、表紙と非表示の状態変化の判定には、
			-- 　別途 bool 型の変数を用意する必要がある。

--			local player = windower.ffxi.get_mob_by_target( 'me' )
			local playerId = windower.ffxi.get_player().id


			mTarget = windower.ffxi.get_mob_by_target( 't' )
			sTarget = windower.ffxi.get_mob_by_target( 'st' )

			-- ターゲットが消失してサブターゲットが存在している場合はサブターゲットをターゲットとする
			if( sTarget ~= nil and mTarget == nil ) then
				mTarget = sTarget
				sTarget = nil
			end
			
			if( mTarget ~= nil and sTarget ~= nil and mTarget.id == sTarget.id ) then
				-- メインターゲットとサブターゲットが同じならサブターゲットの表示を消す
				sTarget = nil
			end

			if( mTarget ~= nil ) then
				-- 色の設定
				color = this:GetTargetColor( mTarget )

				-- ターゲットの変更判定
				isSameTarget = ( this.mTarget ~= nil and this.mTarget.id == mTarget.id )

				-- ターゲットにバフ効果情報が存在する場合はそれも渡す
				effects = this:GetEffects( mTarget.id, playerId, 12 )

				-- エネミーのレベルを取得する
				level = nil
				if( color >= 3 and color <= 5 ) then
					-- レベルを表示するのはエネミーのみ
					level = this:GetLevel( mTarget.index )
				end

				-- メインターゲットゲージの表示を設定する
				UI:ShowMT( mTarget.name, level, mTarget.hpp, color, isSameTarget, effects )

				mtVisible = true

				-- バフ効果情報からターゲットを削除
				if( mTarget.hpp == 0 and this.effectiveTargets[ mTarget.id ] ~= nil ) then
					this.effectiveTargets[ mTarget.id ] = nil
				end

				---------------------------

				-- サブターゲット
				if( sTarget ~= nil ) then
					-- 色の設定
					color = this:GetTargetColor( sTarget )

					-- 前フレームと同じ対象かどうか
					isSameTarget = ( this.sTarget ~= nil and this.sTarget.id == sTarget.id )

					-- ターゲットにバフ効果情報が存在する場合はそれも渡す
					effects = this:GetEffects( sTarget.id, playerId, 12 )

					-- エネミーのレベルを取得する
					level = nil
					if( color >= 3 and color <= 5 ) then
						-- レベルを表示するのはエネミーのみ
						level = this:GetLevel( sTarget.index )
					end
	
					-- サブターゲットゲージの表示を設定する
					UI:ShowST( sTarget.name, level, sTarget.hpp, color, isSameTarget, effects )

					stVisible = true

					-- バフ効果情報からターゲットを削除
					if( sTarget.hpp == 0 and this.effectiveTargets[ sTarget.id ] ~= nil ) then
						this.effectiveTargets[ sTarget.id ] = nil
					end
				end
			end
		end

		if( mtVisible == false and this.mtVisible == true ) then
			UI:HideMT()	-- メインターゲットゲージを消す
		end
		this.mTarget   = mTarget
		this.mtVisible = mtVisible

		if( stVisible == false and this.stVisible == true ) then
			UI:HideST()	-- サブターゲットゲージを消す
		end
		this.sTarget   = sTarget
		this.stVisible = stVisible

		-------------------------------------------------------
		-- スキャンが必要であれば実行する
		this:Scan()

		-- スキャン中の場合はマークを表示する
		if( this.scanningUpdateTime >  0 ) then
			local time = os.clock()
			if( ( time - this.scanningUpdateTime ) <  1 ) then
				UI:ShowScanning( time - this.scanningActiveTime )
			else
				-- スキャン終了
				UI:HideScanning()

				this.levelTable = this.levelTableWorks ;
				this.levelTableWorks = {}

				this.scanningUpdateTime = 0
				this.scanningActiveTime = 0
			end
		end
	end)

	-- コマンド実行時のイベントを登録する
	windower.register_event( "addon command", function( command, arg1 )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		-----------------------------------

		if( command == 'help' or command == 'h' ) then
			local t = {}

			t[ #t + 1 ] = _addon.name .. " " .. "Version " .. _addon.version
			t[ #t + 1 ] = "  <コマンド> 省略[" .. _addon.commands[ 1 ] .. "]" 
			t[ #t + 1 ] = "     " .. _addon.command .. " r :位置の初期化"
			t[ #t + 1 ] = "     " .. _addon.command .. " l :位置の変更禁止"
			t[ #t + 1 ] = "     " .. _addon.command .. " u :位置の変更許可"
			t[ #t + 1 ] = "　"
			
			for tk, tv in pairs( t ) do
				PrintFF11( tv )
			end

		elseif command == 'r' then
			UI:ResetPosition()
			UI:ApplyPosition()
			Save()
			PrintFF11( "位置を初期化しました。" )
		elseif command == 'l' then
			UI:SetDraggable( false )
			Save()
			PrintFF11( "位置の変更を禁止しました。" )
		elseif command == 'u' then
			UI:SetDraggable( true )
			Save()
			PrintFF11( "位置の変更を許可しました。" )
		elseif command == 'c' then

			local mobIds = nil
			local mobs = windower.ffxi.get_mob_array()
			local exist = false
			if( mobs ~= nil ) then
				mobIds = {}
				for _, mob in pairs( mobs ) do
					mobIds[ #mobIds + 1 ] = mob.id

					print( "id[" .. mob.id .."]" .. mob.index )
					if( arg1 ~= nil and tostring( mob.id ) == tostring( arg1 ) ) then
						print( "hit" )
						exist = true
					end
				end

				print( "mob " .. #mobIds .. " exist " .. tostring( exist ) )
			end
		elseif command == 's' then
			this:Scan()
		end
	end)

	-- マウス操作時のイベントを登録する
	windower.register_event( "mouse", function( type, x, y, delta, blocked )
		if( this:Display() == false ) then
			return	-- 準備が整っていない
		end
		-----------------------------------

		if( UI:ProcessDragging( type ) == true ) then
			Save()	-- 位置に変更があったので保存する
		end
	end)
end

-----------------------------------------------------------------------

addon:RegisterEvents()		-- 最後にイベント登録を実行する

-- 設定のセーブを行う
function Save()
	Config.save( Settings )
end

-- チャットログに文字列を出力する
function PrintFF11( text )
	windower.add_to_chat( 207,  windower.to_shift_jis( text ) )
end