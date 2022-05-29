//
//  Match.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class Match: Decodable {
    
    public var metadata: MatchMetadata
    public var info: MatchInfo
    
    enum CodingKeys: String, CodingKey {
        case metadata = "metadata"
        case info = "info"
    }
    
    public init(metadata: MatchMetadata, info: MatchInfo) {
        self.metadata = metadata
        self.info = info
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.metadata = try MatchMetadata(container.decode(MatchMetadata.self, forKey: .metadata))
        self.info = try MatchInfo(container.decode(MatchInfo.self, forKey: .info))
    }
}
