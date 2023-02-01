//
//  ChallengePoints.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/11/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public class ChallengePoints: Codable, CustomDebugStringConvertible {
    public var level: Level
    public var current: Int
    public var max: Int
    public var percentile: Double

    enum CodingKeys: String, CodingKey {
        case level = "level"
        case current = "current"
        case max = "max"
        case percentile = "percentile"
    }

    public init(level: Level, current: Int, max: Int, percentile: Double) {
        self.level = level
        self.current = current
        self.max = max
        self.percentile = percentile
    }
    
    public var debugDescription: String {
        "level: \(self.level), current: \(self.current), max: \(self.max), percentile: \(self.percentile)"
    }
}
