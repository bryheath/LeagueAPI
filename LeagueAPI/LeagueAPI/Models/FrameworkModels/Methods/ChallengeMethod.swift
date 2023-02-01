//
//  ChallengeMethod.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/24/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

internal class ChallengeMethod: LeagueMethod {

    public enum ChallengeMethods: CustomStringConvertible {
//        case BySummonerId(id: SummonerId)
//        case BySummonerIdAndChampionId(summonerId: SummonerId, championId: ChampionId)
//        case ScoreBySummonerId(id: SummonerId)
//
//        public var description: String {
//            var methodDescription: String {
//                switch self {
//                case .BySummonerId:
//                    return "BySummonerId"
//                case .BySummonerIdAndChampionId:
//                    return "BySummonerIdAndChampionId"
//                case .ScoreBySummonerId:
//                    return "ScoreBySummonerId"
//                }
//            }
//            return "\(String(describing: ChampionMasteryMethods.self))-\(methodDescription)"
//        }
        case AllConfig
        case AllPercentiles
        case ByChallengeId(id: ChallengeId)
        case ByChallengeIdAndLevel(id: ChallengeId, level: Level, limit: Int?)
        case PercentilesByChallengeId(id: ChallengeId)
        case BySummonerId(id: SummonerPuuid)
        
        public var description: String {
            var methodDescription: String {
                switch self {
                case .AllConfig:
                    return "AllConfig"
                case .AllPercentiles:
                    return "AllPercentiles"
                case .ByChallengeId:
                    return "ByChallengeId"
                case .ByChallengeIdAndLevel:
                    return "ByChallengeIdAndLevel"
                case .PercentilesByChallengeId:
                    return "PercentilesByChallengeId"
                case .BySummonerId:
                    return "BySummonerId"
                }
            }
            return "\(String(describing: ChallengeMethods.self))-\(methodDescription)"
        }
    }
    
    private var service: ServiceProxy
    private var method: ChallengeMethods
    
    public init(method: ChallengeMethods, region: Region) {
        self.method = method
        self.service = ServiceProxy(for: region)
    }
    
    public func getAccessMethod() -> RESTRequester.AccessMethod {
        return .GET
    }
    
    public func getMethodSignature() -> String {
        return self.method.description
    }
    
    public func getMethodUrl() -> String {
        let entrypoint: String = self.service.hostUrl
        let commonPath: String = "https://\(entrypoint)\(MethodPaths.Challenges.rawValue)/\(Version.LOL_CHALLENGE_API)"
        
        
        switch self.method {
            
        case .AllConfig:
            return "\(commonPath)/challenges/config"
        case .AllPercentiles:
            return "\(commonPath)/challenges/percentiles"
        case .ByChallengeId(let id):
            return "\(commonPath)/challenges/\(id)/config"
        case .ByChallengeIdAndLevel(let id, let level, let limit):
            if let limit = limit {
                return "\(commonPath)/challenges/\(id)/leaderboards/by-level/\(level.rawValue)?limit=\(limit)"
            } else {
                return "\(commonPath)/challenges/\(id)/leaderboards/by-level/\(level.rawValue)"
            }
        case .PercentilesByChallengeId(let id):
            return "\(commonPath)/challenges/\(id)/percentiles"
        case .BySummonerId(let id):
            return "\(commonPath)/player-data/\(id)"
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
