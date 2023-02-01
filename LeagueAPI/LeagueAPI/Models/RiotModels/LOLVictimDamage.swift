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

    public init(basic: Bool, magicDamage: Int, name: String, participantId: Int, physicalDamage: Int, spellName: String, spellSlot: Int, trueDamage: Int, type: LOLVictimDamageDealtType) {
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
}
