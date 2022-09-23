//
//  PerkStyle.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 5/29/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class PerkStyle: Decodable {
    public var styleDescription: String
    public var selections: [PerkStyleSelection]
    public var style: RunePathId

    enum CodingKeys: String, CodingKey {
        case styleDescription = "description"
        case selections = "selections"
        case style = "style"
    }

    public init(styleDescription: String, selections: [PerkStyleSelection], style: RunePathId) {
        self.styleDescription = styleDescription
        self.selections = selections
        self.style = style
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.styleDescription = try container.decode(String.self, forKey: .styleDescription)
        self.selections = try container.decode([PerkStyleSelection].self, forKey: .selections)
        self.style = try RunePathId(container.decode(Long.self, forKey: .style))
    }
}

