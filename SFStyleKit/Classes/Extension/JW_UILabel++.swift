//
//  UILabel++.swift
//  Pods
//
//  Created by sfh on 2025/4/25.
//

#if canImport(UIKit)

import UIKit

public extension UILabel {
    
    /// convenience init(便利构造方法)
    /// - Parameters:
    ///   - frame: frame, default = `1`
    ///   - bgColor: backgroundColor, default = `.clear`
    ///   - text: text, default = nil
    ///   - textColor: textColor, default = `#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)`
    ///   - font: font, default = `UIFont.systemFont(ofSize: 14.0)`
    ///   - aligment: textAlignment, default = `.left`
    ///   - lines: numberOfLines, default = `1`
    convenience init(frame: CGRect = CGRectZero, bgColor: UIColor = .clear, text: String? = nil, textColor: UIColor = #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), font: UIFont = UIFont.systemFont(ofSize: 14.0), aligment: NSTextAlignment = .left, lines: Int = 1) {
        
        // convenience init depends on init (便利构造方法必须依赖于指定构造方法)
        self.init()
        
        self.frame = frame
        self.backgroundColor = bgColor
        self.text = text
        self.textColor = textColor
        self.font = font
        self.textAlignment = aligment
        self.numberOfLines = lines
    }
    
    /// add centerLine
    /// - Parameters:
    ///   - text: info of UILabel
    ///   - value: default = `2`, the larger the value, the thicker the line
    func centerLine(_ text: String, value: Int = 2) {
        let attStr = NSMutableAttributedString(string: text)
        attStr.addAttribute(NSAttributedString.Key.strikethroughStyle, value: value, range: NSMakeRange(0, attStr.length))
        self.attributedText = attStr
    }
    
}

#endif
