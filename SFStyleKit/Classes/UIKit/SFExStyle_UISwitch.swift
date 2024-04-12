//
//  SFExStyle_UISwitch.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/9.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 系统Api支持

public extension SFExStyle where Base: UISwitch {
    
    @discardableResult
    func onTintColor(_ onTintColor: UIColor?) -> SFExStyle {
        base.onTintColor = onTintColor
        return self
    }

    @discardableResult 
    func thumbTintColor(_ thumbTintColor: UIColor?) -> SFExStyle {
        base.thumbTintColor = thumbTintColor
        return self
    }

    @discardableResult 
    func onImage(_ onImage: UIImage?) -> SFExStyle {
        base.onImage = onImage
        return self
    }

    @discardableResult 
    func offImage(_ offImage: UIImage?) -> SFExStyle {
        base.offImage = offImage
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func title(_ title: String?) -> SFExStyle {
        base.title = title
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func preferredStyle(_ preferredStyle: UISwitch.Style) -> SFExStyle {
        base.preferredStyle = preferredStyle
        return self
    }

    @discardableResult 
    func isOn(_ isOn: Bool) -> SFExStyle {
        base.isOn = isOn
        return self
    }
    
    @discardableResult
    func setOn(_ on: Bool, animated: Bool) -> SFExStyle {
        base.setOn(on, animated: animated)
        return self
    }
}
