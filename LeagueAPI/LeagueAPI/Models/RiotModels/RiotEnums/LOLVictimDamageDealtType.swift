//
//  LOLVictimDamageDealtType.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/31/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public enum LOLVictimDamageDealtType: String, Codable {
    case minion = "MINION"
    case monster = "MONSTER"
    case other = "OTHER"
    case tower = "TOWER"
}
