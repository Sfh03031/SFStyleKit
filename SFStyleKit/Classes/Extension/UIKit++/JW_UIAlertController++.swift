//
//  UIAlertController++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(UIKit)

public extension UIAlertController {
    
    /// 封装系统弹窗
    /// - Parameters:
    ///   - parent: 父VC
    ///   - title: 标题
    ///   - message: 内容
    ///   - cancelTitle: 取消按钮标题
    ///   - confirmTitle: 确定按钮标题
    ///   - cancelComplete: 取消的回调
    ///   - confirmComplete: 确认的回调
    class func show(parent: UIViewController?, title: String?, message: String?, cancelTitle: String?, confirmTitle: String?, cancelComplete: (() -> Void)?, confirmComplete: (() -> Void)?) {
        weak var parent = parent
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if let cancelTitle = cancelTitle {
            alert.addAction(UIAlertAction(title: cancelTitle, style: .default) { (_) in
                cancelComplete?()
            })
        }
        if let confirmTitle = confirmTitle {
            alert.addAction(UIAlertAction(title: confirmTitle, style: .default) { (_) in
                confirmComplete?()
            })
        }
        parent?.present(alert, animated: true, completion: nil)
    }
    
}

#endif
