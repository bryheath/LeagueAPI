//
//  Objective.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 5/29/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class Objective: Codable {
    public var first: Bool
    public var kills: Int

    enum CodingKeys: String, CodingKey {
        case first = "first"
        case kills = "kills"
    }

    public init(first: Bool, kills: Int) {
        self.first = first
        self.kills = kills
    }
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.first = try container.decode(Bool.self, forKey: .first)
        self.kills = try container.decode(Int.self, forKey: .kills)
    }
}
