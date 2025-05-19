//
//  JW_UIEdgeInsets++.swift
//  Pods
//
//  Created by sfh on 2025/5/15.
//

#if canImport(UIKit)

import UIKit

public extension UIEdgeInsets {
    
    init(all: CGFloat) {
        self.init(top: all, left: all, bottom: all, right: all)
    }
}

#endif
