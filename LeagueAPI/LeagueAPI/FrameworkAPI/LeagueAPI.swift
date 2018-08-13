//
//  LeagueAPI.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/26/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class LeagueAPI {
    
    private var key: APIKey
    
    public init(APIToken: String) {
        self.key = APIKey(token: APIToken)
    }
    
    // MARK: - Champion Mastery - OK
    
    public func getChampionMasteries(by summonerId: SummonerId, on region: Region, handler: @escaping ([ChampionMastery]?, String?) -> Void) {
        ChampionMasteryBusiness.getMastery(method: .BySummonerId(id: summonerId), region: region, key: self.key) { (championMasteries, error) in
            handler(championMasteries, error)
        }
    }
    
    public func getChampionMastery(by summonerId: SummonerId, for championId: ChampionId, on region: Region, handler: @escaping (ChampionMastery?, String?) -> Void) {
        ChampionMasteryBusiness.getMastery(method: .BySummonerIdAndChampionId(summonerId: summonerId, championId: championId), region: region, key: self.key) { (championMastery, error) in
            handler(championMastery, error)
        }
    }
    
    public func getMasteryScore(for summonerId: SummonerId, on region: Region, handler: @escaping (Int?, String?) -> Void) {
        ChampionMasteryBusiness.getMastery(method: .ScoreBySummonerId(id: summonerId), region: region, key: self.key) { (masteryScore, error) in
            handler(masteryScore, error)
        }
    }
    
    // MARK: - Champion - OK
    
    public func getAllChampions(freeToPlayOnly: Bool = false, on region: Region, handler: @escaping ([Champion]?, String?) -> Void) {
        ChampionBusiness.getChampionList(method: .All(freeToPlay: freeToPlayOnly), region: region, key: self.key) { (champions, error) in
            handler(champions, error)
        }
    }
    
    public func getChampion(by championId: ChampionId, on region: Region, handler: @escaping (Champion?, String?) -> Void) {
        ChampionBusiness.getChampion(method: .ById(id: championId), region: region, key: self.key) { (champion, error) in
            handler(champion, error)
        }
    }
    
    // MARK: - Ranked - OK
    
    public func getChallengerLeague(for queue: Queue, on region: Region, handler: @escaping (League?, String?) -> Void) {
        RankedBusiness.getRanked(method: .ChallengerByQueue(queue: queue), region: region, key: self.key) { (league, error) in
            handler(league, error)
        }
    }
    
    // WARNING: Too many calls to unexisting league may result in Blacklist
    public func getLeague(by leagueId: LeagueId, on region: Region, handler: @escaping (League?, String?) -> Void) {
        RankedBusiness.getRanked(method: .LeagueById(id: leagueId), region: region, key: self.key) { (league, error) in
            handler(league, error)
        }
    }
    
    public func getMasterLeague(for queue: Queue, on region: Region, handler: @escaping (League?, String?) -> Void) {
        RankedBusiness.getRanked(method: .MasterByQueue(queue: queue), region: region, key: self.key) { (league, error) in
            handler(league, error)
        }
    }
    
    public func getRankedPositions(for summonerId: SummonerId, on region: Region, handler: @escaping ([RankedPosition]?, String?) -> Void) {
        RankedBusiness.getRanked(method: .PositionsById(id: summonerId), region: region, key: self.key) { (league, error) in
            handler(league, error)
        }
    }
    
    public func getRankedPosition(for summonerId: SummonerId, in queue: Queue, on region: Region, handler: @escaping (RankedPosition?, String?) -> Void) {
        RankedBusiness.getRankedPosition(in: queue, method: .PositionsById(id: summonerId), region: region, key: self.key) { (league, error) in
            handler(league, error)
        }
    }
    
    // MARK: - Status - OK
    
    public func getStatus(on region: Region, handler: @escaping (ServiceStatus?, String?) -> Void) {
        StatusBusiness.getStatus(method: .GetStatus, region: region, key: self.key) { (status, error) in
            handler(status, error)
        }
    }
    
    // MARK: - Match - OK
    
    public func getMatch(by gameId: GameId, on region: Region, handler: @escaping (Match?, String?) -> Void) {
        MatchBusiness.getMatch(method: .ById(id: gameId), region: region, key: self.key) { (match, error) in
            handler(match, error)
        }
    }
    
    public func getMatchList(by accountId: AccountId, on region: Region, beginTime: Int64? = nil, endTime: Int64? = nil, beginIndex: Int? = nil, endIndex: Int? = nil, championId: ChampionId? = nil, queue: Int? = nil, season: Int? = nil, handler: @escaping (MatchList?, String?) -> Void) {
        MatchBusiness.getMatch(method: .MatchesByAccountId(id: accountId, beginTime: beginTime, endTime: endTime, beginIndex: beginIndex, endIndex: endIndex, championId: championId, queue: queue, season: season), region: region, key: self.key) { (match, error) in
            handler(match, error)
        }
    }
    
    public func getMatchTimeline(by gameId: GameId, on region: Region, handler: @escaping (MatchTimeline?, String?) -> Void) {
        MatchBusiness.getMatch(method: .TimelineById(id: gameId), region: region, key: self.key) { (match, error) in
            handler(match, error)
        }
    }
    
    public func getMatchIds(by tournamentCode: TournamentCode, on region: Region, handler: @escaping ([GameId]?, String?) -> Void) {
        MatchBusiness.getMatch(method: .MatchIdsByTournamentCode(code: tournamentCode), region: region, key: self.key) { (match, error) in
            handler(match, error)
        }
    }
    
    public func getMatch(by gameId: GameId, and tournamentCode: TournamentCode, on region: Region, handler: @escaping (Match?, String?) -> Void) {
        MatchBusiness.getMatch(method: .ByIdAndTournamentCode(id: gameId, code: tournamentCode), region: region, key: self.key) { (match, error) in
            handler(match, error)
        }
    }
    
    // MARK: - Spectator - OK
    
    public func getCurrentGame(by summonerId: SummonerId, on region: Region, handler: @escaping (GameInfo?, String?) -> Void) {
        SpectatorBusiness.getCurrentGame(method: .BySummonerId(id: summonerId), region: region, key: self.key) { (game, error) in
            handler(game, error)
        }
    }
    
    public func getFeaturedGames(on region: Region, handler: @escaping (FeaturedGames?, String?) -> Void) {
        SpectatorBusiness.getCurrentGame(method: .FeaturedGames, region: region, key: self.key) { (game, error) in
            handler(game, error)
        }
    }
    
    // MARK: - Summoner - OK
    
    public func getSummonerByAccountId(accountId: AccountId, on region: Region, handler: @escaping (Summoner?, String?) -> Void) {
        SummonerBusiness.getSummoner(method: .ByAccountId(id: accountId), region: region, key: self.key) { (summoner, error) in
            handler(summoner, error)
        }
    }
    
    public func getSummoner(by name: String, on region: Region, handler: @escaping (Summoner?, String?) -> Void) {
        SummonerBusiness.getSummoner(method: .ByName(name: name), region: region, key: self.key) { (summoner, error) in
            handler(summoner, error)
        }
    }
    
    // WARNING: Too many calls to unexisting league may result in Blacklist
    public func getSummoner(by summonerId: SummonerId, on region: Region, handler: @escaping (Summoner?, String?) -> Void) {
        SummonerBusiness.getSummoner(method: .ById(id: summonerId), region: region, key: self.key) { (summoner, error) in
            handler(summoner, error)
        }
    }
    
    // MARK: - Third Party Code
    
    public func getThirdPartyVerificationCode(by summonerId: SummonerId, on region: Region, handler: @escaping (String?, String?) -> Void) {
        ThirdPartyCodeBusiness.getVerificationCode(method: .ById(id: summonerId), region: region, key: self.key) { (code, error) in
            handler(code, error)
        }
    }
    
    // MARK: - Tournament Stub - OK
    
    public func newTournament(hostRegion: TournamentRegion, named name: String, hostUrl: String, amount: Int? = nil, info: TournamentInfo, handler: @escaping ((ProviderId, TournamentId, [TournamentCode])?, String?) -> Void) {
        createTournamentProvider(hostRegion: hostRegion, hostUrl: hostUrl) { (providerId, error) in
            guard let providerId = providerId, error == nil else { handler(nil, error); return }
            self.createTournament(providerId: providerId, named: name) { (tournamentId, error) in
                guard let tournamentId = tournamentId, error == nil else { handler(nil, error); return }
                self.createTournamentCode(tournamentId: tournamentId, amount: amount, info: info) { (codes, error) in
                    handler((providerId, tournamentId, codes ?? []), error)
                }
            }
        }
    }
    
    public func createTournamentCode(tournamentId: TournamentId, amount: Int? = nil, info: TournamentInfo, handler: @escaping ([TournamentCode]?, String?) -> Void) {
        TournamentStubBusiness.manageTournament(method: .CreateCodes(amount: amount, tournamentId: tournamentId, info: info), key: self.key) { (codes, error) in
            handler(codes, error)
        }
    }
    
    public func getTournamentEvents(tournamentCode: TournamentCode, handler: @escaping ([TournamentEvent]?, String?) -> Void) {
        TournamentStubBusiness.getTournamentEvents(method: .EventsByTournamentCode(code: tournamentCode), key: self.key) { (events, error) in
            handler(events, error)
        }
    }
    
    public func createTournamentProvider(hostRegion: TournamentRegion, hostUrl: String, handler: @escaping (ProviderId?, String?) -> Void) {
        TournamentStubBusiness.manageTournament(method: .CreateProvider(callbackUrl: hostUrl, region: hostRegion), key: self.key) { (providerId, error) in
            handler(providerId, error)
        }
    }
    
    public func createTournament(providerId: ProviderId, named name: String, handler: @escaping (TournamentId?, String?) -> Void) {
        TournamentStubBusiness.manageTournament(method: .CreateTournament(name: name, providerId: providerId), key: self.key) { (tournamentId, error) in
            handler(tournamentId, error)
        }
    }
}
