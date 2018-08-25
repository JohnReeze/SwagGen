//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class GeoCodeSearchMatch: APIModel {

    /** A string describing the formatted address of the place. Adds additional context to the place's Name. */
    public var address: String?

    public var id: String?

    public var lat: Double?

    public var lon: Double?

    public var name: String?

    /** The type of the place e.g. "street_address" */
    public var types: [String]?

    public var url: String?

    public init(address: String? = nil, id: String? = nil, lat: Double? = nil, lon: Double? = nil, name: String? = nil, types: [String]? = nil, url: String? = nil) {
        self.address = address
        self.id = id
        self.lat = lat
        self.lon = lon
        self.name = name
        self.types = types
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case address
        case id
        case lat
        case lon
        case name
        case types
        case url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        address = try container.decodeIfPresent(.address)
        id = try container.decodeIfPresent(.id)
        lat = try container.decodeIfPresent(.lat)
        lon = try container.decodeIfPresent(.lon)
        name = try container.decodeIfPresent(.name)
        types = try container.decodeArrayIfPresent(.types)
        url = try container.decodeIfPresent(.url)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lat, forKey: .lat)
        try container.encodeIfPresent(lon, forKey: .lon)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(types, forKey: .types)
        try container.encodeIfPresent(url, forKey: .url)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GeoCodeSearchMatch else { return false }
      guard self.address == object.address else { return false }
      guard self.id == object.id else { return false }
      guard self.lat == object.lat else { return false }
      guard self.lon == object.lon else { return false }
      guard self.name == object.name else { return false }
      guard self.types == object.types else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: GeoCodeSearchMatch, rhs: GeoCodeSearchMatch) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
