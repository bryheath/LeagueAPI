//
//  MatchObjectives.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 5/29/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchObjectives: Codable {
    public var baron: Objective
    public var champion: Objective
    public var dragon: Objective
    public var inhibitor: Objective
    public var riftHerald: Objective
    public var tower: Objective

    enum CodingKeys: String, CodingKey {
        case baron = "baron"
        case champion = "champion"
        case dragon = "dragon"
        case inhibitor = "inhibitor"
        case riftHerald = "riftHerald"
        case tower = "tower"
    }

    public init(baron: Objective, champion: Objective, dragon: Objective, inhibitor: Objective, riftHerald: Objective, tower: Objective) {
        self.baron = baron
        self.champion = champion
        self.dragon = dragon
        self.inhibitor = inhibitor
        self.riftHerald = riftHerald
        self.tower = tower
    }
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.baron = try container.decode(Objective.self, forKey: .baron)
        self.champion = try container.decode(Objective.self, forKey: .champion)
        self.dragon = try container.decode(Objective.self, forKey: .dragon)
        self.inhibitor = try container.decode(Objective.self, forKey: .inhibitor)
        self.riftHerald = try container.decode(Objective.self, forKey: .riftHerald)
        self.tower = try container.decode(Objective.self, forKey: .tower)
    }
}
