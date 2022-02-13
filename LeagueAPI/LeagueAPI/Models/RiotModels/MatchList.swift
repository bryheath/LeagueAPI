//
//  MatchList.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchList: Decodable {
    
    public var matches: [String]
    
    enum CodingKeys: String, CodingKey {
        case matches = "matches"
    }
    
    public init(totalGames: Int, startIndex: Int, endIndex: Int, matches: [String]) {
        self.matches = matches
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.matches = try container.decode([String].self, forKey: .matches)
    }
}
