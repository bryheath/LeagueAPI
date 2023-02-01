//
//  CategoryPoints.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/11/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

// MARK: - CategoryPoints
public class CategoryPoints: Codable, CustomDebugStringConvertible {
    public var veterancy: ChallengePoints
    public var teamwork: ChallengePoints
    public var imagination: ChallengePoints
    public var collection: ChallengePoints
    public var expertise: ChallengePoints

    enum CodingKeys: String, CodingKey {
        case veterancy = "VETERANCY"
        case teamwork = "TEAMWORK"
        case imagination = "IMAGINATION"
        case collection = "COLLECTION"
        case expertise = "EXPERTISE"
    }

    public init(veterancy: ChallengePoints, teamwork: ChallengePoints, imagination: ChallengePoints, collection: ChallengePoints, expertise: ChallengePoints) {
        self.veterancy = veterancy
        self.teamwork = teamwork
        self.imagination = imagination
        self.collection = collection
        self.expertise = expertise
    }
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.veterancy = try container.decode(ChallengePoints.self, forKey: .veterancy)
        self.teamwork = try container.decode(ChallengePoints.self, forKey: .teamwork)
        self.imagination = try container.decode(ChallengePoints.self, forKey: .imagination)
        self.collection = try container.decode(ChallengePoints.self, forKey: .collection)
        self.expertise = try container.decode(ChallengePoints.self, forKey: .expertise)
    }
    
    public var debugDescription: String {
        "veterancy:\n\(self.veterancy)\nteamwork:\n\(self.teamwork)\nimagination:\n\(self.imagination)\ncollection:\n\(self.collection)\nexpertise:\n\(self.expertise)\n"
    }
}
