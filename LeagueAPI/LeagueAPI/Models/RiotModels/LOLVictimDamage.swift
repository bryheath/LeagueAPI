//
//  LOLVictimDamage.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/31/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public class LOLVictimDamage: Codable {
    public var basic: Bool
    public var magicDamage: Int
    public var name: String?
    public var participantId: Int
    public var physicalDamage: Int
    public var spellName: String
    public var spellSlot: Int
    public var trueDamage: Int
    public var type: LOLVictimDamageDealtType

    enum CodingKeys: String, CodingKey {
        case basic = "basic"
        case magicDamage = "magicDamage"
        case name = "name"
        case participantId = "participantId"
        case physicalDamage = "physicalDamage"
        case spellName = "spellName"
        case spellSlot = "spellSlot"
        case trueDamage = "trueDamage"
        case type = "type"
    }

    public init(basic: Bool, magicDamage: Int, name: String?, participantId: Int, physicalDamage: Int, spellName: String, spellSlot: Int, trueDamage: Int, type: LOLVictimDamageDealtType) {
        self.basic = basic
        self.magicDamage = magicDamage
        self.name = name
        self.participantId = participantId
        self.physicalDamage = physicalDamage
        self.spellName = spellName
        self.spellSlot = spellSlot
        self.trueDamage = trueDamage
        self.type = type
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.basic = try container.decode(Bool.self, forKey: .basic)
        self.magicDamage = try container.decode(Int.self, forKey: .magicDamage)
        self.name = try? container.decode(String.self, forKey: .name)
        self.participantId = try container.decode(Int.self, forKey: .participantId)
        self.physicalDamage = try container.decode(Int.self, forKey: .physicalDamage)
        self.spellName = try container.decode(String.self, forKey: .spellName)
        self.spellSlot = try container.decode(Int.self, forKey: .spellSlot)
        self.trueDamage = try container.decode(Int.self, forKey: .trueDamage)
        self.type = try container.decode(LOLVictimDamageDealtType.self, forKey: .type)
    }
}
