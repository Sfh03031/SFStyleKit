//
//  UITextField++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(UIKit)

import UIKit

// MARK: TextField for no-paste, no-select, no-selectAll, no-cut
public class JWStaticTextField: UITextField {
    
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

public extension UITextField {
    
    /// Limit input content
    /// - Parameters:
    ///   - pattern: regular expression(正则表达式)
    ///   - limitCount: can input character length
    func limitIntputWithPattern(pattern: String, _ limitCount: Int = -1) {
        // 非markedText才继续往下处理
        guard let _: UITextRange = self.markedTextRange else {
            // 当前光标位置
            let cursorPosition = self.offset(from: self.endOfDocument, to: self.selectedTextRange!.end)
            //替换后的字符串
            var str = ""
            if pattern == "" {
                str = self.text!
            } else {
                str = self.text!.regularReplace(pattern: pattern, with: "")
            }
            // 限制长度
            if limitCount >= 0, str.count > limitCount {
                str = String(str.prefix(limitCount))
            }
            self.text = str
            // 让光标停留在正确位置
            let targetPosition = self.position(from: self.endOfDocument, offset: cursorPosition)!
            self.selectedTextRange = self.textRange(from: targetPosition, to: targetPosition)
            
            return
        }
    }
    
}

#endif
