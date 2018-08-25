//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LineStatus: APIModel {

    public var created: DateTime?

    public var disruption: Disruption?

    public var id: Int?

    public var lineId: String?

    public var modified: DateTime?

    public var reason: String?

    public var statusSeverity: Int?

    public var statusSeverityDescription: String?

    public var validityPeriods: [ValidityPeriod]?

    public init(created: DateTime? = nil, disruption: Disruption? = nil, id: Int? = nil, lineId: String? = nil, modified: DateTime? = nil, reason: String? = nil, statusSeverity: Int? = nil, statusSeverityDescription: String? = nil, validityPeriods: [ValidityPeriod]? = nil) {
        self.created = created
        self.disruption = disruption
        self.id = id
        self.lineId = lineId
        self.modified = modified
        self.reason = reason
        self.statusSeverity = statusSeverity
        self.statusSeverityDescription = statusSeverityDescription
        self.validityPeriods = validityPeriods
    }

    private enum CodingKeys: String, CodingKey {
        case created
        case disruption
        case id
        case lineId
        case modified
        case reason
        case statusSeverity
        case statusSeverityDescription
        case validityPeriods
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        created = try container.decodeIfPresent(.created)
        disruption = try container.decodeIfPresent(.disruption)
        id = try container.decodeIfPresent(.id)
        lineId = try container.decodeIfPresent(.lineId)
        modified = try container.decodeIfPresent(.modified)
        reason = try container.decodeIfPresent(.reason)
        statusSeverity = try container.decodeIfPresent(.statusSeverity)
        statusSeverityDescription = try container.decodeIfPresent(.statusSeverityDescription)
        validityPeriods = try container.decodeArrayIfPresent(.validityPeriods)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(disruption, forKey: .disruption)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(lineId, forKey: .lineId)
        try container.encodeIfPresent(modified, forKey: .modified)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(statusSeverity, forKey: .statusSeverity)
        try container.encodeIfPresent(statusSeverityDescription, forKey: .statusSeverityDescription)
        try container.encodeIfPresent(validityPeriods, forKey: .validityPeriods)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LineStatus else { return false }
      guard self.created == object.created else { return false }
      guard self.disruption == object.disruption else { return false }
      guard self.id == object.id else { return false }
      guard self.lineId == object.lineId else { return false }
      guard self.modified == object.modified else { return false }
      guard self.reason == object.reason else { return false }
      guard self.statusSeverity == object.statusSeverity else { return false }
      guard self.statusSeverityDescription == object.statusSeverityDescription else { return false }
      guard self.validityPeriods == object.validityPeriods else { return false }
      return true
    }

    public static func == (lhs: LineStatus, rhs: LineStatus) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
