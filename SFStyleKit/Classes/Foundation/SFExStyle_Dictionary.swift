//
//  SFExStyle_Dictionary.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation

public extension SFExStyle where Base == Dictionary<String, Any> {
    /// 添加可选值
    @discardableResult
    func addOptional(_ item: [String: Any?]) -> Base {
        let keys = Array(item.keys) as [String]
        var dict = base
        for key in keys {
            if item[key] != nil {
                dict[key] = item[key]!
            }
        }
        return dict
    }
}
