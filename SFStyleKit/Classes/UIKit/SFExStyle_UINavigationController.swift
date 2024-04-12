//
//  SFExStyle_UINavigationController.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

public extension SFExStyle where Base: UINavigationController {
    
    @discardableResult
    func removeCenterVC() -> SFExStyle {
        if let first = base.viewControllers.first,
           let last = base.viewControllers.last {
            base.viewControllers = [first, last]
        }
        return self
    }
}
