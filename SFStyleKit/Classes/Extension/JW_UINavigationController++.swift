//
//  UINavigationController++.swift
//  Pods
//
//  Created by sfh on 2025/4/25.
//

#if canImport(UIKit)

import UIKit

public extension UINavigationController {
    
    func removeCenterVC() {
        if self.viewControllers.count > 2 {
            if let first = self.viewControllers.first,
               let last = self.viewControllers.last {
                self.viewControllers = [first, last]
            }
        }
    }
    
}

#endif
