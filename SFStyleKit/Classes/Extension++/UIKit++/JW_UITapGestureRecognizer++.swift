//
//  JW_UITapGestureRecognizer++.swift
//  Pods
//
//  Created by sfh on 2025/4/25.
//

import UIKit

// MARK: add action closure of UITapGestureRecognizer

fileprivate class JWTapGestureRecognizerHandler {
    
    var closure: ((_ tap: UITapGestureRecognizer) -> Void)?
    
    init(_ closure: ((_: UITapGestureRecognizer) -> Void)?) {
        self.closure = closure
    }
}

extension UITapGestureRecognizer {
    
    private static let tapHandlerKey = UnsafeRawPointer(bitPattern: "tapHandlerKey".hashValue)!
    
    private var sf_tapHandler: ((_ tap: UITapGestureRecognizer) -> ())? {
        get {
            var obj = objc_getAssociatedObject(self, Self.tapHandlerKey) as? JWTapGestureRecognizerHandler
            if obj == nil {
                obj = JWTapGestureRecognizerHandler(nil)
                objc_setAssociatedObject(self, Self.tapHandlerKey, obj, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
            return obj!.closure
        }
        
        set {
            objc_setAssociatedObject(self, Self.tapHandlerKey, JWTapGestureRecognizerHandler(newValue), .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

public extension UITapGestureRecognizer {
    
    /// convenience init
    /// - Parameters:
    ///   - target: Any?
    ///   - tapRequired: default = `1`
    ///   - handler: action closure
    convenience init(target: Any?, tapRequired: Int = 1, handler: ((_ tap: UITapGestureRecognizer) -> Void)?) {
        self.init(target: nil, action: nil)
        self.numberOfTapsRequired = tapRequired
        self.addTarget(self, action: #selector(didTaped))
        self.sf_tapHandler = handler
    }
    
    @objc private func didTaped() {
        self.sf_tapHandler?(self)
    }
    
}
