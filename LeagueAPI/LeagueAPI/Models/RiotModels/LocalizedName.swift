// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let localizedName = try? newJSONDecoder().decode(LocalizedName.self, from: jsonData)

import Foundation

// MARK: - LocalizedName
public class LocalizedName: Codable {
    public var description: String?
    public var name: String?
    public var shortDescription: String?

    enum CodingKeys: String, CodingKey {
        case description = "description"
        case name = "name"
        case shortDescription = "shortDescription"
    }

    public init(description: String?, name: String?, shortDescription: String?) {
        self.description = description
        self.name = name
        self.shortDescription = shortDescription
    }
}
