//
//  SFExStyle_UILabel.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 系统Api支持

public extension SFExStyle where Base: UILabel {
    
    @discardableResult
    func bgColor(_ color: UIColor?) -> SFExStyle {
        base.backgroundColor = color
        return self
    }
    
    @discardableResult
    func text(_ text: String) -> SFExStyle {
        base.text = text
        return self
    }
    
    @discardableResult
    func textColor(_ color: UIColor?) -> SFExStyle {
        base.textColor = color
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont?) -> SFExStyle {
        base.font = font
        return self
    }
    
    @discardableResult
    func lines(_ numberOfLines: Int) -> SFExStyle {
        base.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    func alignment(_ textAlignment: NSTextAlignment) -> SFExStyle {
        base.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    func line(_ breakMode: NSLineBreakMode) -> SFExStyle {
        base.lineBreakMode = breakMode
        return self
    }
    
    @discardableResult
    func shadowColor(_ shadowColor: UIColor) -> SFExStyle {
        base.shadowColor = shadowColor
        return self
    }

    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> SFExStyle {
        base.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> SFExStyle {
        base.attributedText = attributedText
        return self
    }

    @discardableResult
    func highlightedTextColor(_ highlightedTextColor: UIColor) -> SFExStyle {
        base.highlightedTextColor = highlightedTextColor
        return self
    }

    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> SFExStyle {
        base.isHighlighted = isHighlighted
        return self
    }

    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> SFExStyle {
        base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }

    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> SFExStyle {
        base.isEnabled = isEnabled
        return self
    }

    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> SFExStyle {
        base.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }

    @discardableResult
    func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> SFExStyle {
        base.baselineAdjustment = baselineAdjustment
        return self
    }

    @discardableResult
    func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> SFExStyle {
        base.minimumScaleFactor = minimumScaleFactor
        return self
    }

    @discardableResult
    func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> SFExStyle {
        base.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        return self
    }

    @discardableResult
    func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> SFExStyle {
        base.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }
    
    
}

//MARK: - 扩展

public extension SFExStyle where Base: UILabel {
    
    /// label添加中划线
    ///
    /// - Parameters:
    ///   - text: 内容
    ///   - value: value 越大,划线越粗
    func centerLine(_ text: String, value: Int = 2) {
        let attStr = NSMutableAttributedString(string: text)
        attStr.addAttribute(NSAttributedString.Key.strikethroughStyle, value: value, range: NSMakeRange(0, attStr.length))
        base.attributedText = attStr
    }
}

public extension UILabel {
    
    /// 便利构造方法
    convenience init(frame: CGRect = CGRectZero,
                     bgColor: UIColor = .clear,
                     text: String = "",
                     textColor: UIColor = .hex_222222,
                     font: UIFont = UIFont.systemFont(ofSize: 14.0),
                     aligment: NSTextAlignment = .natural,
                     lines: Int = 1,
                     radius: CGFloat = 0) {
        // 便利构造方法必须依赖于指定构造方法
        self.init()
        
        self.frame = frame
        self.backgroundColor = bgColor
        self.text = text
        self.textColor = textColor
        self.font = font
        self.textAlignment = aligment
        self.numberOfLines = lines
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = radius > 0
    }
    
}
