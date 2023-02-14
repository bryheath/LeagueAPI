//
//  MatchTimelineInfo.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 6/2/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchTimelineInfo: Decodable { // Match v5
    
    public var frameInterval: Int
    public var frames: [LOLMatchFrame]
    public var gameId: Int
    public var participants: [LOLTimelineParticipant]

    enum CodingKeys: String, CodingKey {
        case frameInterval = "frameInterval"
        case frames = "frames"
        case gameId = "gameId"
        case participants = "participants"
    }

    public init(frameInterval: Int, frames: [LOLMatchFrame], gameId: Int, participants: [LOLTimelineParticipant]) {
        self.frameInterval = frameInterval
        self.frames = frames
        self.gameId = gameId
        self.participants = participants
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.frameInterval = try container.decode(Int.self, forKey: .frameInterval)
        self.frames = try container.decode([LOLMatchFrame].self, forKey: .frames)
        self.gameId = try container.decode(Int.self, forKey: .gameId)
        self.participants = try container.decode([LOLTimelineParticipant].self, forKey: .participants)
    }
    
   
}
