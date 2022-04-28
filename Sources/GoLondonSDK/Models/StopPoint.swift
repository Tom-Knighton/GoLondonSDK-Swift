//
// StopPoint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/// An object representing a station, or bus stop, in the world.
public class StopPoint: Point {

    /// The ICs Id of the Stop Point
    public var icsId: String?
    
    /// The zone the Stop Point belongs to, i.e. '2' or '2/3'
    public var zone: String?
    
    /// The unique Id of the Stop Point
    public var id: String?
    
    /// The name of the station, should be used if commonName is nil
    public var name: String?
    
    /// The common name of the station, should be used if name is nil
    public var commonName: String?
    
    /// An array of Line modes operating at this Stop Point
    public var modes: [LineMode]?
    
    /// An array of LineModeGroups  (each LineMode an the line identifiers for each mode) operating at this StopPoint - when searching by name this only returns tube entries
    public var lineModeGroups: [LineModeGroup]?
    
    /// Any StopPoints that are child points to this one
    public var children: [StopPoint]?
    
    /// An array of additional properties TfL holds on the StopPoint
    public var properties: [StopPointProperty]?
    
    /// An array of strings representing the Ids of the child Stop Points, for convenience
    public var childStationIds: [String]?
    
    /// Bus Stops only: An indicator containing the full bus stop name i.e. 'Stop F' or just 'Stop' or '->W'
    public var indicator: String?
    
    /// Bus Stops only: The letter of the Bus Stop, i.e. 'F' or '->W', can be nil if indicator is just 'Stop'
    public var stopLetter: String?
    
    public required init(from decoder: Decoder) throws {
        self.icsId = try decoder.container(keyedBy: CodingKeys.self).decode(String?.self, forKey: .icsId)
        self.zone = try decoder.container(keyedBy: CodingKeys.self).decode(String?.self, forKey: .zone)
        self.id = try decoder.container(keyedBy: CodingKeys.self).decode(String?.self, forKey: .id)
        self.name = try decoder.container(keyedBy: CodingKeys.self).decode(String?.self, forKey: .name)
        self.commonName = try decoder.container(keyedBy: CodingKeys.self).decode(String?.self, forKey: .commonName)
        self.lineModeGroups = try decoder.container(keyedBy: CodingKeys.self).decode([LineModeGroup]?.self, forKey: .lineModeGroups)
        self.modes = try decoder.container(keyedBy: CodingKeys.self).decode([LineMode]?.self, forKey: .modes)
        self.children = try decoder.container(keyedBy: CodingKeys.self).decode([StopPoint]?.self, forKey: .children)
        self.properties = try decoder.container(keyedBy: CodingKeys.self).decode([StopPointProperty]?.self, forKey: .properties)
        self.childStationIds = try decoder.container(keyedBy: CodingKeys.self).decode([String]?.self, forKey: .childStationIds)
        self.indicator = try decoder.container(keyedBy: CodingKeys.self).decode(String?.self, forKey: .indicator)
        self.stopLetter = try decoder.container(keyedBy: CodingKeys.self).decode(String?.self, forKey: .stopLetter)
        
        try super.init(from: decoder)
    }
    
    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.icsId, forKey: .icsId)
        try container.encode(self.zone, forKey: .zone)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.commonName, forKey: .commonName)
        try container.encode(self.lineModeGroups, forKey: .lineModeGroups)
        try container.encode(self.modes, forKey: .modes)
        try container.encode(self.children, forKey: .children)
        try container.encode(self.properties, forKey: .properties)
        try container.encode(self.childStationIds, forKey: .childStationIds)
        try container.encode(self.indicator, forKey: .indicator)
        try container.encode(self.stopLetter, forKey: .stopLetter)
    }
    
    enum CodingKeys: String, CodingKey {
        case icsId, modes, zone, id, name, commonName, lineModeGroups, children, properties, childStationIds, indicator, stopLetter
    }
}
