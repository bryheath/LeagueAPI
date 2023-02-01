//
//  LOLMatchEvent.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/31/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation
public class LOLMatchEvent: Codable {
    public var realTimestamp: Int?
    public var timestamp: Int
    public var type: LOLEventType
    public var itemId: Int?
    public var participantId: Int?
    public var levelUpType: LOLLevelUpType?
    public var skillSlot: Int?
    public var creatorId: Int?
    public var wardType: LOLWardType?
    public var level: Int?
    public var assistingParticipantIds: [Int]?
    public var bounty: Int?
    public var killStreakLength: Int?
    public var killerId: Int?
    public var position: LOLPosition?
    public var shutdownBounty: Int?
    public var victimDamageDealt: [LOLVictimDamage]?
    public var victimDamageReceived: [LOLVictimDamage]?
    public var victimId: Int?
    public var killType: String?
    public var laneType: LOLLaneType?
    public var teamId: Int?
    public var killerTeamId: Int?
    public var monsterType: String?
    public var monsterSubType: String?
    public var buildingType: LOLBuildingType?
    public var towerType: String?
    public var actualStartTime: Int?
    public var afterId: Int?
    public var beforeId: Int?
    public var goldGain: Int?
    public var multiKillLength: Int?
    public var name: String?
    public var gameId: Int?
    public var winningTeam: Int?
    
    enum CodingKeys: String, CodingKey {
        case realTimestamp = "realTimestamp"
        case timestamp = "timestamp"
        case type = "type"
        case itemId = "itemId"
        case participantId = "participantId"
        case levelUpType = "levelUpType"
        case skillSlot = "skillSlot"
        case creatorId = "creatorId"
        case wardType = "wardType"
        case level = "level"
        case assistingParticipantIds = "assistingParticipantIds"
        case bounty = "bounty"
        case killStreakLength = "killStreakLength"
        case killerId = "killerId"
        case position = "position"
        case shutdownBounty = "shutdownBounty"
        case victimDamageDealt = "victimDamageDealt"
        case victimDamageReceived = "victimDamageReceived"
        case victimId = "victimId"
        case killType = "killType"
        case laneType = "laneType"
        case teamId = "teamId"
        case killerTeamId = "killerTeamId"
        case monsterType = "monsterType"
        case monsterSubType = "monsterSubType"
        case buildingType = "buildingType"
        case towerType = "towerType"
        case actualStartTime = "actualStartTime"
        case afterId = "afterId"
        case beforeId = "beforeId"
        case goldGain = "goldGain"
        case multiKillLength = "multiKillLength"
        case name = "name"
        case gameId = "gameId"
        case winningTeam = "winningTeam"
    }
    
    public init(realTimestamp: Int?, timestamp: Int, type: LOLEventType, itemId: Int?, participantId: Int?, levelUpType: LOLLevelUpType?, skillSlot: Int?, creatorId: Int?, wardType: LOLWardType?, level: Int?, assistingParticipantIds: [Int]?, bounty: Int?, killStreakLength: Int?, killerId: Int?, position: LOLPosition?, shutdownBounty: Int?, victimDamageDealt: [LOLVictimDamage]?, victimDamageReceived: [LOLVictimDamage]?, victimId: Int?, killType: String?, laneType: LOLLaneType?, teamId: Int?, killerTeamId: Int?, monsterType: String?, monsterSubType: String?, buildingType: LOLBuildingType?, towerType: String?, actualStartTime: Int?, afterId: Int?, beforeId: Int?, goldGain: Int?, multiKillLength: Int?, name: String?, gameId: Int?, winningTeam: Int?) {
        self.realTimestamp = realTimestamp
        self.timestamp = timestamp
        self.type = type
        self.itemId = itemId
        self.participantId = participantId
        self.levelUpType = levelUpType
        self.skillSlot = skillSlot
        self.creatorId = creatorId
        self.wardType = wardType
        self.level = level
        self.assistingParticipantIds = assistingParticipantIds
        self.bounty = bounty
        self.killStreakLength = killStreakLength
        self.killerId = killerId
        self.position = position
        self.shutdownBounty = shutdownBounty
        self.victimDamageDealt = victimDamageDealt
        self.victimDamageReceived = victimDamageReceived
        self.victimId = victimId
        self.killType = killType
        self.laneType = laneType
        self.teamId = teamId
        self.killerTeamId = killerTeamId
        self.monsterType = monsterType
        self.monsterSubType = monsterSubType
        self.buildingType = buildingType
        self.towerType = towerType
        self.actualStartTime = actualStartTime
        self.afterId = afterId
        self.beforeId = beforeId
        self.goldGain = goldGain
        self.multiKillLength = multiKillLength
        self.name = name
        self.gameId = gameId
        self.winningTeam = winningTeam
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.realTimestamp = try? container.decode(Int.self, forKey: .realTimestamp)
        self.timestamp = try container.decode(Int.self, forKey: .timestamp)
        self.type = try container.decode(LOLEventType.self, forKey: .type)
        self.itemId = try? container.decode(Int.self, forKey: .itemId)
        self.participantId = try? container.decode(Int.self, forKey: .participantId)
        self.levelUpType = try container.decode(LOLLevelUpType.self, forKey: .levelUpType)
        self.skillSlot = try? container.decode(Int.self, forKey: .skillSlot)
        self.creatorId = try? container.decode(Int.self, forKey: .creatorId)
        self.wardType = try container.decode(LOLWardType.self, forKey: .wardType)
        self.level = try? container.decode(Int.self, forKey: .level)
        self.assistingParticipantIds = try? container.decode([Int].self, forKey: .assistingParticipantIds)
        self.bounty = try? container.decode(Int.self, forKey: .bounty)
        self.killStreakLength = try? container.decode(Int.self, forKey: .killStreakLength)
        self.killerId = try? container.decode(Int.self, forKey: .killerId)
        self.position = try? container.decode(LOLPosition.self, forKey: .position)
        self.shutdownBounty = try? container.decode(Int.self, forKey: .shutdownBounty)
        self.victimDamageDealt = try? container.decode([LOLVictimDamage].self, forKey: .victimDamageDealt)
        self.victimDamageReceived = try? container.decode([LOLVictimDamage].self, forKey: .victimDamageReceived)
        self.victimId = try? container.decode(Int.self, forKey: .victimId)
        self.killType = try? container.decode(String.self, forKey: .killType)
        self.laneType = try? container.decode(LOLLaneType.self, forKey: .laneType)
        self.teamId = try? container.decode(Int.self, forKey: .teamId)
        self.killerTeamId = try? container.decode(Int.self, forKey: .killerTeamId)
        self.monsterType = try? container.decode(String.self, forKey: .monsterType)
        self.monsterSubType = try? container.decode(String.self, forKey: .monsterSubType)
        self.buildingType = try? container.decode(LOLBuildingType.self, forKey: .buildingType)
        self.towerType = try? container.decode(String.self, forKey: .towerType)
        self.actualStartTime = try? container.decode(Int.self, forKey: .actualStartTime)
        self.afterId = try? container.decode(Int.self, forKey: .afterId)
        self.beforeId = try? container.decode(Int.self, forKey: .beforeId)
        self.goldGain = try? container.decode(Int.self, forKey: .goldGain)
        self.multiKillLength = try? container.decode(Int.self, forKey: .multiKillLength)
        self.name = try? container.decode(String.self, forKey: .name)
        self.gameId = try? container.decode(Int.self, forKey: .gameId)
        self.winningTeam = try? container.decode(Int.self, forKey: .winningTeam)
    }
}
