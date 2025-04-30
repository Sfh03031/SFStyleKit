
//
//  JW_Double++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(Foundation)

import Foundation

public extension Double {
    
    /// Double -> String
    var stringValue: String { String(describing: self) }
    
}

public extension Double {
    
    /// 保留小数点后几位
    /// - Parameters:
    ///   - places: 要保留的位数
    /// - Returns: Double
    func roundTo(places: Int) -> Double {
        // pow(x, y), x为底数,y为指数,返回x的y次幂结果
        let divesor = pow(10.0, Double(places))
        return (self * divesor).rounded() / divesor
    }
    
}

#endif
