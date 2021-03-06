//
//  File.swift
//  
//
//  Created by Tom Knighton on 07/03/2022.
//

import Foundation

struct SearchService {
    
    static func SearchAround(lat: Double, lon: Double, filterBy: [LineMode] = [], radius: Int = 900) async -> [Point]? {
        
        do {
            var queryParams = "?radius=\(radius)"
            for lineMode in filterBy {
                queryParams += "&modesToFilterBy=\(lineMode.rawValue)"
            }
            
            let points = try await APIClient.perform(url: "Search/Around/\(lat)/\(lon)\(queryParams)", to: [ClassWrapper<PointFamily, Point>].self)
            return points?.compactMap { $0.object }
        } catch {
            GLSDKLogger.log("Error decoding results: \(error.localizedDescription)")
            return nil
        }
    }
    
    static func Search(name: String, filterBy: [LineMode] = [], includePOI: Bool = false, includeAddresses: Bool = false) async -> [Point]? {
        
        do {
            var queryParams = "?includePOI=\(includePOI)&includeAddresses=\(includeAddresses)"
            for lineMode in filterBy {
                queryParams += "&modesToFilterBy=\(lineMode.rawValue)"
            }
            
            let points = try await APIClient.perform(url: "Search/\(name)\(queryParams)", to: [ClassWrapper<PointFamily, Point>].self)
            return points?.compactMap { $0.object }
        } catch {
            GLSDKLogger.log("Error decoding results: \(error.localizedDescription)")
            return nil
        }
    }
}
