//
//  ServiceProxy.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/26/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

internal class ServiceProxy {
    
    public private(set) var region: Region
    public private(set) var platforms: [Platform]
    private var host: Endpoint

    // As of Feb 2023, most services can use SEA World Region
    // ALL - OCE has moved to SEA
    // TFT - No SEA Region at all for now
    // LOR - KR and JP have moved to SEA
    // These two variables handle these exceptions
    // Riot is actively integrating these due to Garena closing
    public var allowSouthEastAsiaWorldRegion: Bool = true
    public var allowAsiaWorldRegion: Bool = true
    
    public var hostUrl: String {
        return self.host.rawValue
    }
    
    public var worldRegion: WorldRegion {
        switch self.region {
        case .NA, .BR, .LAN, .LAS, .PBE: // PBE is not officialy on America region
            return .America
        case .KR, .JP:
            if self.allowAsiaWorldRegion {
                return .Asia
            } else {
                return .SouthEastAsia
            }
        case .EUNE, .EUW, .TR, .RU:
            return .Europe
        case .OCE:
            return .SouthEastAsia
        case .PH, .SG, .TH, .TW, .VN:
            if self.allowSouthEastAsiaWorldRegion {
                return .SouthEastAsia
            } else {
                return .America
            }
        }
    }
    
    public var worldRegionEndpoint: Endpoint {
        switch self.worldRegion {
        case .America:
            return .America
        case .Asia:
            return .Asia
        case .Europe:
            return .Europe
        case .SouthEastAsia:
            return .SouthEastAsia
        case .Esports:
            return .Esports
        }
    }
    
    public var worldRegionHostUrl: String {
        return self.worldRegionEndpoint.rawValue
    }
    
    private init(region: Region, platforms: [Platform], host: Endpoint) {
        self.region = region
        self.platforms = platforms
        self.host = host
    }
    
    public convenience init(for region: Region) {
        switch region {
        case .BR:
            self.init(region: region, platforms: [.BR1], host: .BR)
        case .EUNE:
            self.init(region: region, platforms: [.EUN1], host: .EUNE)
        case .EUW:
            self.init(region: region, platforms: [.EUW1], host: .EUW)
        case .JP:
            self.init(region: region, platforms: [.JP1], host: .JP)
        case .KR:
            self.init(region: region, platforms: [.KR], host: .KR)
        case .LAN:
            self.init(region: region, platforms: [.LA1], host: .LAN)
        case .LAS:
            self.init(region: region, platforms: [.LA2], host: .LAS)
        case .NA:
            self.init(region: region, platforms: [.NA1, .NA], host: .NA)
        case .OCE:
            self.init(region: region, platforms: [.OC1], host: .OCE)
        case .PBE:
            self.init(region: region, platforms: [.PBE1], host: .PBE)
        case .RU:
            self.init(region: region, platforms: [.RU], host: .RU)
        case .TR:
            self.init(region: region, platforms: [.TR1], host: .TR)
        case .PH:
            self.init(region: region, platforms: [.PH2], host: .PH)
        case .SG:
            self.init(region: region, platforms: [.SG2], host: .SG)
        case .TH:
            self.init(region: region, platforms: [.TH2], host: .TH)
        case .TW:
            self.init(region: region, platforms: [.TW2], host: .TW)
        case .VN:
            self.init(region: region, platforms: [.VN2], host: .VN)
        }
        
    }
    
    public convenience init(for worldRegion: WorldRegion) {
        switch worldRegion {
        case .America:
            self.init(for: .NA)
        case .Asia:
            self.init(for: .KR)
        case .Europe:
            self.init(for: .EUW)
        case .SouthEastAsia:
            self.init(for: .VN)
        case .Esports:
            self.init(for: .KR) // there is no real mapping from WorldRegion.Esports to Region
        }
    }
}
