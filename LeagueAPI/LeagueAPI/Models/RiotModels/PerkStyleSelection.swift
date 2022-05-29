//
//  PerkStyleSelection.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 5/29/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation
public class PerkStyleSelection: Codable {
    public var perk: Int
    public var var1: Int
    public var var2: Int
    public var var3: Int

    enum CodingKeys: String, CodingKey {
        case perk = "perk"
        case var1 = "var1"
        case var2 = "var2"
        case var3 = "var3"
    }

    public init(perk: Int, var1: Int, var2: Int, var3: Int) {
        self.perk = perk
        self.var1 = var1
        self.var2 = var2
        self.var3 = var3
    }
}
