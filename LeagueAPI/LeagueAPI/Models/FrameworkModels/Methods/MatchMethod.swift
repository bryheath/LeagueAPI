//
//  MatchMethod.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

internal class MatchMethod: LeagueMethod {
    
    public enum MatchMethods: CustomStringConvertible {
        case ById(id: LOLMatchId)
        case MatchesByAccountId(id: SummonerPuuid, startTime: Datetime?, endTime: Datetime?, queue: QueueMode?, type: GameType?, start: Int?, count: Int?)
        case TimelineById(id: LOLMatchId)
        case MatchIdsByTournamentCode(code: TournamentCode)
        case ByIdAndTournamentCode(id: LOLMatchId, code: TournamentCode)
        
        public var description: String {
            var methodDescription: String {
                switch self {
                case .ById:
                    return "ById"
                case .MatchesByAccountId:
                    return "MatchesByAccountId"
                case .TimelineById:
                    return "TimelineById"
                case .MatchIdsByTournamentCode:
                    return "MatchIdsByTournamentCode"
                case .ByIdAndTournamentCode:
                    return "ByIdAndTournamentCode"
                }
            }
            return "\(String(describing: MatchMethods.self))-\(methodDescription)"
        }
    }
    
    private var service: ServiceProxy
    private var method: MatchMethods
    
    public init(method: MatchMethods, region: Region) {
        self.method = method
        self.service = ServiceProxy(for: region)
    }
    
    func getAccessMethod() -> RESTRequester.AccessMethod {
        return .GET
    }
    
    func getMethodSignature() -> String {
        return self.method.description
    }
    
    func getMethodUrl() -> String {
        let entrypoint: String = self.service.worldRegionHostUrl
        let commonPath: String = "https://\(entrypoint)\(MethodPaths.Match.rawValue)/\("v5")"
        switch self.method {
        case .ById(let id):
            return "\(commonPath)/matches/\(id)"
        case .MatchesByAccountId(let id, let startTime, let endTime, let queue, let type, _, let count):
            var queryParameters: [String : Any] = [:]
            if let startTime = startTime, let timestamp = startTime.intervalFrom1970() { queryParameters["startTime"] = Long(timestamp) }
            if let endTime = endTime, let timestamp = endTime.intervalFrom1970() { queryParameters["endTime"] = Long(timestamp) }
            if let queue = queue { queryParameters["queue"] = queue.mode.rawValue }
            if let type = type { queryParameters["type"] = type.type.rawValue }
            if let count = count { queryParameters["count"] = Int(count) }
            var queryParametersUrl: String = queryParameters.count == 0 ? "" : "?"
            for parameter in queryParameters {
                queryParametersUrl += "\(queryParametersUrl == "" ? "" : "&")\(parameter.key)=\(parameter.value)"
            }
            return "\(commonPath)/matches/by-puuid/\(id)\("/ids\(queryParametersUrl)")"
            
        case .TimelineById(let id):
            print("\(commonPath)/matches/\(id)/timeline")
            return "\(commonPath)/matches/\(id)/timeline"
        case .MatchIdsByTournamentCode(let code):
            return "\(commonPath)/matches/by-tournament-code/\(code)/ids"
        case .ByIdAndTournamentCode(let id, let code):
            return "\(commonPath)/matches/\(id)/by-tournament-code/\(code)"
        }
    }
    
    func getMethodBody() -> Data? {
        return nil
    }

    func getCustomHeaders() -> [String: String] {
        return [:]
    }
    
    func getWarningMessage() -> String? {
        return nil
    }
}
