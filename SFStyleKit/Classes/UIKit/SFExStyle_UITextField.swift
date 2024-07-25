//
//  SFExStyle_UITextField.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/9.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

// MARK: 没有复制,粘贴,选择等的输入框

public class SFNoPasteTextField: UITextField {
    
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

// MARK: 系统Api支持

public extension SFExStyle where Base: UITextField {
    
    @discardableResult
    func text(_ text: String?) -> SFExStyle {
        base.text = text
        return self
    }

    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> SFExStyle {
        base.attributedText = attributedText
        return self
    }

    @discardableResult
    func textColor(_ textColor: UIColor?) -> SFExStyle {
        base.textColor = textColor
        return self
    }

    @discardableResult
    func font(_ font: UIFont?) -> SFExStyle {
        base.font = font
        return self
    }

    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> SFExStyle {
        base.textAlignment = textAlignment
        return self
    }

    @discardableResult
    func borderStyle(_ borderStyle: UITextField.BorderStyle) -> SFExStyle {
        base.borderStyle = borderStyle
        return self
    }

    @discardableResult
    func defaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]) -> SFExStyle {
        base.defaultTextAttributes = defaultTextAttributes
        return self
    }

    @discardableResult
    func placeholder(_ placeholder: String?) -> SFExStyle {
        base.placeholder = placeholder
        return self
    }

    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> SFExStyle {
        base.attributedPlaceholder = attributedPlaceholder
        return self
    }

    @discardableResult
    func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> SFExStyle {
        base.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }

    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> SFExStyle {
        base.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }

    @discardableResult
    func minimumFontSize(_ minimumFontSize: CGFloat) -> SFExStyle {
        base.minimumFontSize = minimumFontSize
        return self
    }

    @discardableResult
    func delegate(_ delegate: UITextFieldDelegate?) -> SFExStyle {
        base.delegate = delegate
        return self
    }

    @discardableResult
    func background(_ background: UIImage?) -> SFExStyle {
        base.background = background
        return self
    }

    @discardableResult
    func disabledBackground(_ disabledBackground: UIImage?) -> SFExStyle {
        base.disabledBackground = disabledBackground
        return self
    }

    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> SFExStyle {
        base.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }

    @discardableResult
    func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?) -> SFExStyle {
        base.typingAttributes = typingAttributes
        return self
    }

    @discardableResult
    func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> SFExStyle {
        base.clearButtonMode = clearButtonMode
        return self
    }

    @discardableResult
    func leftView(_ leftView: UIView?) -> SFExStyle {
        base.leftView = leftView
        return self
    }

    @discardableResult
    func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> SFExStyle {
        base.leftViewMode = leftViewMode
        return self
    }

    @discardableResult
    func rightView(_ rightView: UIView?) -> SFExStyle {
        base.rightView = rightView
        return self
    }

    @discardableResult
    func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> SFExStyle {
        base.rightViewMode = rightViewMode
        return self
    }

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
    func inputView(_ inputView: UIView?) -> SFExStyle {
        base.inputView = inputView
        return self
    }

    @discardableResult
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> SFExStyle {
        base.inputAccessoryView = inputAccessoryView
        return self
    }

    @discardableResult
    func clearsOnInsertion(_ clearsOnInsertion: Bool) -> SFExStyle {
        base.clearsOnInsertion = clearsOnInsertion
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func interactionState(_ interactionState: Any) -> SFExStyle {
        base.interactionState = interactionState
        return self
    }

}
