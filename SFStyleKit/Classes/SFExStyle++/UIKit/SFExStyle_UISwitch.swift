//
//  SFExStyle_UISwitch.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/9.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UISwitch
public extension SFExStyle where Base: UISwitch {
    
    @available(iOS 5.0, *)
    @discardableResult
    func onTintColor(_ value: UIColor?) -> SFExStyle {
        base.onTintColor = value
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func thumbTintColor(_ value: UIColor?) -> SFExStyle {
        base.thumbTintColor = value
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func onImage(_ value: UIImage?) -> SFExStyle {
        base.onImage = value
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func offImage(_ value: UIImage?) -> SFExStyle {
        base.offImage = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func title(_ value: String?) -> SFExStyle {
        base.title = value
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func preferredStyle(_ value: UISwitch.Style) -> SFExStyle {
        base.preferredStyle = value
        return self
    }

    @discardableResult 
    func isOn(_ value: Bool) -> SFExStyle {
        base.isOn = value
        return self
    }
    
    @discardableResult
    func setOn(_ on: Bool, animated: Bool) -> SFExStyle {
        base.setOn(on, animated: animated)
        return self
    }
}

#endif
