//
// LineStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/// The current status of a Line and any disruptions affecting it
public struct LineStatus: Codable {
    
    /// The id of the line status
    public var id: String?
    
    /// The id of the line
    public var lineId: String?
    
    /// The status severity of the disruption, i.e. 10 = Good service, anything else is usually some form of closure
    public var statusSeverity: Int?
    
    /// The description of the status i.e. 'Good Service' or 'Part Closure'
    public var statusSeverityDescription: String?
    
    /// The reason, if any, for the status
    public var reason: String?
    
    /// The date the status was created, usually as the start of the day or disruption
    public var created: Date?
    
    /// The length of time the status is valid for
    public var validityPeriods: [LineStatusValidityPeriod]?
    
    /// The disruption, if any, attached to the status
    public var disruption: Disruption?

}
