//
//  ProfileIconData.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 8/17/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

internal class ProfileIconData: Decodable {
    
    public var id: ProfileIconId = ProfileIconId(0)
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
    }
    
    public init(id: ProfileIconId) {
        self.id = id
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        do {
            self.id = try ProfileIconId(Int(container.decode(Int.self, forKey: .id)))
        } catch {
//            print("ERRROOOOOOORRR")
            do {
                self.id = try ProfileIconId(Int(container.decode(String.self, forKey: .id))!)
                // Tecent Pack on SEA server uses Strings for profile icon ids (~25 icons)
            } catch {
                print("ERRROOOOOOORRR")
            }
        }
    }
}
