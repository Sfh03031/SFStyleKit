//
//  SFExStyle_UISlider.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/10.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UISlider
public extension SFExStyle where Base: UISlider {
    
    @discardableResult
    func value(_ value: Float) -> SFExStyle {
        base.value = value
        return self
    }

    @discardableResult
    func minimumValue(_ value: Float) -> SFExStyle {
        base.minimumValue = value
        return self
    }

    @discardableResult
    func maximumValue(_ value: Float) -> SFExStyle {
        base.maximumValue = value
        return self
    }

    @discardableResult
    func minimumValueImage(_ image: UIImage) -> SFExStyle {
        base.minimumValueImage = image
        return self
    }

    @discardableResult
    func maximumValueImage(_ image: UIImage) -> SFExStyle {
        base.maximumValueImage = image
        return self
    }

    @discardableResult
    func isContinuous(_ value: Bool) -> SFExStyle {
        base.isContinuous = value
        return self
    }

    @available(iOS 5.0, *)
    @discardableResult
    func minimumTrackTintColor(_ color: UIColor) -> SFExStyle {
        base.minimumTrackTintColor = color
        return self
    }

    @available(iOS 5.0, *)
    @discardableResult
    func maximumTrackTintColor(_ color: UIColor) -> SFExStyle {
        base.maximumTrackTintColor = color
        return self
    }

    @available(iOS 5.0, *)
    @discardableResult
    func thumbTintColor(_ color: UIColor) -> SFExStyle {
        base.thumbTintColor = color
        return self
    }

    @discardableResult
    func setValue(_ value: Float, animated: Bool) -> SFExStyle {
        base.setValue(value, animated: animated)
        return self
    }

    @discardableResult
    func setThumbImage(_ image: UIImage?, for state: UIControl.State) -> SFExStyle {
        base.setThumbImage(image, for: state)
        return self
    }

    @discardableResult
    func setMinimumTrackImage(_ image: UIImage?, for state: UIControl.State) -> SFExStyle {
        base.setMinimumTrackImage(image, for: state)
        return self
    }

    @discardableResult
    func setMaximumTrackImage(_ image: UIImage?, for state: UIControl.State) -> SFExStyle {
        base.setMaximumTrackImage(image, for: state)
        return self
    }
}

#endif
