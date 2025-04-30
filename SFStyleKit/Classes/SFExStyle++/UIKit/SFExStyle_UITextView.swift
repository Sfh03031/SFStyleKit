//
//  SFExStyle_UITextView.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/9.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UITextView
public extension SFExStyle where Base: UITextView {
    
    @discardableResult
    func delegate(_ delegate: (any UITextViewDelegate)?) -> SFExStyle {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    func text(_ text: String!) -> SFExStyle {
        base.text = text
        return self
    }

    @discardableResult
    func font(_ font: UIFont?) -> SFExStyle {
        base.font = font
        return self
    }

    @discardableResult
    func textColor(_ color: UIColor?) -> SFExStyle {
        base.textColor = color
        return self
    }

    @discardableResult
    func textAlignment(_ value: NSTextAlignment) -> SFExStyle {
        base.textAlignment = value
        return self
    }

    @discardableResult
    func selectedRange(_ range: NSRange) -> SFExStyle {
        base.selectedRange = range
        return self
    }

    @discardableResult
    func isEditable(_ value: Bool) -> SFExStyle {
        base.isEditable = value
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func isSelectable(_ value: Bool) -> SFExStyle {
        base.isSelectable = value
        return self
    }

    @available(iOS 3.0, *)
    @discardableResult
    func dataDetectorTypes(_ types: UIDataDetectorTypes) -> SFExStyle {
        base.dataDetectorTypes = types
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func allowsEditingTextAttributes(_ value: Bool) -> SFExStyle {
        base.allowsEditingTextAttributes = value
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func attributedText(_ value: NSAttributedString!) -> SFExStyle {
        base.attributedText = value
        return self
    }
    
    @discardableResult
    func typingAttributes(_ value: [NSAttributedString.Key : Any]) -> SFExStyle {
        base.typingAttributes = value
        return self
    }

    @discardableResult
    func scrollRangeToVisible(_ range: NSRange) -> SFExStyle {
        base.scrollRangeToVisible(range)
        return self
    }

    @discardableResult
    func inputView(_ view: UIView?) -> SFExStyle {
        base.inputView = view
        return self
    }

    @discardableResult
    func inputAccessoryView(_ view: UIView?) -> SFExStyle {
        base.inputAccessoryView = view
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func clearsOnInsertion(_ value: Bool) -> SFExStyle {
        base.clearsOnInsertion = value
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func textContainerInset(_ inset: UIEdgeInsets) -> SFExStyle {
        base.textContainerInset = inset
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func linkTextAttributes(_ value: [NSAttributedString.Key : Any]!) -> SFExStyle {
        base.linkTextAttributes = value
        return self
    }

    @available(iOS 13.0, *)
    @discardableResult
    func usesStandardTextScaling(_ value: Bool) -> SFExStyle {
        base.usesStandardTextScaling = value
        return self
    }

    @available(iOS 16.0, *)
    @discardableResult
    func isFindInteractionEnabled(_ value: Bool) -> SFExStyle {
        base.isFindInteractionEnabled = value
        return self
    }

    @available(iOS 17.0, *)
    @discardableResult
    func borderStyle(_ style: UITextView.BorderStyle) -> SFExStyle {
        base.borderStyle = style
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult
    func textHighlightAttributes(_ value: [NSAttributedString.Key : Any]!) -> SFExStyle {
        base.textHighlightAttributes = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult
    func drawTextHighlightBackground(for textRange: NSTextRange, origin: CGPoint) -> SFExStyle {
        base.drawTextHighlightBackground(for: textRange, origin: origin)
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult
    func writingToolsBehavior(_ value: UIWritingToolsBehavior) -> SFExStyle {
        base.writingToolsBehavior = value
        return self
    }

    @available(iOS 18.0, *)
    @discardableResult
    func allowedWritingToolsResultOptions(_ value: UIWritingToolsResultOptions) -> SFExStyle {
        base.allowedWritingToolsResultOptions = value
        return self
    }

    @available(iOS 18.0, *)
    @discardableResult
    func textFormattingConfiguration(_ value: UITextFormattingViewController.Configuration?) -> SFExStyle {
        base.textFormattingConfiguration = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func interactionState(_ value: Any) -> SFExStyle {
        base.interactionState = value
        return self
    }

}

#endif
