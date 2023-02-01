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
    
    public var debugDescription: String {
        "challengeId: \(self.challengeId), percentile: \(self.percentile), level: \(self.level.rawValue), value: \(self.value), achievedTime: \(String(describing: self.achievedTime)), position: \(String(describing: self.position)), playersInLevel: \(String(describing: self.playersInLevel))\n"
    }
}
