//
//  SFExStyle_UITextView.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/9.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
#if canImport(RxSwift) && canImport(RxCocoa)
import RxSwift
import RxCocoa
#endif

//MARK: - 系统Api支持

public extension SFExStyle where Base: UITextView {
    
    @discardableResult
    func delegate(_ delegate: UITextViewDelegate?) -> SFExStyle {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    func text(_ text: String!) -> SFExStyle {
        base.text = text
        return self
    }

    @discardableResult
    func font(_ font: UIFont!) -> SFExStyle {
        base.font = font
        return self
    }

    @discardableResult
    func textColor(_ textColor: UIColor?) -> SFExStyle {
        base.textColor = textColor
        return self
    }

    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> SFExStyle {
        base.textAlignment = textAlignment
        return self
    }

    @discardableResult
    func selectedRange(_ range: NSRange) -> SFExStyle {
        base.selectedRange = range
        return self
    }

    @discardableResult
    func isEditable(_ isEditable: Bool) -> SFExStyle {
        base.isEditable = isEditable
        return self
    }

    @discardableResult
    func isSelectable(_ isSelectable: Bool) -> SFExStyle {
        base.isSelectable = isSelectable
        return self
    }

    @discardableResult
    func dataDetectorTypes(_ types: UIDataDetectorTypes) -> SFExStyle {
        base.dataDetectorTypes = types
        return self
    }

    @discardableResult
    func allowsEditingTextAttributes(_ allows: Bool) -> SFExStyle {
        base.allowsEditingTextAttributes = allows
        return self
    }

    @discardableResult
    func attributedText(_ attributedText: NSAttributedString!) -> SFExStyle {
        base.attributedText = attributedText
        return self
    }
    
//    @discardableResult
//    func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> SFExStyle {
//        base.typingAttributes = typingAttributes
//        return self
//    }

    @discardableResult
    func scrollRangeToVisible(_ range: NSRange) -> SFExStyle {
        base.scrollRangeToVisible(range)
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

    @discardableResult
    func textContainerInset(_ textContainerInset: UIEdgeInsets) -> SFExStyle {
        base.textContainerInset = textContainerInset
        return self
    }

//    @discardableResult
//    func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]!) -> SFExStyle {
//        base.linkTextAttributes = linkTextAttributes
//        return self
//    }

    @available(iOS 13.0, *)
    @discardableResult
    func usesStandardTextScaling(_ usesStandardTextScaling: Bool) -> SFExStyle {
        base.usesStandardTextScaling = usesStandardTextScaling
        return self
    }

    @available(iOS 16.0, *)
    @discardableResult
    func isFindInteractionEnabled(_ isFindInteractionEnabled: Bool) -> SFExStyle {
        base.isFindInteractionEnabled = isFindInteractionEnabled
        return self
    }

    @available(iOS 17.0, *)
    @discardableResult
    func borderStyle(_ borderStyle: UITextView.BorderStyle) -> SFExStyle {
        base.borderStyle = borderStyle
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func interactionState(_ interactionState: Any) -> SFExStyle {
        base.interactionState = interactionState
        return self
    }

}

//MARK: - 没有复制,粘贴,选择等的输入框
public class SFNoPasteTextView: UITextView {
    
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

//MARK: - 扩展

#if canImport(RxSwift) && canImport(RxCocoa)

public extension SFExStyle where Base: UITextView {
    /// 最大字符数, 0为无限
    @discardableResult
    func maxCount(_ count: Int) -> SFExStyle {
        base.sf_maxCount = count
        return self
    }
}

public extension UITextView {
    private static let maxCountKey = UnsafeRawPointer(bitPattern:"maxCountKey".hashValue)!
    private static let maxCountBagKey = UnsafeRawPointer(bitPattern:"maxCountBagKey".hashValue)!
    
    /// 最大字符数
    var sf_maxCount: Int? {
        get {
            return objc_getAssociatedObject(self, Self.maxCountKey) as? Int
        }
        set {
            if let maxCount = newValue {
                objc_setAssociatedObject(self, Self.maxCountKey, maxCount, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                disposeBag = DisposeBag()
                if maxCount > 0 {
                    rx.textInput.text.orEmpty
                        .subscribe(onNext: {[weak self] (text) in
                            if text.count > maxCount {
                                self?.text = String(text.prefix(maxCount))
                            }
                        }).disposed(by: disposeBag)
                }
            }
        }
    }
    
    private var disposeBag: DisposeBag {
        get {
            var bag = objc_getAssociatedObject(self, Self.maxCountBagKey) as? DisposeBag
            if bag == nil {
                bag = DisposeBag()
                objc_setAssociatedObject(self, Self.maxCountBagKey, bag, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
            return bag!
        }
        set {
            objc_setAssociatedObject(self, Self.maxCountBagKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    /// 最大字符数
    @IBInspectable
    var maxCount: Int {
        get {
            return sf_maxCount ?? 0
        }
        set {
            sf_maxCount = newValue
        }
    }
}
#endif
