//
//  MatchTimeline.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchTimeline: Decodable { // Match v5
    
    public var metadata: LOLMatchMetadata
    public var info: MatchTimelineInfo
    
    enum CodingKeys: String, CodingKey {
        case metadata = "metadata"
        case info = "info"
    }
    
    public init(metadata: LOLMatchMetadata, info: MatchTimelineInfo) {
        self.metadata = metadata
        self.info = info
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.metadata = try container.decode(LOLMatchMetadata.self, forKey: .metadata)
        self.info = try container.decode(MatchTimelineInfo.self, forKey: .info)
    }
}
