//
//  ChallengeBusiness.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/24/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

internal class ChallengeBusiness {
    
    public static func getChallenge<RiotModel: Decodable>(method: ChallengeMethod.ChallengeMethods, region: Region, key: APIKey, handler: @escaping (RiotModel?, String?) -> Void) {
        let challengeMethod: ChallengeMethod = ChallengeMethod(method: method, region: region)
        let challengeBusiness: APIBusiness = APIBusiness(key: key, method: challengeMethod)
        challengeBusiness.request() { (result, error) in
            handler(result, error)
        }
    }
}
