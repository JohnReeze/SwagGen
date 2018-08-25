//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AdditionalPropertiesClass: APIModel {

    public var mapOfMapProperty: [String: [String: String]]?

    public var mapProperty: [String: String]?

    public init(mapOfMapProperty: [String: [String: String]]? = nil, mapProperty: [String: String]? = nil) {
        self.mapOfMapProperty = mapOfMapProperty
        self.mapProperty = mapProperty
    }

    private enum CodingKeys: String, CodingKey {
        case mapOfMapProperty = "map_of_map_property"
        case mapProperty = "map_property"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        mapOfMapProperty = try container.decodeIfPresent(.mapOfMapProperty)
        mapProperty = try container.decodeIfPresent(.mapProperty)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(mapOfMapProperty, forKey: .mapOfMapProperty)
        try container.encodeIfPresent(mapProperty, forKey: .mapProperty)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AdditionalPropertiesClass else { return false }
      guard self.mapOfMapProperty == object.mapOfMapProperty else { return false }
      guard self.mapProperty == object.mapProperty else { return false }
      return true
    }

    public static func == (lhs: AdditionalPropertiesClass, rhs: AdditionalPropertiesClass) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
