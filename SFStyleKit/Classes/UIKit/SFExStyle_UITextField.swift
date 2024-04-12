//
//  SFExStyle_UITextField.swift
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

//    @discardableResult
//    func defaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]) -> SFExStyle {
//        base.defaultTextAttributes = defaultTextAttributes
//        return self
//    }

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

//    @discardableResult
//    func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?) -> SFExStyle {
//        base.typingAttributes = typingAttributes
//        return self
//    }

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


//MARK: - 没有复制,粘贴,选择等的输入框
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

//MARK: - 扩展
#if canImport(RxSwift) && canImport(RxCocoa)

public extension SFExStyle where Base: UITextField {
    /// 最大字符数, 0为不限
    @discardableResult
    func maxCount(_ count: Int) -> SFExStyle {
        base.sf_maxCount = count
        return self
    }
    
    /// 小数点后可以输入几位, -1为不限
    @discardableResult
    func pointCount(_ count: Int) -> SFExStyle {
        base.sf_pointCount = count
        return self
    }
}


public extension UITextField {
    private static let maxCountKey = UnsafeRawPointer(bitPattern:"maxCountKey".hashValue)!
    private static let maxCountBagKey = UnsafeRawPointer(bitPattern:"maxCountBagKey".hashValue)!
    
    /// 最大字符数, 0为不限
    var sf_maxCount: Int? {
        get {
            return objc_getAssociatedObject(self, UITextField.maxCountKey) as? Int
        }
        set {
            if let maxCount = newValue {
                objc_setAssociatedObject(self, UITextField.maxCountKey, maxCount, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
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
            var bag = objc_getAssociatedObject(self, UITextField.maxCountBagKey) as? DisposeBag
            if bag == nil {
                bag = DisposeBag()
                objc_setAssociatedObject(self, UITextField.maxCountBagKey, bag, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
            return bag!
        }
        set {
            objc_setAssociatedObject(self, UITextField.maxCountBagKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    /// 最大字符数, 0为不限
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


public extension UITextField {
    
    private static let pointCountKey = UnsafeRawPointer(bitPattern:"pointCountKey".hashValue)!
    private static let pointCountBagKey = UnsafeRawPointer(bitPattern:"pointCountBagKey".hashValue)!
    
    /// 小数点后可以输入几位, -1为不限
    var sf_pointCount: Int? {
        get {
            return objc_getAssociatedObject(self, Self.pointCountKey) as? Int
        }
        set {
            if let pointCount = newValue {
                objc_setAssociatedObject(self, Self.pointCountKey, pointCount, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                pointDisposeBag = DisposeBag()
                if pointCount >= 0 {
                    rx.textInput.text.orEmpty
                        .subscribe(onNext: {[weak self] (text) in
                            self?.checkPoint(text)
                        }).disposed(by: pointDisposeBag)
                }
            }
        }
    }
    
    private var pointDisposeBag: DisposeBag {
        get {
            var bag = objc_getAssociatedObject(self, Self.pointCountBagKey) as? DisposeBag
            if bag == nil {
                bag = DisposeBag()
                objc_setAssociatedObject(self, Self.pointCountBagKey, bag, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
            return bag!
        }
        set {
            objc_setAssociatedObject(self, Self.pointCountBagKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private func checkPoint(_ input: String) {
        if input.count == 0 { return }
        if input == "." {
            text = "0."
            return
        }
        let agoIndex = input.count - 1
        let agoText = input.sf.subString(start: 0, length: input.count - 1)
        let newValue = input.sf.subString(start: input.count-1, length: 1)
        if agoText?.contains(".") ?? false {
            if newValue == "." {
                text = String(input.prefix(agoIndex))
            } else {
                if let subfix = input.components(separatedBy: ".").last,
                   let pointCount = sf_pointCount,
                    subfix.count > pointCount {
                    text = String(input.prefix(agoIndex))
                }
            }
        }
    }
    
    /// 小数点后可以输入几位, -1为不限
    @IBInspectable
    var pointCount: Int {
        get {
            return sf_pointCount ?? 0
        }
        set {
            sf_pointCount = newValue
        }
    }
}

#endif
