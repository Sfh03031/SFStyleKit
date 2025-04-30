//
//  JW_UITextView++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(UIKit)

import UIKit

// MARK: TextView for no-paste, no-select, no-selectAll, no-cut
public class JWStaticTextView: UITextView {
    
    @IBInspectable public dynamic var perform: Bool = true
    
    override public func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        switch action {
        case #selector(paste(_:)), #selector(select(_:)), #selector(selectAll(_:)), #selector(cut(_:)):
            return perform
        default:
            return super.canPerformAction(action, withSender: sender)
        }
    }
    
}

#endif
