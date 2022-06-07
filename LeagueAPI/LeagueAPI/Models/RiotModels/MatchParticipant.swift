//
//  MatchParticipant.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchParticipant: Codable { // Used by Match v5
    public var assists: Int
    public var baronKills: Int
    public var bountyLevel: Int
    public var challenges: [Challenges]
    public var champExperience: Int
    public var champLevel: Int
    public var championId: Int
    public var championName: String
    public var championTransform: Int
    public var consumablesPurchased: Int
    public var damageDealtToBuildings: Int
    public var damageDealtToObjectives: Int
    public var damageDealtToTurrets: Int
    public var damageSelfMitigated: Int
    public var deaths: Int
    public var detectorWardsPlaced: Int
    public var doubleKills: Int
    public var dragonKills: Int
    public var eligibleForProgression: Bool
    public var firstBloodAssist: Bool
    public var firstBloodKill: Bool
    public var firstTowerAssist: Bool
    public var firstTowerKill: Bool
    public var gameEndedInEarlySurrender: Bool
    public var gameEndedInSurrender: Bool
    public var goldEarned: Int
    public var goldSpent: Int
    public var individualPosition: String
    public var inhibitorKills: Int
    public var inhibitorTakedowns: Int
    public var inhibitorsLost: Int
    public var item0: Int
    public var item1: Int
    public var item2: Int
    public var item3: Int
    public var item4: Int
    public var item5: Int
    public var item6: Int
    public var itemsPurchased: Int
    public var killingSprees: Int
    public var kills: Int
    public var lane: String
    public var largestCriticalStrike: Int
    public var largestKillingSpree: Int
    public var largestMultiKill: Int
    public var longestTimeSpentLiving: Int
    public var magicDamageDealt: Int
    public var magicDamageDealtToChampions: Int
    public var magicDamageTaken: Int
    public var neutralMinionsKilled: Int
    public var nexusKills: Int
    public var nexusLost: Int
    public var nexusTakedowns: Int
    public var objectivesStolen: Int
    public var objectivesStolenAssists: Int
    public var participantId: Int
    public var pentaKills: Int
    public var perks: MatchPerks
    public var physicalDamageDealt: Int
    public var physicalDamageDealtToChampions: Int
    public var physicalDamageTaken: Int
    public var profileIcon: Int
    public var puuid: String
    public var quadraKills: Int
    public var riotIdName: String
    public var riotIdTagline: String
    public var role: String
    public var sightWardsBoughtInGame: Int
    public var spell1Casts: Int
    public var spell2Casts: Int
    public var spell3Casts: Int
    public var spell4Casts: Int
    public var summoner1Casts: Int
    public var summoner1Id: Int
    public var summoner2Casts: Int
    public var summoner2Id: Int
    public var summonerId: String
    public var summonerLevel: Int
    public var summonerName: String
    public var teamEarlySurrendered: Bool
    public var teamId: Int
    public var teamPosition: String
    public var timeCCingOthers: Int
    public var timePlayed: Int
    public var totalDamageDealt: Int
    public var totalDamageDealtToChampions: Int
    public var totalDamageShieldedOnTeammates: Int
    public var totalDamageTaken: Int
    public var totalHeal: Int
    public var totalHealsOnTeammates: Int
    public var totalMinionsKilled: Int
    public var totalTimeCcDealt: Int
    public var totalTimeSpentDead: Int
    public var totalUnitsHealed: Int
    public var tripleKills: Int
    public var trueDamageDealt: Int
    public var trueDamageDealtToChampions: Int
    public var trueDamageTaken: Int
    public var turretKills: Int
    public var turretTakedowns: Int
    public var turretsLost: Int
    public var unrealKills: Int
    public var visionScore: Int
    public var visionWardsBoughtInGame: Int
    public var wardsKilled: Int
    public var wardsPlaced: Int
    public var win: Bool

    enum CodingKeys: String, CodingKey {
        case assists = "assists"
        case baronKills = "baronKills"
        case bountyLevel = "bountyLevel"
        case challenges = "challenges"
        case champExperience = "champExperience"
        case champLevel = "champLevel"
        case championId = "championId"
        case championName = "championName"
        case championTransform = "championTransform"
        case consumablesPurchased = "consumablesPurchased"
        case damageDealtToBuildings = "damageDealtToBuildings"
        case damageDealtToObjectives = "damageDealtToObjectives"
        case damageDealtToTurrets = "damageDealtToTurrets"
        case damageSelfMitigated = "damageSelfMitigated"
        case deaths = "deaths"
        case detectorWardsPlaced = "detectorWardsPlaced"
        case doubleKills = "doubleKills"
        case dragonKills = "dragonKills"
        case eligibleForProgression = "eligibleForProgression"
        case firstBloodAssist = "firstBloodAssist"
        case firstBloodKill = "firstBloodKill"
        case firstTowerAssist = "firstTowerAssist"
        case firstTowerKill = "firstTowerKill"
        case gameEndedInEarlySurrender = "gameEndedInEarlySurrender"
        case gameEndedInSurrender = "gameEndedInSurrender"
        case goldEarned = "goldEarned"
        case goldSpent = "goldSpent"
        case individualPosition = "individualPosition"
        case inhibitorKills = "inhibitorKills"
        case inhibitorTakedowns = "inhibitorTakedowns"
        case inhibitorsLost = "inhibitorsLost"
        case item0 = "item0"
        case item1 = "item1"
        case item2 = "item2"
        case item3 = "item3"
        case item4 = "item4"
        case item5 = "item5"
        case item6 = "item6"
        case itemsPurchased = "itemsPurchased"
        case killingSprees = "killingSprees"
        case kills = "kills"
        case lane = "lane"
        case largestCriticalStrike = "largestCriticalStrike"
        case largestKillingSpree = "largestKillingSpree"
        case largestMultiKill = "largestMultiKill"
        case longestTimeSpentLiving = "longestTimeSpentLiving"
        case magicDamageDealt = "magicDamageDealt"
        case magicDamageDealtToChampions = "magicDamageDealtToChampions"
        case magicDamageTaken = "magicDamageTaken"
        case neutralMinionsKilled = "neutralMinionsKilled"
        case nexusKills = "nexusKills"
        case nexusLost = "nexusLost"
        case nexusTakedowns = "nexusTakedowns"
        case objectivesStolen = "objectivesStolen"
        case objectivesStolenAssists = "objectivesStolenAssists"
        case participantId = "participantId"
        case pentaKills = "pentaKills"
        case perks = "perks"
        case physicalDamageDealt = "physicalDamageDealt"
        case physicalDamageDealtToChampions = "physicalDamageDealtToChampions"
        case physicalDamageTaken = "physicalDamageTaken"
        case profileIcon = "profileIcon"
        case puuid = "puuid"
        case quadraKills = "quadraKills"
        case riotIdName = "riotIdName"
        case riotIdTagline = "riotIdTagline"
        case role = "role"
        case sightWardsBoughtInGame = "sightWardsBoughtInGame"
        case spell1Casts = "spell1Casts"
        case spell2Casts = "spell2Casts"
        case spell3Casts = "spell3Casts"
        case spell4Casts = "spell4Casts"
        case summoner1Casts = "summoner1Casts"
        case summoner1Id = "summoner1Id"
        case summoner2Casts = "summoner2Casts"
        case summoner2Id = "summoner2Id"
        case summonerId = "summonerId"
        case summonerLevel = "summonerLevel"
        case summonerName = "summonerName"
        case teamEarlySurrendered = "teamEarlySurrendered"
        case teamId = "teamId"
        case teamPosition = "teamPosition"
        case timeCCingOthers = "timeCCingOthers"
        case timePlayed = "timePlayed"
        case totalDamageDealt = "totalDamageDealt"
        case totalDamageDealtToChampions = "totalDamageDealtToChampions"
        case totalDamageShieldedOnTeammates = "totalDamageShieldedOnTeammates"
        case totalDamageTaken = "totalDamageTaken"
        case totalHeal = "totalHeal"
        case totalHealsOnTeammates = "totalHealsOnTeammates"
        case totalMinionsKilled = "totalMinionsKilled"
        case totalTimeCcDealt = "totalTimeCCDealt"
        case totalTimeSpentDead = "totalTimeSpentDead"
        case totalUnitsHealed = "totalUnitsHealed"
        case tripleKills = "tripleKills"
        case trueDamageDealt = "trueDamageDealt"
        case trueDamageDealtToChampions = "trueDamageDealtToChampions"
        case trueDamageTaken = "trueDamageTaken"
        case turretKills = "turretKills"
        case turretTakedowns = "turretTakedowns"
        case turretsLost = "turretsLost"
        case unrealKills = "unrealKills"
        case visionScore = "visionScore"
        case visionWardsBoughtInGame = "visionWardsBoughtInGame"
        case wardsKilled = "wardsKilled"
        case wardsPlaced = "wardsPlaced"
        case win = "win"
    }

    public init(assists: Int, baronKills: Int, bountyLevel: Int, challenges: [Challenges], champExperience: Int, champLevel: Int, championId: Int, championName: String, championTransform: Int, consumablesPurchased: Int, damageDealtToBuildings: Int, damageDealtToObjectives: Int, damageDealtToTurrets: Int, damageSelfMitigated: Int, deaths: Int, detectorWardsPlaced: Int, doubleKills: Int, dragonKills: Int, eligibleForProgression: Bool, firstBloodAssist: Bool, firstBloodKill: Bool, firstTowerAssist: Bool, firstTowerKill: Bool, gameEndedInEarlySurrender: Bool, gameEndedInSurrender: Bool, goldEarned: Int, goldSpent: Int, individualPosition: String, inhibitorKills: Int, inhibitorTakedowns: Int, inhibitorsLost: Int, item0: Int, item1: Int, item2: Int, item3: Int, item4: Int, item5: Int, item6: Int, itemsPurchased: Int, killingSprees: Int, kills: Int, lane: String, largestCriticalStrike: Int, largestKillingSpree: Int, largestMultiKill: Int, longestTimeSpentLiving: Int, magicDamageDealt: Int, magicDamageDealtToChampions: Int, magicDamageTaken: Int, neutralMinionsKilled: Int, nexusKills: Int, nexusLost: Int, nexusTakedowns: Int, objectivesStolen: Int, objectivesStolenAssists: Int, participantId: Int, pentaKills: Int, perks: MatchPerks, physicalDamageDealt: Int, physicalDamageDealtToChampions: Int, physicalDamageTaken: Int, profileIcon: Int, puuid: String, quadraKills: Int, riotIdName: String, riotIdTagline: String, role: String, sightWardsBoughtInGame: Int, spell1Casts: Int, spell2Casts: Int, spell3Casts: Int, spell4Casts: Int, summoner1Casts: Int, summoner1Id: Int, summoner2Casts: Int, summoner2Id: Int, summonerId: String, summonerLevel: Int, summonerName: String, teamEarlySurrendered: Bool, teamId: Int, teamPosition: String, timeCCingOthers: Int, timePlayed: Int, totalDamageDealt: Int, totalDamageDealtToChampions: Int, totalDamageShieldedOnTeammates: Int, totalDamageTaken: Int, totalHeal: Int, totalHealsOnTeammates: Int, totalMinionsKilled: Int, totalTimeCcDealt: Int, totalTimeSpentDead: Int, totalUnitsHealed: Int, tripleKills: Int, trueDamageDealt: Int, trueDamageDealtToChampions: Int, trueDamageTaken: Int, turretKills: Int, turretTakedowns: Int, turretsLost: Int, unrealKills: Int, visionScore: Int, visionWardsBoughtInGame: Int, wardsKilled: Int, wardsPlaced: Int, win: Bool) {
        self.assists = assists
        self.baronKills = baronKills
        self.bountyLevel = bountyLevel
        self.challenges = challenges
        self.champExperience = champExperience
        self.champLevel = champLevel
        self.championId = championId
        self.championName = championName
        self.championTransform = championTransform
        self.consumablesPurchased = consumablesPurchased
        self.damageDealtToBuildings = damageDealtToBuildings
        self.damageDealtToObjectives = damageDealtToObjectives
        self.damageDealtToTurrets = damageDealtToTurrets
        self.damageSelfMitigated = damageSelfMitigated
        self.deaths = deaths
        self.detectorWardsPlaced = detectorWardsPlaced
        self.doubleKills = doubleKills
        self.dragonKills = dragonKills
        self.eligibleForProgression = eligibleForProgression
        self.firstBloodAssist = firstBloodAssist
        self.firstBloodKill = firstBloodKill
        self.firstTowerAssist = firstTowerAssist
        self.firstTowerKill = firstTowerKill
        self.gameEndedInEarlySurrender = gameEndedInEarlySurrender
        self.gameEndedInSurrender = gameEndedInSurrender
        self.goldEarned = goldEarned
        self.goldSpent = goldSpent
        self.individualPosition = individualPosition
        self.inhibitorKills = inhibitorKills
        self.inhibitorTakedowns = inhibitorTakedowns
        self.inhibitorsLost = inhibitorsLost
        self.item0 = item0
        self.item1 = item1
        self.item2 = item2
        self.item3 = item3
        self.item4 = item4
        self.item5 = item5
        self.item6 = item6
        self.itemsPurchased = itemsPurchased
        self.killingSprees = killingSprees
        self.kills = kills
        self.lane = lane
        self.largestCriticalStrike = largestCriticalStrike
        self.largestKillingSpree = largestKillingSpree
        self.largestMultiKill = largestMultiKill
        self.longestTimeSpentLiving = longestTimeSpentLiving
        self.magicDamageDealt = magicDamageDealt
        self.magicDamageDealtToChampions = magicDamageDealtToChampions
        self.magicDamageTaken = magicDamageTaken
        self.neutralMinionsKilled = neutralMinionsKilled
        self.nexusKills = nexusKills
        self.nexusLost = nexusLost
        self.nexusTakedowns = nexusTakedowns
        self.objectivesStolen = objectivesStolen
        self.objectivesStolenAssists = objectivesStolenAssists
        self.participantId = participantId
        self.pentaKills = pentaKills
        self.perks = perks
        self.physicalDamageDealt = physicalDamageDealt
        self.physicalDamageDealtToChampions = physicalDamageDealtToChampions
        self.physicalDamageTaken = physicalDamageTaken
        self.profileIcon = profileIcon
        self.puuid = puuid
        self.quadraKills = quadraKills
        self.riotIdName = riotIdName
        self.riotIdTagline = riotIdTagline
        self.role = role
        self.sightWardsBoughtInGame = sightWardsBoughtInGame
        self.spell1Casts = spell1Casts
        self.spell2Casts = spell2Casts
        self.spell3Casts = spell3Casts
        self.spell4Casts = spell4Casts
        self.summoner1Casts = summoner1Casts
        self.summoner1Id = summoner1Id
        self.summoner2Casts = summoner2Casts
        self.summoner2Id = summoner2Id
        self.summonerId = summonerId
        self.summonerLevel = summonerLevel
        self.summonerName = summonerName
        self.teamEarlySurrendered = teamEarlySurrendered
        self.teamId = teamId
        self.teamPosition = teamPosition
        self.timeCCingOthers = timeCCingOthers
        self.timePlayed = timePlayed
        self.totalDamageDealt = totalDamageDealt
        self.totalDamageDealtToChampions = totalDamageDealtToChampions
        self.totalDamageShieldedOnTeammates = totalDamageShieldedOnTeammates
        self.totalDamageTaken = totalDamageTaken
        self.totalHeal = totalHeal
        self.totalHealsOnTeammates = totalHealsOnTeammates
        self.totalMinionsKilled = totalMinionsKilled
        self.totalTimeCcDealt = totalTimeCcDealt
        self.totalTimeSpentDead = totalTimeSpentDead
        self.totalUnitsHealed = totalUnitsHealed
        self.tripleKills = tripleKills
        self.trueDamageDealt = trueDamageDealt
        self.trueDamageDealtToChampions = trueDamageDealtToChampions
        self.trueDamageTaken = trueDamageTaken
        self.turretKills = turretKills
        self.turretTakedowns = turretTakedowns
        self.turretsLost = turretsLost
        self.unrealKills = unrealKills
        self.visionScore = visionScore
        self.visionWardsBoughtInGame = visionWardsBoughtInGame
        self.wardsKilled = wardsKilled
        self.wardsPlaced = wardsPlaced
        self.win = win
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.assists = try container.decode(Int.self, forKey: .participantId)
        self.baronKills = try container.decode(Int.self, forKey: .baronKills)
        self.bountyLevel = try container.decode(Int.self, forKey: .bountyLevel)
        self.challenges = try container.decode([Challenges].self, forKey: .challenges)
        self.champExperience = try container.decode(Int.self, forKey: .champExperience)
        self.champLevel = try container.decode(Int.self, forKey: .champLevel)
        self.championId = try container.decode(Int.self, forKey: .championId)
        self.championName = try container.decode(String.self, forKey: .championName)
        self.championTransform = try container.decode(Int.self, forKey: .championTransform)
        self.consumablesPurchased = try container.decode(Int.self, forKey: .consumablesPurchased)
        self.damageDealtToBuildings = try container.decode(Int.self, forKey: .damageDealtToBuildings)
        self.damageDealtToObjectives = try container.decode(Int.self, forKey: .damageDealtToObjectives)
        self.damageDealtToTurrets = try container.decode(Int.self, forKey: .damageDealtToTurrets)
        self.damageSelfMitigated = try container.decode(Int.self, forKey: .damageSelfMitigated)
        self.deaths = try container.decode(Int.self, forKey: .deaths)
        self.detectorWardsPlaced = try container.decode(Int.self, forKey: .detectorWardsPlaced)
        self.doubleKills = try container.decode(Int.self, forKey: .doubleKills)
        self.dragonKills = try container.decode(Int.self, forKey: .dragonKills)
        self.eligibleForProgression = try container.decode(Bool.self, forKey: .eligibleForProgression) //added in 12.9
        self.firstBloodAssist = try container.decode(Bool.self, forKey: .firstBloodAssist)
        self.firstBloodKill = try container.decode(Bool.self, forKey: .firstBloodKill)
        self.firstTowerAssist = try container.decode(Bool.self, forKey: .firstTowerAssist)
        self.firstTowerKill = try container.decode(Bool.self, forKey: .firstTowerKill)
        self.gameEndedInEarlySurrender = try container.decode(Bool.self, forKey: .gameEndedInEarlySurrender)
        self.gameEndedInSurrender = try container.decode(Bool.self, forKey: .gameEndedInSurrender)
        self.goldEarned = try container.decode(Int.self, forKey: .goldEarned)
        self.goldSpent = try container.decode(Int.self, forKey: .goldSpent)
        self.individualPosition = try container.decode(String.self, forKey: .individualPosition)
        self.inhibitorKills = try container.decode(Int.self, forKey: .inhibitorKills)
        self.inhibitorTakedowns = try container.decode(Int.self, forKey: .inhibitorTakedowns)
        self.inhibitorsLost = try container.decode(Int.self, forKey: .inhibitorsLost)
        self.item0 = try container.decode(Int.self, forKey: .item0)
        self.item1 = try container.decode(Int.self, forKey: .item1)
        self.item2 = try container.decode(Int.self, forKey: .item2)
        self.item3 = try container.decode(Int.self, forKey: .item3)
        self.item4 = try container.decode(Int.self, forKey: .item4)
        self.item5 = try container.decode(Int.self, forKey: .item5)
        self.item6 = try container.decode(Int.self, forKey: .item6)
        self.itemsPurchased = try container.decode(Int.self, forKey: .itemsPurchased)
        self.killingSprees = try container.decode(Int.self, forKey: .killingSprees)
        self.kills = try container.decode(Int.self, forKey: .kills)
        self.lane = try container.decode(String.self, forKey: .lane)
        self.largestCriticalStrike = try container.decode(Int.self, forKey: .largestCriticalStrike)
        self.largestKillingSpree = try container.decode(Int.self, forKey: .largestKillingSpree)
        self.largestMultiKill = try container.decode(Int.self, forKey: .largestMultiKill)
        self.longestTimeSpentLiving = try container.decode(Int.self, forKey: .longestTimeSpentLiving)
        self.magicDamageDealt = try container.decode(Int.self, forKey: .magicDamageDealt)
        self.magicDamageDealtToChampions = try container.decode(Int.self, forKey: .magicDamageDealtToChampions)
        self.magicDamageTaken = try container.decode(Int.self, forKey: .magicDamageTaken)
        self.neutralMinionsKilled = try container.decode(Int.self, forKey: .neutralMinionsKilled)
        self.nexusKills = try container.decode(Int.self, forKey: .nexusKills)
        self.nexusLost = try container.decode(Int.self, forKey: .nexusLost)
        self.nexusTakedowns = try container.decode(Int.self, forKey: .nexusTakedowns)
        self.objectivesStolen = try container.decode(Int.self, forKey: .objectivesStolen)
        self.objectivesStolenAssists = try container.decode(Int.self, forKey: .objectivesStolenAssists)
        self.participantId = try container.decode(Int.self, forKey: .participantId)
        self.pentaKills = try container.decode(Int.self, forKey: .pentaKills)
        self.perks = try container.decode(MatchPerks.self, forKey: .perks)
        self.physicalDamageDealt = try container.decode(Int.self, forKey: .physicalDamageDealt)
        self.physicalDamageDealtToChampions = try container.decode(Int.self, forKey: .physicalDamageDealtToChampions)
        self.physicalDamageTaken = try container.decode(Int.self, forKey: .physicalDamageTaken)
        self.profileIcon = try container.decode(Int.self, forKey: .profileIcon)
        self.puuid = try container.decode(String.self, forKey: .puuid)
        self.quadraKills = try container.decode(Int.self, forKey: .quadraKills)
        self.riotIdName = try container.decode(String.self, forKey: .riotIdName)
        self.riotIdTagline = try container.decode(String.self, forKey: .riotIdTagline)
        self.role = try container.decode(String.self, forKey: .role)
        self.sightWardsBoughtInGame = try container.decode(Int.self, forKey: .sightWardsBoughtInGame)
        self.spell1Casts = try container.decode(Int.self, forKey: .spell1Casts)
        self.spell2Casts = try container.decode(Int.self, forKey: .spell2Casts)
        self.spell3Casts = try container.decode(Int.self, forKey: .spell3Casts)
        self.spell4Casts = try container.decode(Int.self, forKey: .spell4Casts)
        self.summoner1Casts = try container.decode(Int.self, forKey: .summoner1Casts)
        self.summoner1Id = try container.decode(Int.self, forKey: .summoner1Id)
        self.summoner2Casts = try container.decode(Int.self, forKey: .summoner2Casts)
        self.summoner2Id = try container.decode(Int.self, forKey: .summoner2Id)
        self.summonerId = try container.decode(String.self, forKey: .summonerId)
        self.summonerLevel = try container.decode(Int.self, forKey: .summonerLevel)
        self.summonerName = try container.decode(String.self, forKey: .summonerName)
        self.teamEarlySurrendered = ((try container.decode(Int.self, forKey: .teamEarlySurrendered)) != 0)
        self.teamId = try container.decode(Int.self, forKey: .teamId)
        self.teamPosition = try container.decode(String.self, forKey: .teamPosition)
        self.timeCCingOthers = try container.decode(Int.self, forKey: .timeCCingOthers)
        self.timePlayed = try container.decode(Int.self, forKey: .timePlayed)
        self.totalDamageDealt = try container.decode(Int.self, forKey: .totalDamageDealt)
        self.totalDamageDealtToChampions = try container.decode(Int.self, forKey: .totalDamageDealtToChampions)
        self.totalDamageShieldedOnTeammates = try container.decode(Int.self, forKey: .totalDamageShieldedOnTeammates)
        self.totalDamageTaken = try container.decode(Int.self, forKey: .totalDamageTaken)
        self.totalHeal = try container.decode(Int.self, forKey: .totalHeal)
        self.totalHealsOnTeammates = try container.decode(Int.self, forKey: .totalHealsOnTeammates)
        self.totalMinionsKilled = try container.decode(Int.self, forKey: .totalMinionsKilled)
        self.totalTimeCcDealt = try container.decode(Int.self, forKey: .totalTimeCcDealt)
        self.totalTimeSpentDead = try container.decode(Int.self, forKey: .totalTimeSpentDead)
        self.totalUnitsHealed = try container.decode(Int.self, forKey: .totalUnitsHealed)
        self.tripleKills = try container.decode(Int.self, forKey: .tripleKills)
        self.trueDamageDealt = try container.decode(Int.self, forKey: .trueDamageDealt)
        self.trueDamageDealtToChampions = try container.decode(Int.self, forKey: .trueDamageDealtToChampions)
        self.trueDamageTaken = try container.decode(Int.self, forKey: .trueDamageTaken)
        self.turretKills = try container.decode(Int.self, forKey: .turretKills)
        self.turretTakedowns = try container.decode(Int.self, forKey: .turretTakedowns)
        self.turretsLost = try container.decode(Int.self, forKey: .turretsLost)
        self.unrealKills = try container.decode(Int.self, forKey: .unrealKills)
        self.visionScore = try container.decode(Int.self, forKey: .visionScore)
        self.visionWardsBoughtInGame = try container.decode(Int.self, forKey: .visionWardsBoughtInGame)
        self.wardsKilled = try container.decode(Int.self, forKey: .wardsKilled)
        self.wardsPlaced = try container.decode(Int.self, forKey: .wardsPlaced)
        self.win = try container.decode(Bool.self, forKey: .win)
    }
}
