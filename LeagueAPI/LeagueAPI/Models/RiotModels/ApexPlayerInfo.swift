//
//  ApexPlayerInfo.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/11/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

// MARK: - ApexPlayerInfo
public class ApexPlayerInfo: Codable, CustomDebugStringConvertible {
    public var position: Int
    public var puuid: String
    public var value: Int

    enum CodingKeys: String, CodingKey {
        case position = "position"
        case puuid = "puuid"
        case value = "value"
    }

    public init(position: Int, puuid: String, value: Int) {
        self.position = position
        self.puuid = puuid
        self.value = value
    }
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.position = try container.decode(Int.self, forKey: .position)
        self.puuid = try container.decode(String.self, forKey: .puuid)
        self.value = try container.decode(Int.self, forKey: .value)
    }
    
    public var debugDescription: String {
        "position: \(self.position)\npuuid: \(self.puuid)\nvalue: \(self.value)\n"
    }
}


//public typealias ApexPlayerInfoList = [ApexPlayerInfo]
