//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** definition with a Definition as additional properties */
public class ModelWithDefinitionAdditionalProperties: APIModel {

    public var name: String?

    public var additionalProperties: [String: User] = [:]

    public init(name: String? = nil) {
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decodeIfPresent(.name)

        let additionalPropertiesContainer = try decoder.container(keyedBy: StringCodingKey.self)
        var additionalProperties = try additionalPropertiesContainer.toDictionary()
        additionalProperties.removeValue(forKey: "name")
        var decodedAdditionalProperties: [String: User] = [:]
        for key in additionalProperties.keys {
            decodedAdditionalProperties[key] = try additionalPropertiesContainer.decode(StringCodingKey(string: key))
        }
        self.additionalProperties = decodedAdditionalProperties
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(name, forKey: .name)

        var additionalPropertiesContainer = encoder.container(keyedBy: StringCodingKey.self)
        for (key, value) in additionalProperties {
            try additionalPropertiesContainer.encode(value, forKey: StringCodingKey(string: key))
        }
    }

    public subscript(key: String) -> User? {
        get {
            return additionalProperties[key]
        }
        set {
            additionalProperties[key] = newValue
        }
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ModelWithDefinitionAdditionalProperties else { return false }
      guard self.name == object.name else { return false }
      guard NSDictionary(dictionary: self.additionalProperties).isEqual(to: object.additionalProperties) else { return false }
      return true
    }

    public static func == (lhs: ModelWithDefinitionAdditionalProperties, rhs: ModelWithDefinitionAdditionalProperties) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
