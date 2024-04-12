//
//  SFExStyle_Array.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation

public extension Array {
    /// 数组去重，传入数组元素
    ///
    /// 泛型E，约束类型为Equatable协议，
    /// 数组的完整写法为 Array<Element>，其中 Element 是这个数组中唯一允许存在的数据类型。也可以使用像 [Element]这样的简单语法
    func filterDuplicates<E: Equatable>(_ filter: (Element) -> E) -> [Element] {
        var result = [Element]()
        self.forEach { (e) in
            let key = filter(e)
            let keys = result.map{filter($0)}
            guard !keys.contains(key) else { return }
            result.append(e)
        }
        return result
    }
}
