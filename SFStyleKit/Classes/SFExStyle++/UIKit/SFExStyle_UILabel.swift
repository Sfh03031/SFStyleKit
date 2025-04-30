//
//  SFExStyle_UILabel.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UILabel
public extension SFExStyle where Base: UILabel {
    
    @discardableResult
    func text(_ text: String?) -> SFExStyle {
        base.text = text
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont!) -> SFExStyle {
        base.font = font
        return self
    }
    
    @discardableResult
    func textColor(_ color: UIColor!) -> SFExStyle {
        base.textColor = color
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult
    func preferredVibrancy(_ value: UILabelVibrancy) -> SFExStyle {
        base.preferredVibrancy = value
        return self
    }
    
    @discardableResult
    func shadowColor(_ value: UIColor) -> SFExStyle {
        base.shadowColor = value
        return self
    }

    @discardableResult
    func shadowOffset(_ value: CGSize) -> SFExStyle {
        base.shadowOffset = value
        return self
    }
    
    @discardableResult
    func textAlignment(_ value: NSTextAlignment) -> SFExStyle {
        base.textAlignment = value
        return self
    }
    
    @discardableResult
    func lineBreakMode(_ value: NSLineBreakMode) -> SFExStyle {
        base.lineBreakMode = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func attributedText(_ value: NSAttributedString?) -> SFExStyle {
        base.attributedText = value
        return self
    }
    
    @discardableResult
    func highlightedTextColor(_ value: UIColor?) -> SFExStyle {
        base.highlightedTextColor = value
        return self
    }

    @discardableResult
    func isHighlighted(_ value: Bool) -> SFExStyle {
        base.isHighlighted = value
        return self
    }

    @discardableResult
    func isUserInteractionEnabled(_ value: Bool) -> SFExStyle {
        base.isUserInteractionEnabled = value
        return self
    }

    @discardableResult
    func isEnabled(_ value: Bool) -> SFExStyle {
        base.isEnabled = value
        return self
    }
    
    @discardableResult
    func numberOfLines(_ value: Int) -> SFExStyle {
        base.numberOfLines = value
        return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ value: Bool) -> SFExStyle {
        base.adjustsFontSizeToFitWidth = value
        return self
    }
    
    @discardableResult
    func baselineAdjustment(_ value: UIBaselineAdjustment) -> SFExStyle {
        base.baselineAdjustment = value
        return self
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func minimumScaleFactor(_ value: CGFloat) -> SFExStyle {
        base.minimumScaleFactor = value
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func allowsDefaultTighteningForTruncation(_ value: Bool) -> SFExStyle {
        base.allowsDefaultTighteningForTruncation = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func lineBreakStrategy(_ value: NSParagraphStyle.LineBreakStrategy) -> SFExStyle {
        base.lineBreakStrategy = value
        return self
    }

    @discardableResult
    func drawText(in rect: CGRect) -> SFExStyle {
        base.drawText(in: rect)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func preferredMaxLayoutWidth(_ value: CGFloat) -> SFExStyle {
        base.preferredMaxLayoutWidth = value
        return self
    }

    @discardableResult
    func showsExpansionTextWhenTruncated(_ value: Bool) -> SFExStyle {
        base.showsExpansionTextWhenTruncated = value
        return self
    }
        
}

#endif
