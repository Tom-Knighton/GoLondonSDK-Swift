//
// JourneyLeg.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct JourneyLeg: Codable {

    public var instruction: JourneyLegInstruction?
    public var departureTime: Date?
    public var arrivalTime: Date?
    public var departurePoint: StopPoint?
    public var arrivalPoint: StopPoint?
    public var path: JourneyLegPath?
    public var routeOptions: [JourneyLegRouteOption]?
    public var mode: JourneyMode?
    public var disruptions: [Disruption]?
    public var isDisrupted: Bool?
    public var hasFixedLocations: Bool?

}
