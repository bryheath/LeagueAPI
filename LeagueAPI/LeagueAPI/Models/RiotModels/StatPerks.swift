//
//  StatPerks.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 5/29/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class StatPerks: Codable {
    public var defense: Int
    public var flex: Int
    public var offense: Int

    enum CodingKeys: String, CodingKey {
        case defense = "defense"
        case flex = "flex"
        case offense = "offense"
    }

    public init(defense: Int, flex: Int, offense: Int) {
        self.defense = defense
        self.flex = flex
        self.offense = offense
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.defense = try container.decode(Int.self, forKey: .defense)
        self.flex = try container.decode(Int.self, forKey: .flex)
        self.offense = try container.decode(Int.self, forKey: .offense)
    }
}
