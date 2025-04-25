//
//  SFExStyle_Float.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(Foundation)

import Foundation

public extension SFExStyle where Base == Float {
    /// Float -> String
    var stringValue: String { String(describing: base) }
}

#endif
