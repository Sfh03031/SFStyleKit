//
//  SFExStyle_UILabel.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: support SFExStyle for system Api of UILabel
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

#endif
