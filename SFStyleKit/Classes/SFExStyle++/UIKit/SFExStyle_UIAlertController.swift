//
//  SFExStyle_UIAlertController.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UIAlertController
public extension SFExStyle where Base: UIAlertController {
    
    /// 显示弹窗
    /// - Parameters:
    ///   - vc: 父VC
    ///   - block: 完成的回调
    /// - Returns: self
    @discardableResult
    func show(_ vc: UIViewController?, block: (() -> Void)? = nil) -> SFExStyle {
        if base.title == nil && base.message == nil && base.actions.count == 0 {
            assertionFailure("⚠️⚠️ 啥都没有弹鸡毛 ⚠️⚠️")
            return self
        }
        vc?.present(base, animated: true, completion: block)
        return self
    }
    
    /// 弹窗消失
    /// - Parameters:
    ///   - time: 延迟秒数
    ///   - block: 完成的回调
    /// - Returns: self
    @discardableResult
    func hidden(_ time: TimeInterval, block: (() -> Void)? = nil) -> SFExStyle {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + time) { [weak base] in
            base?.dismiss(animated: true, completion: block)
        }
        return self
    }
    
    /// 弹窗标题
    /// - Parameter a: 标题
    /// - Returns: self
    @discardableResult
    func title(_ a: String) -> SFExStyle {
        base.title = a
        return self
    }
    
    /// 弹窗标题字体
    /// - Parameter font: 字体
    /// - Returns: self
    @discardableResult
    func titleFont(_ font: UIFont) -> SFExStyle {
        let attributed: NSAttributedString = base.value(forKey: "attributedTitle") as? NSAttributedString ?? NSMutableAttributedString(string: base.title ?? "")
        let attributedM = NSMutableAttributedString(attributedString: attributed)
        attributedM.addAttribute(NSAttributedString.Key.font, value: font, range: NSMakeRange(0, attributedM.length))
        base.setValue(attributedM, forKey: "attributedTitle")
        return self
    }
    
    /// 弹窗标题颜色
    /// - Parameter color: 颜色
    /// - Returns: self
    @discardableResult
    func titleColor(_ color: UIColor) -> SFExStyle {
        let attributed: NSAttributedString = base.value(forKey: "attributedTitle") as? NSAttributedString ?? NSMutableAttributedString(string: base.title ?? "")
        let attributedM = NSMutableAttributedString(attributedString: attributed)
        attributedM.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSMakeRange(0, attributedM.length))
        base.setValue(attributedM, forKey: "attributedTitle")
        return self
    }
    
    /// 弹窗标题富文本
    /// - Parameter attributed: 富文本
    /// - Returns: self
    @discardableResult
    func titleAttributed(_ attributed: NSAttributedString) -> SFExStyle {
        base.setValue(attributed, forKey: "attributedTitle")
        return self
    }
    
    /// 弹窗信息
    /// - Parameter a: 信息
    /// - Returns: self
    @discardableResult
    func message(_ a: String) -> SFExStyle {
        base.message = a
        return self
    }
    
    /// 弹窗信息字体
    /// - Parameter font: 字体
    /// - Returns: self
    @discardableResult
    func messageFont(_ font: UIFont) -> SFExStyle {
        let attributed: NSAttributedString = base.value(forKey: "attributedMessage") as? NSAttributedString ?? NSMutableAttributedString(string: base.message ?? "")
        let attributedM = NSMutableAttributedString(attributedString: attributed)
        attributedM.addAttribute(NSAttributedString.Key.font, value: font, range: NSMakeRange(0, attributedM.length))
        base.setValue(attributedM, forKey: "attributedMessage")
        return self
    }
    
    /// 弹窗信息颜色
    /// - Parameter color: 颜色
    /// - Returns: self
    @discardableResult
    func messageColor(_ color: UIColor) -> SFExStyle {
        let attributed: NSAttributedString = base.value(forKey: "attributedMessage") as? NSAttributedString ?? NSMutableAttributedString(string: base.message ?? "")
        let attributedM = NSMutableAttributedString(attributedString: attributed)
        attributedM.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSMakeRange(0, attributedM.length))
        base.setValue(attributedM, forKey: "attributedMessage")
        return self
    }
    
    /// 弹窗信息富文本
    /// - Parameter color: 富文本
    /// - Returns: self
    @discardableResult
    func messageAttributed(_ attributed: NSAttributedString) -> SFExStyle {
        base.setValue(attributed, forKey: "attributedMessage")
        return self
    }
    
    /// 定义弹窗操作
    /// - Parameters:
    ///   - title: 操作名称
    ///   - style: 操作风格
    ///   - custom: 自定义回调
    ///   - handler: 操作的回调
    /// - Returns: self
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
    
    /// 弹窗添加操作
    /// - Parameter action: 操作
    /// - Returns: self
    @discardableResult
    func add(action: UIAlertAction) -> SFExStyle {
        base.addAction(action)
        return self
    }
    
    /// 指定弹窗类型
    /// - Parameter style: 弹窗类型
    /// - Returns: self
    class func alertStyle(_ style: UIAlertController.Style) -> SFExStyle<UIAlertController> {
        // preferredStyle为只读属性，默认等于actionSheet
        UIAlertController(title: nil, message: nil, preferredStyle: style).sf
    }
    
}

#endif
