//
//  Team.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 5/18/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class Team: Decodable {
    
    public var bans: [Ban]
    public var objectives: MatchObjectives
    public var teamId: Int
    public var win: Bool
    
    enum CodingKeys: String, CodingKey {
        case bans = "bans"
        case objectives = "objectives"
        case teamId = "teamId"
        case win = "win"
    }
    public init(bans: [Ban], objectives: MatchObjectives, teamId: Int, win: Bool) {
        self.bans = bans
        self.objectives = objectives
        self.teamId = teamId
        self.win = win
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.bans = try container.decode([Ban].self, forKey: .bans)
        self.objectives = try container.decode(MatchObjectives.self, forKey: .objectives)
        self.teamId = try container.decode(Int.self, forKey: .teamId)
        self.win = try container.decode(Bool.self, forKey: .win)
    }
}
