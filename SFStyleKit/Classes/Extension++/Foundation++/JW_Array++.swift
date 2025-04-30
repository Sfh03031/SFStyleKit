//
//  JW_Array++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(Foundation)

import Foundation

public extension Array {
    
    /// Remove duplicate elements from the array
    /// - Parameter filter: array element
    /// - Returns: new Array
    func filterDuplicates<E: Equatable>(_ filter: (Element) -> E) -> [Element] {
        var result = [Element]()
        self.forEach { (e) in
            let key = filter(e)
            let keys = result.map { filter($0) }
            guard !keys.contains(key) else { return }
            result.append(e)
        }
        return result
    }
    
    /// Example:
    /// let arr: Array<String> = ["1", "2", "3", "4", "5", "1", "6", "1", "7"]
    /// print(arr.filterDuplicates({ $0 }))
    /// log: `["1", "2", "3", "4", "5", "6", "7"]`
    
}

#endif
