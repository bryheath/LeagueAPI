//
//  Challenges.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 6/7/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class Challenges: Codable {
    public var the12AssistStreakCount: Int?
    public var abilityUses: Int?
    public var acesBefore15Minutes: Int?
    public var alliedJungleMonsterKills: Double?
    public var baronTakedowns: Int?
    public var blastConeOppositeOpponentCount: Int?
    public var bountyGold: Int?
    public var buffsStolen: Int?
    public var completeSupportQuestInTime: Int?
    public var controlWardsPlaced: Int?
    public var damagePerMinute: Double?
    public var damageTakenOnTeamPercentage: Double?
    public var dancedWithRiftHerald: Int?
    public var deathsByEnemyChamps: Int?
    public var dodgeSkillShotsSmallWindow: Int?
    public var doubleAces: Int?
    public var dragonTakedowns: Int?
    public var earlyLaningPhaseGoldExpAdvantage: Int?
    public var effectiveHealAndShielding: Int?
    public var elderDragonKillsWithOpposingSoul: Int?
    public var elderDragonMultikills: Int?
    public var enemyChampionImmobilizations: Int?
    public var enemyJungleMonsterKills: Double?
    public var epicMonsterKillsNearEnemyJungler: Int?
    public var epicMonsterKillsWithin30SecondsOfSpawn: Int?
    public var epicMonsterSteals: Int?
    public var epicMonsterStolenWithoutSmite: Int?
    public var flawlessAces: Int?
    public var fullTeamTakedown: Int?
    public var gameLength: Double?
    public var goldPerMinute: Double?
    public var hadAfkTeammate: Int?
    public var hadOpenNexus: Int?
    public var immobilizeAndKillWithAlly: Int?
    public var initialBuffCount: Int?
    public var initialCrabCount: Int?
    public var jungleCsBefore10Minutes: Double?
    public var junglerKillsEarlyJungle: Int?
    public var junglerTakedownsNearDamagedEpicMonster: Int?
    public var kTurretsDestroyedBeforePlatesFall: Int?
    public var kda: Double?
    public var killAfterHiddenWithAlly: Int?
    public var killParticipation: Double?
    public var killedChampTookFullTeamDamageSurvived: Int?
    public var killsNearEnemyTurret: Int?
    public var killsOnLanersEarlyJungleAsJungler: Int?
    public var killsOnRecentlyHealedByAramPack: Int?
    public var killsUnderOwnTurret: Int?
    public var killsWithHelpFromEpicMonster: Int?
    public var knockEnemyIntoTeamAndKill: Int?
    public var landSkillShotsEarlyGame: Int?
    public var laneMinionsFirst10Minutes: Int?
    public var laningPhaseGoldExpAdvantage: Int?
    public var legendaryCount: Int?
    public var lostAnInhibitor: Int?
    public var maxCsAdvantageOnLaneOpponent: Int?
    public var maxKillDeficit: Int?
    public var maxLevelLeadLaneOpponent: Int?
    public var moreEnemyJungleThanOpponent: Double?
    public var multiKillOneSpell: Int?
    public var multiTurretRiftHeraldCount: Int?
    public var multikills: Int?
    public var multikillsAfterAggressiveFlash: Int?
    public var mythicItemUsed: Int?
    public var outerTurretExecutesBefore10Minutes: Int?
    public var outnumberedKills: Int?
    public var outnumberedNexusKill: Int?
    public var perfectDragonSoulsTaken: Int?
    public var perfectGame: Int?
    public var pickKillWithAlly: Int?
    public var poroExplosions: Int?
    public var quickCleanse: Int?
    public var quickFirstTurret: Int?
    public var quickSoloKills: Int?
    public var riftHeraldTakedowns: Int?
    public var saveAllyFromDeath: Int?
    public var scuttleCrabKills: Int?
    public var skillshotsDodged: Int?
    public var skillshotsHit: Int?
    public var snowballsHit: Int?
    public var soloBaronKills: Int?
    public var soloKills: Int?
    public var soloTurretsLategame: Int?
    public var stealthWardsPlaced: Int?
    public var survivedSingleDigitHpCount: Int?
    public var survivedThreeImmobilizesInFight: Int?
    public var takedownOnFirstTurret: Int?
    public var takedowns: Int?
    public var takedownsAfterGainingLevelAdvantage: Int?
    public var takedownsBeforeJungleMinionSpawn: Int?
    public var takedownsFirstXMinutes: Int?
    public var takedownsInAlcove: Int?
    public var takedownsInEnemyFountain: Int?
    public var teamBaronKills: Int?
    public var teamDamagePercentage: Double?
    public var teamElderDragonKills: Int?
    public var teamRiftHeraldKills: Int?
    public var threeWardsOneSweeperCount: Int?
    public var tookLargeDamageSurvived: Int?
    public var turretPlatesTaken: Int?
    public var turretTakedowns: Int?
    public var turretsTakenWithRiftHerald: Int?
    public var twentyMinionsIn3SecondsCount: Int?
    public var unseenRecalls: Int?
    public var visionScoreAdvantageLaneOpponent: Double?
    public var visionScorePerMinute: Double?
    public var wardTakedowns: Int?
    public var wardTakedownsBefore20M: Int?
    public var wardsGuarded: Int?

    enum CodingKeys: String, CodingKey {
        case the12AssistStreakCount = "12AssistStreakCount"
        case abilityUses = "abilityUses"
        case acesBefore15Minutes = "acesBefore15Minutes"
        case alliedJungleMonsterKills = "alliedJungleMonsterKills"
        case baronTakedowns = "baronTakedowns"
        case blastConeOppositeOpponentCount = "blastConeOppositeOpponentCount"
        case bountyGold = "bountyGold"
        case buffsStolen = "buffsStolen"
        case completeSupportQuestInTime = "completeSupportQuestInTime"
        case controlWardsPlaced = "controlWardsPlaced"
        case damagePerMinute = "damagePerMinute"
        case damageTakenOnTeamPercentage = "damageTakenOnTeamPercentage"
        case dancedWithRiftHerald = "dancedWithRiftHerald"
        case deathsByEnemyChamps = "deathsByEnemyChamps"
        case dodgeSkillShotsSmallWindow = "dodgeSkillShotsSmallWindow"
        case doubleAces = "doubleAces"
        case dragonTakedowns = "dragonTakedowns"
        case earlyLaningPhaseGoldExpAdvantage = "earlyLaningPhaseGoldExpAdvantage"
        case effectiveHealAndShielding = "effectiveHealAndShielding"
        case elderDragonKillsWithOpposingSoul = "elderDragonKillsWithOpposingSoul"
        case elderDragonMultikills = "elderDragonMultikills"
        case enemyChampionImmobilizations = "enemyChampionImmobilizations"
        case enemyJungleMonsterKills = "enemyJungleMonsterKills"
        case epicMonsterKillsNearEnemyJungler = "epicMonsterKillsNearEnemyJungler"
        case epicMonsterKillsWithin30SecondsOfSpawn = "epicMonsterKillsWithin30SecondsOfSpawn"
        case epicMonsterSteals = "epicMonsterSteals"
        case epicMonsterStolenWithoutSmite = "epicMonsterStolenWithoutSmite"
        case flawlessAces = "flawlessAces"
        case fullTeamTakedown = "fullTeamTakedown"
        case gameLength = "gameLength"
        case goldPerMinute = "goldPerMinute"
        case hadAfkTeammate = "hadAfkTeammate"
        case hadOpenNexus = "hadOpenNexus"
        case immobilizeAndKillWithAlly = "immobilizeAndKillWithAlly"
        case initialBuffCount = "initialBuffCount"
        case initialCrabCount = "initialCrabCount"
        case jungleCsBefore10Minutes = "jungleCsBefore10Minutes"
        case junglerKillsEarlyJungle = "junglerKillsEarlyJungle"
        case junglerTakedownsNearDamagedEpicMonster = "junglerTakedownsNearDamagedEpicMonster"
        case kTurretsDestroyedBeforePlatesFall = "kTurretsDestroyedBeforePlatesFall"
        case kda = "kda"
        case killAfterHiddenWithAlly = "killAfterHiddenWithAlly"
        case killParticipation = "killParticipation"
        case killedChampTookFullTeamDamageSurvived = "killedChampTookFullTeamDamageSurvived"
        case killsNearEnemyTurret = "killsNearEnemyTurret"
        case killsOnLanersEarlyJungleAsJungler = "killsOnLanersEarlyJungleAsJungler"
        case killsOnRecentlyHealedByAramPack = "killsOnRecentlyHealedByAramPack"
        case killsUnderOwnTurret = "killsUnderOwnTurret"
        case killsWithHelpFromEpicMonster = "killsWithHelpFromEpicMonster"
        case knockEnemyIntoTeamAndKill = "knockEnemyIntoTeamAndKill"
        case landSkillShotsEarlyGame = "landSkillShotsEarlyGame"
        case laneMinionsFirst10Minutes = "laneMinionsFirst10Minutes"
        case laningPhaseGoldExpAdvantage = "laningPhaseGoldExpAdvantage"
        case legendaryCount = "legendaryCount"
        case lostAnInhibitor = "lostAnInhibitor"
        case maxCsAdvantageOnLaneOpponent = "maxCsAdvantageOnLaneOpponent"
        case maxKillDeficit = "maxKillDeficit"
        case maxLevelLeadLaneOpponent = "maxLevelLeadLaneOpponent"
        case moreEnemyJungleThanOpponent = "moreEnemyJungleThanOpponent"
        case multiKillOneSpell = "multiKillOneSpell"
        case multiTurretRiftHeraldCount = "multiTurretRiftHeraldCount"
        case multikills = "multikills"
        case multikillsAfterAggressiveFlash = "multikillsAfterAggressiveFlash"
        case mythicItemUsed = "mythicItemUsed"
        case outerTurretExecutesBefore10Minutes = "outerTurretExecutesBefore10Minutes"
        case outnumberedKills = "outnumberedKills"
        case outnumberedNexusKill = "outnumberedNexusKill"
        case perfectDragonSoulsTaken = "perfectDragonSoulsTaken"
        case perfectGame = "perfectGame"
        case pickKillWithAlly = "pickKillWithAlly"
        case poroExplosions = "poroExplosions"
        case quickCleanse = "quickCleanse"
        case quickFirstTurret = "quickFirstTurret"
        case quickSoloKills = "quickSoloKills"
        case riftHeraldTakedowns = "riftHeraldTakedowns"
        case saveAllyFromDeath = "saveAllyFromDeath"
        case scuttleCrabKills = "scuttleCrabKills"
        case skillshotsDodged = "skillshotsDodged"
        case skillshotsHit = "skillshotsHit"
        case snowballsHit = "snowballsHit"
        case soloBaronKills = "soloBaronKills"
        case soloKills = "soloKills"
        case soloTurretsLategame = "soloTurretsLategame"
        case stealthWardsPlaced = "stealthWardsPlaced"
        case survivedSingleDigitHpCount = "survivedSingleDigitHpCount"
        case survivedThreeImmobilizesInFight = "survivedThreeImmobilizesInFight"
        case takedownOnFirstTurret = "takedownOnFirstTurret"
        case takedowns = "takedowns"
        case takedownsAfterGainingLevelAdvantage = "takedownsAfterGainingLevelAdvantage"
        case takedownsBeforeJungleMinionSpawn = "takedownsBeforeJungleMinionSpawn"
        case takedownsFirstXMinutes = "takedownsFirstXMinutes"
        case takedownsInAlcove = "takedownsInAlcove"
        case takedownsInEnemyFountain = "takedownsInEnemyFountain"
        case teamBaronKills = "teamBaronKills"
        case teamDamagePercentage = "teamDamagePercentage"
        case teamElderDragonKills = "teamElderDragonKills"
        case teamRiftHeraldKills = "teamRiftHeraldKills"
        case threeWardsOneSweeperCount = "threeWardsOneSweeperCount"
        case tookLargeDamageSurvived = "tookLargeDamageSurvived"
        case turretPlatesTaken = "turretPlatesTaken"
        case turretTakedowns = "turretTakedowns"
        case turretsTakenWithRiftHerald = "turretsTakenWithRiftHerald"
        case twentyMinionsIn3SecondsCount = "twentyMinionsIn3SecondsCount"
        case unseenRecalls = "unseenRecalls"
        case visionScoreAdvantageLaneOpponent = "visionScoreAdvantageLaneOpponent"
        case visionScorePerMinute = "visionScorePerMinute"
        case wardTakedowns = "wardTakedowns"
        case wardTakedownsBefore20M = "wardTakedownsBefore20M"
        case wardsGuarded = "wardsGuarded"
    }

    public init(the12AssistStreakCount: Int?, abilityUses: Int?, acesBefore15Minutes: Int?, alliedJungleMonsterKills: Double?, baronTakedowns: Int?, blastConeOppositeOpponentCount: Int?, bountyGold: Int?, buffsStolen: Int?, completeSupportQuestInTime: Int?, controlWardsPlaced: Int?, damagePerMinute: Double?, damageTakenOnTeamPercentage: Double?, dancedWithRiftHerald: Int?, deathsByEnemyChamps: Int?, dodgeSkillShotsSmallWindow: Int?, doubleAces: Int?, dragonTakedowns: Int?, earlyLaningPhaseGoldExpAdvantage: Int?, effectiveHealAndShielding: Int?, elderDragonKillsWithOpposingSoul: Int?, elderDragonMultikills: Int?, enemyChampionImmobilizations: Int?, enemyJungleMonsterKills: Double?, epicMonsterKillsNearEnemyJungler: Int?, epicMonsterKillsWithin30SecondsOfSpawn: Int?, epicMonsterSteals: Int?, epicMonsterStolenWithoutSmite: Int?, flawlessAces: Int?, fullTeamTakedown: Int?, gameLength: Double?, goldPerMinute: Double?, hadAfkTeammate: Int?, hadOpenNexus: Int?, immobilizeAndKillWithAlly: Int?, initialBuffCount: Int?, initialCrabCount: Int?, jungleCsBefore10Minutes: Double?, junglerKillsEarlyJungle: Int?, junglerTakedownsNearDamagedEpicMonster: Int?, kTurretsDestroyedBeforePlatesFall: Int?, kda: Double?, killAfterHiddenWithAlly: Int?, killParticipation: Double?, killedChampTookFullTeamDamageSurvived: Int?, killsNearEnemyTurret: Int?, killsOnLanersEarlyJungleAsJungler: Int?, killsOnRecentlyHealedByAramPack: Int?, killsUnderOwnTurret: Int?, killsWithHelpFromEpicMonster: Int?, knockEnemyIntoTeamAndKill: Int?, landSkillShotsEarlyGame: Int?, laneMinionsFirst10Minutes: Int?, laningPhaseGoldExpAdvantage: Int?, legendaryCount: Int?, lostAnInhibitor: Int?, maxCsAdvantageOnLaneOpponent: Int?, maxKillDeficit: Int?, maxLevelLeadLaneOpponent: Int?, moreEnemyJungleThanOpponent: Double?, multiKillOneSpell: Int?, multiTurretRiftHeraldCount: Int?, multikills: Int?, multikillsAfterAggressiveFlash: Int?, mythicItemUsed: Int?, outerTurretExecutesBefore10Minutes: Int?, outnumberedKills: Int?, outnumberedNexusKill: Int?, perfectDragonSoulsTaken: Int?, perfectGame: Int?, pickKillWithAlly: Int?, poroExplosions: Int?, quickCleanse: Int?, quickFirstTurret: Int?, quickSoloKills: Int?, riftHeraldTakedowns: Int?, saveAllyFromDeath: Int?, scuttleCrabKills: Int?, skillshotsDodged: Int?, skillshotsHit: Int?, snowballsHit: Int?, soloBaronKills: Int?, soloKills: Int?, soloTurretsLategame: Int?, stealthWardsPlaced: Int?, survivedSingleDigitHpCount: Int?, survivedThreeImmobilizesInFight: Int?, takedownOnFirstTurret: Int?, takedowns: Int?, takedownsAfterGainingLevelAdvantage: Int?, takedownsBeforeJungleMinionSpawn: Int?, takedownsFirstXMinutes: Int?, takedownsInAlcove: Int?, takedownsInEnemyFountain: Int?, teamBaronKills: Int?, teamDamagePercentage: Double?, teamElderDragonKills: Int?, teamRiftHeraldKills: Int?, threeWardsOneSweeperCount: Int?, tookLargeDamageSurvived: Int?, turretPlatesTaken: Int?, turretTakedowns: Int?, turretsTakenWithRiftHerald: Int?, twentyMinionsIn3SecondsCount: Int?, unseenRecalls: Int?, visionScoreAdvantageLaneOpponent: Double?, visionScorePerMinute: Double?, wardTakedowns: Int?, wardTakedownsBefore20M: Int?, wardsGuarded: Int?) {
        self.the12AssistStreakCount = the12AssistStreakCount
        self.abilityUses = abilityUses
        self.acesBefore15Minutes = acesBefore15Minutes
        self.alliedJungleMonsterKills = alliedJungleMonsterKills
        self.baronTakedowns = baronTakedowns
        self.blastConeOppositeOpponentCount = blastConeOppositeOpponentCount
        self.bountyGold = bountyGold
        self.buffsStolen = buffsStolen
        self.completeSupportQuestInTime = completeSupportQuestInTime
        self.controlWardsPlaced = controlWardsPlaced
        self.damagePerMinute = damagePerMinute
        self.damageTakenOnTeamPercentage = damageTakenOnTeamPercentage
        self.dancedWithRiftHerald = dancedWithRiftHerald
        self.deathsByEnemyChamps = deathsByEnemyChamps
        self.dodgeSkillShotsSmallWindow = dodgeSkillShotsSmallWindow
        self.doubleAces = doubleAces
        self.dragonTakedowns = dragonTakedowns
        self.earlyLaningPhaseGoldExpAdvantage = earlyLaningPhaseGoldExpAdvantage
        self.effectiveHealAndShielding = effectiveHealAndShielding
        self.elderDragonKillsWithOpposingSoul = elderDragonKillsWithOpposingSoul
        self.elderDragonMultikills = elderDragonMultikills
        self.enemyChampionImmobilizations = enemyChampionImmobilizations
        self.enemyJungleMonsterKills = enemyJungleMonsterKills
        self.epicMonsterKillsNearEnemyJungler = epicMonsterKillsNearEnemyJungler
        self.epicMonsterKillsWithin30SecondsOfSpawn = epicMonsterKillsWithin30SecondsOfSpawn
        self.epicMonsterSteals = epicMonsterSteals
        self.epicMonsterStolenWithoutSmite = epicMonsterStolenWithoutSmite
        self.flawlessAces = flawlessAces
        self.fullTeamTakedown = fullTeamTakedown
        self.gameLength = gameLength
        self.goldPerMinute = goldPerMinute
        self.hadAfkTeammate = hadAfkTeammate
        self.hadOpenNexus = hadOpenNexus
        self.immobilizeAndKillWithAlly = immobilizeAndKillWithAlly
        self.initialBuffCount = initialBuffCount
        self.initialCrabCount = initialCrabCount
        self.jungleCsBefore10Minutes = jungleCsBefore10Minutes
        self.junglerKillsEarlyJungle = junglerKillsEarlyJungle
        self.junglerTakedownsNearDamagedEpicMonster = junglerTakedownsNearDamagedEpicMonster
        self.kTurretsDestroyedBeforePlatesFall = kTurretsDestroyedBeforePlatesFall
        self.kda = kda
        self.killAfterHiddenWithAlly = killAfterHiddenWithAlly
        self.killParticipation = killParticipation
        self.killedChampTookFullTeamDamageSurvived = killedChampTookFullTeamDamageSurvived
        self.killsNearEnemyTurret = killsNearEnemyTurret
        self.killsOnLanersEarlyJungleAsJungler = killsOnLanersEarlyJungleAsJungler
        self.killsOnRecentlyHealedByAramPack = killsOnRecentlyHealedByAramPack
        self.killsUnderOwnTurret = killsUnderOwnTurret
        self.killsWithHelpFromEpicMonster = killsWithHelpFromEpicMonster
        self.knockEnemyIntoTeamAndKill = knockEnemyIntoTeamAndKill
        self.landSkillShotsEarlyGame = landSkillShotsEarlyGame
        self.laneMinionsFirst10Minutes = laneMinionsFirst10Minutes
        self.laningPhaseGoldExpAdvantage = laningPhaseGoldExpAdvantage
        self.legendaryCount = legendaryCount
        self.lostAnInhibitor = lostAnInhibitor
        self.maxCsAdvantageOnLaneOpponent = maxCsAdvantageOnLaneOpponent
        self.maxKillDeficit = maxKillDeficit
        self.maxLevelLeadLaneOpponent = maxLevelLeadLaneOpponent
        self.moreEnemyJungleThanOpponent = moreEnemyJungleThanOpponent
        self.multiKillOneSpell = multiKillOneSpell
        self.multiTurretRiftHeraldCount = multiTurretRiftHeraldCount
        self.multikills = multikills
        self.multikillsAfterAggressiveFlash = multikillsAfterAggressiveFlash
        self.mythicItemUsed = mythicItemUsed
        self.outerTurretExecutesBefore10Minutes = outerTurretExecutesBefore10Minutes
        self.outnumberedKills = outnumberedKills
        self.outnumberedNexusKill = outnumberedNexusKill
        self.perfectDragonSoulsTaken = perfectDragonSoulsTaken
        self.perfectGame = perfectGame
        self.pickKillWithAlly = pickKillWithAlly
        self.poroExplosions = poroExplosions
        self.quickCleanse = quickCleanse
        self.quickFirstTurret = quickFirstTurret
        self.quickSoloKills = quickSoloKills
        self.riftHeraldTakedowns = riftHeraldTakedowns
        self.saveAllyFromDeath = saveAllyFromDeath
        self.scuttleCrabKills = scuttleCrabKills
        self.skillshotsDodged = skillshotsDodged
        self.skillshotsHit = skillshotsHit
        self.snowballsHit = snowballsHit
        self.soloBaronKills = soloBaronKills
        self.soloKills = soloKills
        self.soloTurretsLategame = soloTurretsLategame
        self.stealthWardsPlaced = stealthWardsPlaced
        self.survivedSingleDigitHpCount = survivedSingleDigitHpCount
        self.survivedThreeImmobilizesInFight = survivedThreeImmobilizesInFight
        self.takedownOnFirstTurret = takedownOnFirstTurret
        self.takedowns = takedowns
        self.takedownsAfterGainingLevelAdvantage = takedownsAfterGainingLevelAdvantage
        self.takedownsBeforeJungleMinionSpawn = takedownsBeforeJungleMinionSpawn
        self.takedownsFirstXMinutes = takedownsFirstXMinutes
        self.takedownsInAlcove = takedownsInAlcove
        self.takedownsInEnemyFountain = takedownsInEnemyFountain
        self.teamBaronKills = teamBaronKills
        self.teamDamagePercentage = teamDamagePercentage
        self.teamElderDragonKills = teamElderDragonKills
        self.teamRiftHeraldKills = teamRiftHeraldKills
        self.threeWardsOneSweeperCount = threeWardsOneSweeperCount
        self.tookLargeDamageSurvived = tookLargeDamageSurvived
        self.turretPlatesTaken = turretPlatesTaken
        self.turretTakedowns = turretTakedowns
        self.turretsTakenWithRiftHerald = turretsTakenWithRiftHerald
        self.twentyMinionsIn3SecondsCount = twentyMinionsIn3SecondsCount
        self.unseenRecalls = unseenRecalls
        self.visionScoreAdvantageLaneOpponent = visionScoreAdvantageLaneOpponent
        self.visionScorePerMinute = visionScorePerMinute
        self.wardTakedowns = wardTakedowns
        self.wardTakedownsBefore20M = wardTakedownsBefore20M
        self.wardsGuarded = wardsGuarded
    }
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.the12AssistStreakCount = try container.decode(Int.self, forKey: .the12AssistStreakCount)
        self.abilityUses = try container.decode(Int.self, forKey: .abilityUses)
        self.acesBefore15Minutes = try container.decode(Int.self, forKey: .acesBefore15Minutes)
        self.alliedJungleMonsterKills = try container.decode(Double.self, forKey: .alliedJungleMonsterKills)
        self.baronTakedowns = try container.decode(Int.self, forKey: .baronTakedowns)
        self.blastConeOppositeOpponentCount = try container.decode(Int.self, forKey: .blastConeOppositeOpponentCount)
        self.bountyGold = try container.decode(Int.self, forKey: .bountyGold)
        self.buffsStolen = try container.decode(Int.self, forKey: .buffsStolen)
        self.completeSupportQuestInTime = try container.decode(Int.self, forKey: .completeSupportQuestInTime)
        self.controlWardsPlaced = try container.decode(Int.self, forKey: .controlWardsPlaced)
        self.damagePerMinute = try container.decode(Double.self, forKey: .damagePerMinute)
        self.damageTakenOnTeamPercentage = try container.decode(Double.self, forKey: .damageTakenOnTeamPercentage)
        self.dancedWithRiftHerald = try container.decode(Int.self, forKey: .dancedWithRiftHerald)
        self.deathsByEnemyChamps = try container.decode(Int.self, forKey: .deathsByEnemyChamps)
        self.dodgeSkillShotsSmallWindow = try container.decode(Int.self, forKey: .dodgeSkillShotsSmallWindow)
        self.doubleAces = try container.decode(Int.self, forKey: .doubleAces)
        self.dragonTakedowns = try container.decode(Int.self, forKey: .dragonTakedowns)
        self.earlyLaningPhaseGoldExpAdvantage = try container.decode(Int.self, forKey: .earlyLaningPhaseGoldExpAdvantage)
        self.effectiveHealAndShielding = try container.decode(Int.self, forKey: .effectiveHealAndShielding)
        self.elderDragonKillsWithOpposingSoul = try container.decode(Int.self, forKey: .elderDragonKillsWithOpposingSoul)
        self.elderDragonMultikills = try container.decode(Int.self, forKey: .elderDragonMultikills)
        self.enemyChampionImmobilizations = try container.decode(Int.self, forKey: .enemyChampionImmobilizations)
        self.enemyJungleMonsterKills = try container.decode(Double.self, forKey: .enemyJungleMonsterKills)
        self.epicMonsterKillsNearEnemyJungler = try container.decode(Int.self, forKey: .epicMonsterKillsNearEnemyJungler)
        self.epicMonsterKillsWithin30SecondsOfSpawn = try container.decode(Int.self, forKey: .epicMonsterKillsWithin30SecondsOfSpawn)
        self.epicMonsterSteals = try container.decode(Int.self, forKey: .epicMonsterSteals)
        self.epicMonsterStolenWithoutSmite = try container.decode(Int.self, forKey: .epicMonsterStolenWithoutSmite)
        self.flawlessAces = try container.decode(Int.self, forKey: .flawlessAces)
        self.fullTeamTakedown = try container.decode(Int.self, forKey: .fullTeamTakedown)
        self.gameLength = try container.decode(Double.self, forKey: .gameLength)
        self.goldPerMinute = try container.decode(Double.self, forKey: .goldPerMinute)
        self.hadAfkTeammate = try container.decode(Int.self, forKey: .hadAfkTeammate)
        self.hadOpenNexus = try container.decode(Int.self, forKey: .hadOpenNexus)
        self.immobilizeAndKillWithAlly = try container.decode(Int.self, forKey: .immobilizeAndKillWithAlly)
        self.initialBuffCount = try container.decode(Int.self, forKey: .initialBuffCount)
        self.initialCrabCount = try container.decode(Int.self, forKey: .initialCrabCount)
        self.jungleCsBefore10Minutes = try container.decode(Double.self, forKey: .jungleCsBefore10Minutes)
        self.junglerKillsEarlyJungle = try container.decode(Int.self, forKey: .junglerKillsEarlyJungle)
        self.junglerTakedownsNearDamagedEpicMonster = try container.decode(Int.self, forKey: .junglerTakedownsNearDamagedEpicMonster)
        self.kTurretsDestroyedBeforePlatesFall = try container.decode(Int.self, forKey: .kTurretsDestroyedBeforePlatesFall)
        self.kda = try container.decode(Double.self, forKey: .kda)
        self.killAfterHiddenWithAlly = try container.decode(Int.self, forKey: .killAfterHiddenWithAlly)
        self.killParticipation = try container.decode(Double.self, forKey: .killParticipation)
        self.killedChampTookFullTeamDamageSurvived = try container.decode(Int.self, forKey: .killedChampTookFullTeamDamageSurvived)
        self.killsNearEnemyTurret = try container.decode(Int.self, forKey: .killsNearEnemyTurret)
        self.killsOnLanersEarlyJungleAsJungler = try container.decode(Int.self, forKey: .killsOnLanersEarlyJungleAsJungler)
        self.killsOnRecentlyHealedByAramPack = try container.decode(Int.self, forKey: .killsOnRecentlyHealedByAramPack)
        self.killsUnderOwnTurret = try container.decode(Int.self, forKey: .killsUnderOwnTurret)
        self.killsWithHelpFromEpicMonster = try container.decode(Int.self, forKey: .killsWithHelpFromEpicMonster)
        self.knockEnemyIntoTeamAndKill = try container.decode(Int.self, forKey: .knockEnemyIntoTeamAndKill)
        self.landSkillShotsEarlyGame = try container.decode(Int.self, forKey: .landSkillShotsEarlyGame)
        self.laneMinionsFirst10Minutes = try container.decode(Int.self, forKey: .laneMinionsFirst10Minutes)
        self.laningPhaseGoldExpAdvantage = try container.decode(Int.self, forKey: .laningPhaseGoldExpAdvantage)
        self.legendaryCount = try container.decode(Int.self, forKey: .legendaryCount)
        self.lostAnInhibitor = try container.decode(Int.self, forKey: .lostAnInhibitor)
        self.maxCsAdvantageOnLaneOpponent = try container.decode(Int.self, forKey: .maxCsAdvantageOnLaneOpponent)
        self.maxKillDeficit = try container.decode(Int.self, forKey: .maxKillDeficit)
        self.maxLevelLeadLaneOpponent = try container.decode(Int.self, forKey: .maxLevelLeadLaneOpponent)
        self.moreEnemyJungleThanOpponent = try container.decode(Double.self, forKey: .moreEnemyJungleThanOpponent)
        self.multiKillOneSpell = try container.decode(Int.self, forKey: .multiKillOneSpell)
        self.multiTurretRiftHeraldCount = try container.decode(Int.self, forKey: .multiTurretRiftHeraldCount)
        self.multikills = try container.decode(Int.self, forKey: .multikills)
        self.multikillsAfterAggressiveFlash = try container.decode(Int.self, forKey: .multikillsAfterAggressiveFlash)
        self.mythicItemUsed = try container.decode(Int.self, forKey: .mythicItemUsed)
        self.outerTurretExecutesBefore10Minutes = try container.decode(Int.self, forKey: .outerTurretExecutesBefore10Minutes)
        self.outnumberedKills = try container.decode(Int.self, forKey: .outnumberedKills)
        self.outnumberedNexusKill = try container.decode(Int.self, forKey: .outnumberedNexusKill)
        self.perfectDragonSoulsTaken = try container.decode(Int.self, forKey: .perfectDragonSoulsTaken)
        self.perfectGame = try container.decode(Int.self, forKey: .perfectGame)
        self.pickKillWithAlly = try container.decode(Int.self, forKey: .pickKillWithAlly)
        self.poroExplosions = try container.decode(Int.self, forKey: .poroExplosions)
        self.quickCleanse = try container.decode(Int.self, forKey: .quickCleanse)
        self.quickFirstTurret = try container.decode(Int.self, forKey: .quickFirstTurret)
        self.quickSoloKills = try container.decode(Int.self, forKey: .quickSoloKills)
        self.riftHeraldTakedowns = try container.decode(Int.self, forKey: .riftHeraldTakedowns)
        self.saveAllyFromDeath = try container.decode(Int.self, forKey: .saveAllyFromDeath)
        self.scuttleCrabKills = try container.decode(Int.self, forKey: .scuttleCrabKills)
        self.skillshotsDodged = try container.decode(Int.self, forKey: .skillshotsDodged)
        self.skillshotsHit = try container.decode(Int.self, forKey: .skillshotsHit)
        self.snowballsHit = try container.decode(Int.self, forKey: .snowballsHit)
        self.soloBaronKills = try container.decode(Int.self, forKey: .soloBaronKills)
        self.soloKills = try container.decode(Int.self, forKey: .soloKills)
        self.soloTurretsLategame = try container.decode(Int.self, forKey: .soloTurretsLategame)
        self.stealthWardsPlaced = try container.decode(Int.self, forKey: .stealthWardsPlaced)
        self.survivedSingleDigitHpCount = try container.decode(Int.self, forKey: .survivedSingleDigitHpCount)
        self.survivedThreeImmobilizesInFight = try container.decode(Int.self, forKey: .survivedThreeImmobilizesInFight)
        self.takedownOnFirstTurret = try container.decode(Int.self, forKey: .takedownOnFirstTurret)
        self.takedowns = try container.decode(Int.self, forKey: .takedowns)
        self.takedownsAfterGainingLevelAdvantage = try container.decode(Int.self, forKey: .takedownsAfterGainingLevelAdvantage)
        self.takedownsBeforeJungleMinionSpawn = try container.decode(Int.self, forKey: .takedownsBeforeJungleMinionSpawn)
        self.takedownsFirstXMinutes = try container.decode(Int.self, forKey: .takedownsFirstXMinutes)
        self.takedownsInAlcove = try container.decode(Int.self, forKey: .takedownsInAlcove)
        self.takedownsInEnemyFountain = try container.decode(Int.self, forKey: .takedownsInEnemyFountain)
        self.teamBaronKills = try container.decode(Int.self, forKey: .teamBaronKills)
        self.teamDamagePercentage = try container.decode(Double.self, forKey: .teamDamagePercentage)
        self.teamElderDragonKills = try container.decode(Int.self, forKey: .teamElderDragonKills)
        self.teamRiftHeraldKills = try container.decode(Int.self, forKey: .teamRiftHeraldKills)
        self.threeWardsOneSweeperCount = try container.decode(Int.self, forKey: .threeWardsOneSweeperCount)
        self.tookLargeDamageSurvived = try container.decode(Int.self, forKey: .tookLargeDamageSurvived)
        self.turretPlatesTaken = try container.decode(Int.self, forKey: .turretPlatesTaken)
        self.turretTakedowns = try container.decode(Int.self, forKey: .turretTakedowns)
        self.turretsTakenWithRiftHerald = try container.decode(Int.self, forKey: .turretsTakenWithRiftHerald)
        self.twentyMinionsIn3SecondsCount = try container.decode(Int.self, forKey: .twentyMinionsIn3SecondsCount)
        self.unseenRecalls = try container.decode(Int.self, forKey: .unseenRecalls)
        self.visionScoreAdvantageLaneOpponent = try container.decode(Double.self, forKey: .visionScoreAdvantageLaneOpponent)
        self.visionScorePerMinute = try container.decode(Double.self, forKey: .visionScorePerMinute)
        self.wardTakedowns = try container.decode(Int.self, forKey: .wardTakedowns)
        self.wardTakedownsBefore20M = try container.decode(Int.self, forKey: .wardTakedownsBefore20M)
        self.wardsGuarded = try container.decode(Int.self, forKey: .wardsGuarded)
    }
}
