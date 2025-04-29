//
//  Dictionary++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(Foundation)

import Foundation

public extension Dictionary<String, Any> {
    
    /// Filter target object elements, add optional values, return new object
    /// - Parameter item: target object
    /// - Returns: new object
    @discardableResult
    func addOptional(_ item: [String: Any?]) -> Dictionary<String, Any> {
        let keys = Array(item.keys) as [String]
        var dict = self
        for key in keys {
            if item[key] != nil {
                dict[key] = item[key]!
            }
        }
        return dict
    }
    
}

#endif
