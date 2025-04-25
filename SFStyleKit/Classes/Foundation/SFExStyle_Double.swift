//
//  SFExStyle_Double.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(Foundation)

import Foundation

public extension SFExStyle where Base == Double {
    /// Double -> String
    var stringValue: String { String(describing: base) }
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
