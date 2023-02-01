// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let thresholds = try? newJSONDecoder().decode(Thresholds.self, from: jsonData)

import Foundation


// MARK: - Thresholds
public class Thresholds: Codable, CustomDebugStringConvertible {
    public var challenger: Double?
    public var silver: Double?
    public var platinum: Double?
    public var none: Double?
    public var iron: Double?
    public var gold: Double?
    public var master: Double?
    public var diamond: Double?
    public var bronze: Double?
    public var grandmaster: Double?
    
    enum CodingKeys: String, CodingKey {
        case challenger = "CHALLENGER"
        case silver = "SILVER"
        case platinum = "PLATINUM"
        case none = "NONE"
        case iron = "IRON"
        case gold = "GOLD"
        case master = "MASTER"
        case diamond = "DIAMOND"
        case bronze = "BRONZE"
        case grandmaster = "GRANDMASTER"
    }
    
    public init(challenger: Double?, silver: Double?, platinum: Double?, none: Double?, iron: Double?, gold: Double?, master: Double?, diamond: Double?, bronze: Double?, grandmaster: Double?) {
        self.challenger = challenger
        self.silver = silver
        self.platinum = platinum
        self.none = none
        self.iron = iron
        self.gold = gold
        self.master = master
        self.diamond = diamond
        self.bronze = bronze
        self.grandmaster = grandmaster
    }
    public var debugDescription: String {
         "none: \(self.none ?? -1)\n iron: \(self.iron ?? -1)\n bronze: \(self.bronze ?? -1)\n silver: \(self.silver ?? -1)\n gold: \(self.gold ?? -1)\n platnium: \(self.platinum ?? -1)\n diamond: \(self.diamond ?? -1)\n master: \(self.master ?? -1)\n grandmaster: \(self.grandmaster ?? -1)\n challenger: \(self.challenger ?? -1)\n"
    }
}
