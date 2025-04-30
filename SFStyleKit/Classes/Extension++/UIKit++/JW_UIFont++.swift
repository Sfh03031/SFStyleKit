//
//  JW_UIFont++.swift
//  Pods
//
//  Created by sfh on 2025/4/29.
//

#if canImport(UIKit)

import UIKit

public extension UIFont {
    
    func bold() -> UIFont {
        return withTraits(.traitBold)
    }
    
    func italic() -> UIFont {
        return withTraits(.traitItalic)
    }
    
    func withTraits(_ traits: UIFontDescriptor.SymbolicTraits) -> UIFont {
        guard let descriptor = self.fontDescriptor.withSymbolicTraits(traits) else {
            return self
        }
        return UIFont(descriptor: descriptor, size: 0)
    }
    
}

#endif
