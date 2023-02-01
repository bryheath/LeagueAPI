//
//  LOLWardType.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/31/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public enum LOLWardType: String, Codable {
    case controlWard = "CONTROL_WARD"
    case sightWard = "SIGHT_WARD"
    case undefinedWard = "UNDEFINED"
    case yellowTrinket = "YELLOW_TRINKET"
}
