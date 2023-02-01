//
//  ChallengeConfigInfo.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/11/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public typealias ChallengeConfigInfoList = [ChallengeConfigInfo]


// MARK: - ChallengeConfigInfo
public class ChallengeConfigInfo: Codable, CustomDebugStringConvertible {
    public var id: Int
    public var localizedNames: [String: LocalizedName]
    public var state: State
    public var leaderboard: Bool
    public var thresholds: Thresholds
    public var tracking: Tracking?
    public var startTimeStamp: Int?
    public var endTimestamp: Int?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case localizedNames = "localizedNames"
        case state = "state"
        case leaderboard = "leaderboard"
        case thresholds = "thresholds"
        case tracking = "tracking"
        case startTimeStamp = "startTimeStamp"
        case endTimestamp = "endTimestamp"
    }

    public init(id: Int, localizedNames: [String: LocalizedName], state: State, leaderboard: Bool, thresholds: Thresholds, tracking: Tracking?, startTimeStamp: Int?, endTimestamp: Int?) {
        self.id = id
        self.localizedNames = localizedNames
        self.state = state
        self.leaderboard = leaderboard
        self.thresholds = thresholds
        self.tracking = tracking
        self.startTimeStamp = startTimeStamp
        self.endTimestamp = endTimestamp
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.localizedNames = try container.decode(Dictionary.self, forKey: .localizedNames)
        self.state = try container.decode(State.self, forKey: .state)
        self.leaderboard = try container.decode(Bool.self, forKey: .leaderboard)
        self.thresholds = try container.decode(Thresholds.self, forKey: .thresholds)
        self.tracking = try? container.decode(Tracking.self, forKey: .tracking)
        self.startTimeStamp = try? container.decode(Int.self, forKey: .startTimeStamp)
        self.endTimestamp = try? container.decode(Int.self, forKey: .endTimestamp)
    }
    
    
    public var debugDescription: String {
        "id: \(self.id)\nlocalizedNames: \n\(self.localizedNames)\nstate: \(self.state)\nleaderboard: \(self.leaderboard)\nthresholds: \n\(self.thresholds)\n"
    }
}
