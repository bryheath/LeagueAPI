//
//  MatchPerks.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 5/29/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchPerks: Decodable {
    public var statPerks: StatPerks
    public var styles: [PerkStyle]

    enum CodingKeys: String, CodingKey {
        case statPerks = "statPerks"
        case styles = "styles"
    }

    public init(statPerks: StatPerks, styles: [PerkStyle]) {
        self.statPerks = statPerks
        self.styles = styles
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.statPerks = try container.decode(StatPerks.self, forKey: .statPerks)
        self.styles = try container.decode([PerkStyle].self, forKey: .styles)
    }
}
