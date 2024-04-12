//
//  SFExStyle_UIAlertController.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

public extension SFExStyle where Base: UIAlertController {
    
    @discardableResult
    func show(_ vc: UIViewController?, block: (() -> Void)? = nil) -> SFExStyle {
        if base.title == nil && base.message == nil && base.actions.count == 0 {
            assertionFailure("🧽啥都没有弹鸡毛🧽")
            return self
        }
        vc?.present(base, animated: true, completion: block)
        return self
    }
    
    @discardableResult
    func hidden(_ time: TimeInterval, block: (() -> Void)? = nil) -> SFExStyle {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + time) { [weak base] in
            base?.dismiss(animated: true, completion: block)
        }
        return self
    }
    
    @discardableResult
    func alertStyle(_ style: UIAlertController.Style) -> SFExStyle {
        base.alertStyle = style
        return self
    }
    
    @discardableResult
    func title(_ a: String) -> SFExStyle {
        base.title = a
        return self
    }
    
    @discardableResult
    func titleFont(_ font: UIFont) -> SFExStyle {
        let attributed: NSAttributedString = base.value(forKey: "attributedTitle") as? NSAttributedString ?? NSMutableAttributedString(string: base.title ?? "")
        let attributedM = NSMutableAttributedString(attributedString: attributed)
        attributedM.addAttribute(NSAttributedString.Key.font, value: font, range: NSMakeRange(0, attributedM.length))
        base.setValue(attributedM, forKey: "attributedTitle")
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor) -> SFExStyle {
        let attributed: NSAttributedString = base.value(forKey: "attributedTitle") as? NSAttributedString ?? NSMutableAttributedString(string: base.title ?? "")
        let attributedM = NSMutableAttributedString(attributedString: attributed)
        attributedM.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSMakeRange(0, attributedM.length))
        base.setValue(attributedM, forKey: "attributedTitle")
        return self
    }
    
    @discardableResult
    func titleAttributed(_ attributed: NSAttributedString) -> SFExStyle {
        base.setValue(attributed, forKey: "attributedTitle")
        return self
    }
    
    @discardableResult
    func message(_ a: String) -> SFExStyle {
        base.message = a
        return self
    }
    
    @discardableResult
    func messageFont(_ font: UIFont) -> SFExStyle {
        let attributed: NSAttributedString = base.value(forKey: "attributedMessage") as? NSAttributedString ?? NSMutableAttributedString(string: base.message ?? "")
        let attributedM = NSMutableAttributedString(attributedString: attributed)
        attributedM.addAttribute(NSAttributedString.Key.font, value: font, range: NSMakeRange(0, attributedM.length))
        base.setValue(attributedM, forKey: "attributedMessage")
        return self
    }
    
    @discardableResult
    func messageColor(_ color: UIColor) -> SFExStyle {
        let attributed: NSAttributedString = base.value(forKey: "attributedMessage") as? NSAttributedString ?? NSMutableAttributedString(string: base.message ?? "")
        let attributedM = NSMutableAttributedString(attributedString: attributed)
        attributedM.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSMakeRange(0, attributedM.length))
        base.setValue(attributedM, forKey: "attributedMessage")
        return self
    }
    
    @discardableResult
    func messageAttributed(_ attributed: NSAttributedString) -> SFExStyle {
        base.setValue(attributed, forKey: "attributedMessage")
        return self
    }
    
    @discardableResult
    func action(_ title: String = "",
                style: UIAlertAction.Style = .default,
                custom: ((UIAlertAction) -> Void)? = nil,
                handler: ((UIAlertAction) -> Void)? = nil) -> SFExStyle {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        custom?(action)
        base.addAction(action)
        return self
    }
    
    @discardableResult
    func add(action: UIAlertAction) -> SFExStyle {
        base.addAction(action)
        return self
    }
}

/// 增加弹窗类型属性

public extension UIAlertController {
    private static let alertStyleKey = UnsafeRawPointer(bitPattern: "alertStyleKey".hashValue)!
    
    var alertStyle: UIAlertController.Style {
        get {
            var style = objc_getAssociatedObject(self, Self.alertStyleKey) as? UIAlertController.Style
            if style == nil {
                style = .actionSheet
                objc_setAssociatedObject(self, Self.alertStyleKey, style, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
            return style!
        }
        set {
            objc_setAssociatedObject(self, Self.alertStyleKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

public extension UIAlertController {
    
    /// 系统弹窗封装
    class func show(parent: UIViewController?, title: String?, message: String?, cancelTitle: String?, confirmTitle: String?, cancelComplete: (() -> Void)?, confirmComplete: (() -> Void)?) {
        weak var parent = parent
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if let cancelTitle = cancelTitle {
            let ac = UIAlertAction(title: cancelTitle, style: .default) { (_) in
                cancelComplete?()
            }
            alert.addAction(ac)
        }
        if let confirmTitle = confirmTitle {
            let ac = UIAlertAction(title: confirmTitle, style: .default) { (_) in
                confirmComplete?()
            }
            alert.addAction(ac)
        }
        parent?.present(alert, animated: true, completion: nil)
    }
    
    /// 指定弹窗类型
    class func alertStyle(_ style: UIAlertController.Style) -> SFExStyle<UIAlertController> {
        // preferredStyle为只读属性，默认等于actionSheet
        UIAlertController(title: nil, message: nil, preferredStyle: style).sf
    }
}
