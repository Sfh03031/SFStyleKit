//
//  SFExStyle_UITextField.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/9.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UITextField
public extension SFExStyle where Base: UITextField {
    
    @discardableResult
    func text(_ text: String?) -> SFExStyle {
        base.text = text
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> SFExStyle {
        base.attributedText = attributedText
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
    func textAlignment(_ value: NSTextAlignment) -> SFExStyle {
        base.textAlignment = value
        return self
    }

    @discardableResult
    func borderStyle(_ value: UITextField.BorderStyle) -> SFExStyle {
        base.borderStyle = value
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func defaultTextAttributes(_ value: [NSAttributedString.Key : Any]) -> SFExStyle {
        base.defaultTextAttributes = value
        return self
    }

    @discardableResult
    func placeholder(_ value: String?) -> SFExStyle {
        base.placeholder = value
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func attributedPlaceholder(_ value: NSAttributedString?) -> SFExStyle {
        base.attributedPlaceholder = value
        return self
    }

    @discardableResult
    func clearsOnBeginEditing(_ value: Bool) -> SFExStyle {
        base.clearsOnBeginEditing = value
        return self
    }

    @discardableResult
    func adjustsFontSizeToFitWidth(_ value: Bool) -> SFExStyle {
        base.adjustsFontSizeToFitWidth = value
        return self
    }

    @discardableResult
    func minimumFontSize(_ value: CGFloat) -> SFExStyle {
        base.minimumFontSize = value
        return self
    }

    @discardableResult
    func delegate(_ delegate: (any UITextFieldDelegate)?) -> SFExStyle {
        base.delegate = delegate
        return self
    }

    @discardableResult
    func background(_ image: UIImage?) -> SFExStyle {
        base.background = image
        return self
    }

    @discardableResult
    func disabledBackground(_ image: UIImage?) -> SFExStyle {
        base.disabledBackground = image
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
    func typingAttributes(_ value: [NSAttributedString.Key : Any]?) -> SFExStyle {
        base.typingAttributes = value
        return self
    }

    @discardableResult
    func clearButtonMode(_ value: UITextField.ViewMode) -> SFExStyle {
        base.clearButtonMode = value
        return self
    }

    @discardableResult
    func leftView(_ view: UIView?) -> SFExStyle {
        base.leftView = view
        return self
    }

    @discardableResult
    func leftViewMode(_ mode: UITextField.ViewMode) -> SFExStyle {
        base.leftViewMode = mode
        return self
    }

    @discardableResult
    func rightView(_ view: UIView?) -> SFExStyle {
        base.rightView = view
        return self
    }

    @discardableResult
    func rightViewMode(_ mode: UITextField.ViewMode) -> SFExStyle {
        base.rightViewMode = mode
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This method is no longer called.")
    @discardableResult
    func drawText(in rect: CGRect) -> SFExStyle {
        base.drawText(in: rect)
        return self
    }

    @discardableResult
    func drawPlaceholder(in rect: CGRect) -> SFExStyle {
        base.drawPlaceholder(in: rect)
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
    
    @available(iOS 15.0, *)
    @discardableResult
    func interactionState(_ value: Any) -> SFExStyle {
        base.interactionState = value
        return self
    }

}

#endif
