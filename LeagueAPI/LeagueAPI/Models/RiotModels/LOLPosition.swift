//
//  LOLPosition.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/31/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public class LOLPosition: Codable {
    public var x: Int
    public var y: Int

    enum CodingKeys: String, CodingKey {
        case x = "x"
        case y = "y"
    }

    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.x = try container.decode(Int.self, forKey: .x)
        self.y = try container.decode(Int.self, forKey: .y)
    }
    
}
