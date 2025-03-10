//
//  LOLMatchFrame.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/31/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public class LOLMatchFrame: Codable {
    public var events: [LOLMatchEvent]
    public var participantFrames: [String: LOLParticipantFrame]
    public var timestamp: Int

    enum CodingKeys: String, CodingKey {
        case events = "events"
        case participantFrames = "participantFrames"
        case timestamp = "timestamp"
    }

    public init(events: [LOLMatchEvent], participantFrames: [String: LOLParticipantFrame], timestamp: Int) {
        self.events = events
        self.participantFrames = participantFrames
        self.timestamp = timestamp
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.events = try container.decode([LOLMatchEvent].self, forKey: .events)
        self.participantFrames = try container.decode(Dictionary.self, forKey: .participantFrames)
        self.timestamp = try container.decode(Int.self, forKey: .timestamp)
    }
}
