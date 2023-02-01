//
//  LOLTimelineParticipant.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/31/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public class LOLTimelineParticipant: Decodable {
    public var participantId: Int
    public var puuid: SummonerPuuid

    enum CodingKeys: String, CodingKey {
        case participantId = "participantId"
        case puuid = "puuid"
    }

    public init(participantId: Int, puuid: SummonerPuuid) {
        self.participantId = participantId
        self.puuid = puuid
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.participantId = try container.decode(Int.self, forKey: .participantId)
        self.puuid = try SummonerPuuid(container.decode(String.self, forKey: .puuid))
    }
}
