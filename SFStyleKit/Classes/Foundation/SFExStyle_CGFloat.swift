//
//  SFExStyle_CGFloat.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation

public extension SFExStyle where Base == CGFloat {
    /// CGFloat -> String
    var stringValue: String { String(describing: base) }
}
