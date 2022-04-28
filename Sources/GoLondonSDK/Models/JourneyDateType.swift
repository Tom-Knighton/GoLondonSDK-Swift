//
// JourneyDateType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/// Whether the date is being used as an arrive at or depart at time
public enum JourneyDateType: String, Codable, CaseIterable {
    case arriveAt = "Arrive At"
    case departAt = "Depart At"
}
