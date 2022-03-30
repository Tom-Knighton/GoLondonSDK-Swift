//
// LineRoute.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct LineRoute: Codable {
    
    /// The id of the line route
    public var id: String?
    
    /// The name of the line
    public var name: String?
    
    /// The direction of the route
    public var direction: String?
    
    /// Where the route starts
    public var originationName: String?
    
    /// Where the route ends
    public var destinationName: String?

}
