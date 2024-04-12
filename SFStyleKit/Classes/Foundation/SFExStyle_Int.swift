//
//  SFExStyle_Int.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation

public extension SFExStyle where Base == Int {
    /// Int -> String
    var stringValue: String { String(describing: base) }
}
