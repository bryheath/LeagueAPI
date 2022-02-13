//
//  MatchList.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchList: Decodable {
    
    public var matches = [String]()
    
    public required init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        while !container.isAtEnd {
            let entry = try container.decode(String.self)
            matches.append(entry)
        }
        self.matches = try container.decode([String].self)
    }
}
