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
}
