//
//  State.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/11/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public enum State: String, Codable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
    case hidden = "HIDDEN"
    case archived = "ARCHIVED"
}
