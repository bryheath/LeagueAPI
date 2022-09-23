//
//  MatchInfo.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 5/18/22.
//  Copyright © 2022 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchInfo: Decodable { // Match v5 - 'InfoDto'
    
    public var gameCreation: Long
    public var gameDuration: Long
    public var gameEndTimestamp: Long
    public var gameId: GameId
    public var gameMode: GameMode
    public var gameName: String
    public var gameStartTimestamp: Long
    public var gameType: GameType
    public var gameVersion: String
    public var mapId: Int
    public var participants: [MatchParticipant]
    public var platformId: String
    public var queueId: Int
    public var teams: [Team]
    public var tournamentCode: String
    
    enum CodingKeys: String, CodingKey {
        case gameCreation = "gameCreation"
        case gameDuration = "gameDuration"
        case gameEndTimestamp = "gameEndTimestamp"
        case gameId = "gameId"
        case gameMode = "gameMode"
        case gameName = "gameName"
        case gameStartTimestamp = "gameStartTimestamp"
        case gameType = "gameType"
        case gameVersion = "gameVersion"
        case mapId = "mapId"
        case participants = "participants"
        case platformId = "platformId"
        case queueId = "queueId"
        case teams = "teams"
        case tournamentCode = "tournamentCode"
    }
    public init(gameCreation: Long, gameDuration: Long, gameEndTimestamp: Long, gameId: GameId, gameMode: GameMode, gameName: String, gameStartTimestamp: Long, gameType: GameType, gameVersion: String, mapId: Int, participants: [MatchParticipant], platformId: String, queueId: Int, teams: [Team], tournamentCode: String) {
        
        self.gameCreation = gameCreation
        self.gameDuration = gameDuration
        self.gameEndTimestamp = gameEndTimestamp
        self.gameId = gameId
        self.gameMode = gameMode
        self.gameName = gameName
        self.gameStartTimestamp = gameStartTimestamp
        self.gameType = gameType
        self.gameVersion = gameVersion
        self.mapId = mapId
        self.participants = participants
        self.platformId = platformId
        self.queueId = queueId
        self.teams = teams
        self.tournamentCode = tournamentCode
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.gameCreation = try container.decode(Long.self, forKey: .gameCreation)
        self.gameDuration = try container.decode(Long.self, forKey: .gameDuration)
        self.gameEndTimestamp = try container.decode(Long.self, forKey: .gameEndTimestamp)
        self.gameId = try GameId(container.decode(Long.self, forKey: .gameId))
        self.gameMode = try GameMode(container.decode(String.self, forKey: .gameMode))
        self.gameName = try container.decode(String.self, forKey: .gameName)
        self.gameStartTimestamp = try container.decode(Long.self, forKey: .gameStartTimestamp)
        self.gameType = try GameType(container.decode(String.self, forKey: .gameType))
        self.gameVersion = try container.decode(String.self, forKey: .gameVersion)
        self.mapId = try container.decode(Int.self, forKey: .mapId)
        self.participants = try container.decode([MatchParticipant].self, forKey: .participants)
        self.platformId = try container.decode(String.self, forKey: .platformId)
        self.queueId = try container.decode(Int.self, forKey: .queueId)
        self.teams = try container.decode([Team].self, forKey: .teams)
        self.tournamentCode = try container.decode(String.self, forKey: .tournamentCode)
    }
}
