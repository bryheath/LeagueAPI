//
//  LOLParticipantFrame.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/31/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public class LOLParticipantFrame: Codable {
    public var championStats: [String: Int]
    public var currentGold: Int
    public var damageStats: [String: Int]
    public var goldPerSecond: Int
    public var jungleMinionsKilled: Int
    public var level: Int
    public var minionsKilled: Int
    public var participantId: Int
    public var position: LOLPosition
    public var timeEnemySpentControlled: Int
    public var totalGold: Int
    public var xp: Int

    enum CodingKeys: String, CodingKey {
        case championStats = "championStats"
        case currentGold = "currentGold"
        case damageStats = "damageStats"
        case goldPerSecond = "goldPerSecond"
        case jungleMinionsKilled = "jungleMinionsKilled"
        case level = "level"
        case minionsKilled = "minionsKilled"
        case participantId = "participantId"
        case position = "position"
        case timeEnemySpentControlled = "timeEnemySpentControlled"
        case totalGold = "totalGold"
        case xp = "xp"
    }

    public init(championStats: [String: Int], currentGold: Int, damageStats: [String: Int], goldPerSecond: Int, jungleMinionsKilled: Int, level: Int, minionsKilled: Int, participantId: Int, position: LOLPosition, timeEnemySpentControlled: Int, totalGold: Int, xp: Int) {
        self.championStats = championStats
        self.currentGold = currentGold
        self.damageStats = damageStats
        self.goldPerSecond = goldPerSecond
        self.jungleMinionsKilled = jungleMinionsKilled
        self.level = level
        self.minionsKilled = minionsKilled
        self.participantId = participantId
        self.position = position
        self.timeEnemySpentControlled = timeEnemySpentControlled
        self.totalGold = totalGold
        self.xp = xp
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.championStats = try container.decode(Dictionary.self, forKey: .championStats)
        self.currentGold = try container.decode(Int.self, forKey: .currentGold)
        self.damageStats = try container.decode(Dictionary.self, forKey: .damageStats)
        self.goldPerSecond = try container.decode(Int.self, forKey: .goldPerSecond)
        self.jungleMinionsKilled = try container.decode(Int.self, forKey: .jungleMinionsKilled)
        self.level = try container.decode(Int.self, forKey: .level)
        self.minionsKilled = try container.decode(Int.self, forKey: .minionsKilled)
        self.participantId = try container.decode(Int.self, forKey: .participantId)
        self.position = try container.decode(LOLPosition.self, forKey: .position)
        self.timeEnemySpentControlled = try container.decode(Int.self, forKey: .timeEnemySpentControlled)
        self.totalGold = try container.decode(Int.self, forKey: .totalGold)
        self.xp = try container.decode(Int.self, forKey: .xp)
    }
}
