//
//  PlayerInfo.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/11/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public class PlayerInfo: Codable {
    public var totalPoints: ChallengePoints?
    public var categoryPoints: [CategoryPoints]?
    public var challenges: [ChallengeInfo]?
    public var preferences: PlayerClientPreferences?

    enum CodingKeys: String, CodingKey {
        case totalPoints = "totalPoints"
        case categoryPoints = "categoryPoints"
        case challenges = "challenges"
        case preferences = "preferences"
    }

    public init(totalPoints: ChallengePoints?, categoryPoints: [CategoryPoints]?, challenges: [ChallengeInfo]?, preferences: PlayerClientPreferences?) {
        self.totalPoints = totalPoints
        self.categoryPoints = categoryPoints
        self.challenges = challenges
        self.preferences = preferences
    }
}
