//
//  LOLEventType.swift
//  LeagueAPI
//
//  Created by Bryan Heath on 1/31/23.
//  Copyright © 2023 Antoine Clop. All rights reserved.
//

import Foundation

public enum LOLEventType: String, Codable {
    case buildingKill = "BUILDING_KILL"
    case championKill = "CHAMPION_KILL"
    case championSpecialKill = "CHAMPION_SPECIAL_KILL"
    case dragonSoulGiven = "DRAGON_SOUL_GIVEN"
    case eliteMonsterKill = "ELITE_MONSTER_KILL"
    case gameEnd = "GAME_END"
    case itemDestroyed = "ITEM_DESTROYED"
    case itemPurchased = "ITEM_PURCHASED"
    case itemSold = "ITEM_SOLD"
    case itemUndo = "ITEM_UNDO"
    case levelUp = "LEVEL_UP"
    case objectiveBountyPrestart = "OBJECTIVE_BOUNTY_PRESTART"
    case pauseEnd = "PAUSE_END"
    case skillLevelUp = "SKILL_LEVEL_UP"
    case turretPlateDestroyed = "TURRET_PLATE_DESTROYED"
    case wardKill = "WARD_KILL"
    case wardPlaced = "WARD_PLACED"
}
