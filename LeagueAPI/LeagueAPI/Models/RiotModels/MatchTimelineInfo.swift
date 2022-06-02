//
//  MatchTimelineInfo.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 6/2/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchTimelineInfo: Decodable { // Match v5
    
//    public var metadata: LOLMatchMetadata
//    public var info: MatchTimelineInfo
//    
//    enum CodingKeys: String, CodingKey {
//        case frameInterval = "frameInterval"
//        case frames = "frames"
//    }
//    
//    public init(frameInterval: Duration, frames: [MatchFrame]) {
//        self.frameInterval = frameInterval
//        self.frames = frames
//    }
//    
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        let durationSec: Long = try container.decode(Long.self, forKey: .frameInterval)
//        self.frameInterval = Duration(seconds: Double(durationSec))
//        self.frames = try container.decode([MatchFrame].self, forKey: .frames)
//    }
}
