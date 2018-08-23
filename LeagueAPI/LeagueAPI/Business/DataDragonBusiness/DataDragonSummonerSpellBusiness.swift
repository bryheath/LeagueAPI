//
//  DataDragonSummonerSpellBusiness.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 8/23/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

internal class DataDragonSummonerSpellBusiness {
    
    public static func getSummonerSpells(completion: @escaping ([SummonerSpell]?, String?) -> Void) {
        DataDragonRequester.instance.getSummonerSpells() { (summonerSpellFile, error) in
            completion(summonerSpellFile?.summonerSpells, error)
        }
    }
    
    public static func getSummonerSpell(by id: SummonerSpellId, completion: @escaping (SummonerSpell?, String?) -> Void) {
        DataDragonRequester.instance.getSummonerSpells() { (summonerSpellFile, error) in
            completion(summonerSpellFile?.summonerSpells.filter { $0.id == id }.first, error)
        }
    }
}
