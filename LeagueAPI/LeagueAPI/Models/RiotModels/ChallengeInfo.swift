//
//  ChallengeInfo.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/11/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public class ChallengeInfo: Codable, CustomDebugStringConvertible {
    public var challengeId: Int
    public var percentile: Double
    public var level: Level
    public var value: Int
    public var achievedTime: Int?
    public var position: Int?
    public var playersInLevel: Int?

    enum CodingKeys: String, CodingKey {
        case challengeId = "challengeId"
        case percentile = "percentile"
        case level = "level"
        case value = "value"
        case achievedTime = "achievedTime"
        case position = "position"
        case playersInLevel = "playersInLevel"
    }

    public init(challengeId: Int, percentile: Double, level: Level, value: Int, achievedTime: Int?, position: Int?, playersInLevel: Int?) {
        self.challengeId = challengeId
        self.percentile = percentile
        self.level = level
        self.value = value
        self.achievedTime = achievedTime
        self.position = position
        self.playersInLevel = playersInLevel
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.challengeId = try container.decode(Int.self, forKey: .challengeId)
        self.percentile = try container.decode(Double.self, forKey: .percentile)
        self.level = try container.decode(Level.self, forKey: .level)
        self.value = try container.decode(Int.self, forKey: .value)
        self.achievedTime = try? container.decode(Int.self, forKey: .achievedTime)
        self.position = try? container.decode(Int.self, forKey: .position)
        self.playersInLevel = try? container.decode(Int.self, forKey: .playersInLevel)
    }
    
    public var debugDescription: String {
        "challengeId: \(self.challengeId), percentile: \(self.percentile), level: \(self.level.rawValue), value: \(self.value), achievedTime: \(String(describing: self.achievedTime)), position: \(String(describing: self.position)), playersInLevel: \(String(describing: self.playersInLevel))\n"
    }
}
