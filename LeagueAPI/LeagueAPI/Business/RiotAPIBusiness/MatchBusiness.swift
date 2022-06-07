//
//  MatchBusiness.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

internal class MatchBusiness {
    
    public static func getMatch<RiotModel: Decodable>(method: MatchMethod.MatchMethods, region: Region, key: APIKey, handler: @escaping (RiotModel?, String?) -> Void) {
        checkMethodParameters(method: method)
        let matchMethod: MatchMethod = MatchMethod(method: method, region: region)
        let matchBusiness: APIBusiness = APIBusiness(key: key, method: matchMethod)
        matchBusiness.request() { (result, error) in
            handler(result, error)
        }
    }
    
    private static func checkMethodParameters(method: MatchMethod.MatchMethods) {
        switch method {
        case .ById, .ByIdAndTournamentCode, .MatchIdsByTournamentCode, .TimelineById:
            return
        case .MatchesByAccountId(_, let startTime, let endTime, _, _, _, _):
            if let endTime = endTime {
                if let startTime = startTime {
                    if startTime >= endTime {
                        Logger.warning("getMatchList parameter endTime must be greater than beginTime (Here startTime=\(startTime) and endTime=\(endTime). Call will result in BadRequest(400) from Riot's API")
                    }
                }
                else {
                    Logger.warning("getMatchList parameter endTime was specified without beginTime. They will both be ignored by Riot's API")
                }
            }
        }
    }
}
