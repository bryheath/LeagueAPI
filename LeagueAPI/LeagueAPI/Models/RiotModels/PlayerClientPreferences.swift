//
//  PlayerClientPreferences.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/11/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public class PlayerClientPreferences: Codable, CustomDebugStringConvertible {
    public var bannerAccent: String
    public var title: String
    public var challengeIds: [Int]

    enum CodingKeys: String, CodingKey {
        case bannerAccent = "bannerAccent"
        case title = "title"
        case challengeIds = "challengeIds"
    }

    public init(bannerAccent: String, title: String, challengeIds: [Int]) {
        self.bannerAccent = bannerAccent
        self.title = title
        self.challengeIds = challengeIds
    }
    public var debugDescription: String {
        "bannerAccent: \(String(describing: bannerAccent)), title: \(String(describing: title)), challengeIds: \(String(describing: challengeIds))"
    }
}
