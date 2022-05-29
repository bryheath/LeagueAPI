//
//  MatchMetadata.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 1/15/21
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchMetadata: Decodable {
    
    public var dataVersion: String
    public var matchId: String
    public var participants: [String]
    
    enum CodingKeys: String, CodingKey {
        //case seasonId = "seasonId"
        case dataVersion = "dataVersion"
        case matchId = "matchId"
        case participants = "participants"
    }
    public init(dataVersion: String, matchId: String, participants: [String]) {
        self.dataVersion = dataVersion
        self.matchId = matchId
        self.participants = participants
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.dataVersion = try container.decode(String.self, forKey: .dataVersion)
        self.matchId = try container.decode(String.self, forKey: .matchId)
        self.participants = try container.decode([String].self, forKey: .participants)
    }
}
