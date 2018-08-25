//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class RouteSequence: APIModel {

    public var direction: String?

    public var isOutboundOnly: Bool?

    public var lineId: String?

    public var lineName: String?

    public var lineStrings: [String]?

    public var mode: String?

    public var orderedLineRoutes: [OrderedRoute]?

    public var stations: [MatchedStop]?

    public var stopPointSequences: [StopPointSequence]?

    public init(direction: String? = nil, isOutboundOnly: Bool? = nil, lineId: String? = nil, lineName: String? = nil, lineStrings: [String]? = nil, mode: String? = nil, orderedLineRoutes: [OrderedRoute]? = nil, stations: [MatchedStop]? = nil, stopPointSequences: [StopPointSequence]? = nil) {
        self.direction = direction
        self.isOutboundOnly = isOutboundOnly
        self.lineId = lineId
        self.lineName = lineName
        self.lineStrings = lineStrings
        self.mode = mode
        self.orderedLineRoutes = orderedLineRoutes
        self.stations = stations
        self.stopPointSequences = stopPointSequences
    }

    private enum CodingKeys: String, CodingKey {
        case direction
        case isOutboundOnly
        case lineId
        case lineName
        case lineStrings
        case mode
        case orderedLineRoutes
        case stations
        case stopPointSequences
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        direction = try container.decodeIfPresent(.direction)
        isOutboundOnly = try container.decodeIfPresent(.isOutboundOnly)
        lineId = try container.decodeIfPresent(.lineId)
        lineName = try container.decodeIfPresent(.lineName)
        lineStrings = try container.decodeArrayIfPresent(.lineStrings)
        mode = try container.decodeIfPresent(.mode)
        orderedLineRoutes = try container.decodeArrayIfPresent(.orderedLineRoutes)
        stations = try container.decodeArrayIfPresent(.stations)
        stopPointSequences = try container.decodeArrayIfPresent(.stopPointSequences)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(direction, forKey: .direction)
        try container.encodeIfPresent(isOutboundOnly, forKey: .isOutboundOnly)
        try container.encodeIfPresent(lineId, forKey: .lineId)
        try container.encodeIfPresent(lineName, forKey: .lineName)
        try container.encodeIfPresent(lineStrings, forKey: .lineStrings)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(orderedLineRoutes, forKey: .orderedLineRoutes)
        try container.encodeIfPresent(stations, forKey: .stations)
        try container.encodeIfPresent(stopPointSequences, forKey: .stopPointSequences)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? RouteSequence else { return false }
      guard self.direction == object.direction else { return false }
      guard self.isOutboundOnly == object.isOutboundOnly else { return false }
      guard self.lineId == object.lineId else { return false }
      guard self.lineName == object.lineName else { return false }
      guard self.lineStrings == object.lineStrings else { return false }
      guard self.mode == object.mode else { return false }
      guard self.orderedLineRoutes == object.orderedLineRoutes else { return false }
      guard self.stations == object.stations else { return false }
      guard self.stopPointSequences == object.stopPointSequences else { return false }
      return true
    }

    public static func == (lhs: RouteSequence, rhs: RouteSequence) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
