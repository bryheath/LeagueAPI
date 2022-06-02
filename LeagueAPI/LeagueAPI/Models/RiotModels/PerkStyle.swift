//
//  PerkStyle.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 5/29/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class PerkStyle: Codable {
    public var styleDescription: String
    public var selections: [PerkStyleSelection]
    public var style: Int

    enum CodingKeys: String, CodingKey {
        case styleDescription = "styleDescription"
        case selections = "selections"
        case style = "style"
    }

    public init(styleDescription: String, selections: [PerkStyleSelection], style: Int) {
        self.styleDescription = styleDescription
        self.selections = selections
        self.style = style
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.styleDescription = try container.decode(String.self, forKey: .styleDescription)
        self.selections = try container.decode([PerkStyleSelection].self, forKey: .selections)
        self.style = try container.decode(Int.self, forKey: .style)
    }
}

