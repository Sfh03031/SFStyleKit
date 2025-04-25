//
//  SFExStyle_UIImageView.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: support SFExStyle for system Api of UIImageView
public extension SFExStyle where Base: UIImageView {
    
    @discardableResult
    func image(_ image: UIImage?) -> SFExStyle {
        base.image = image
        return self
    }
    
    @discardableResult
    func contentMode(_ mode: UIView.ContentMode) -> SFExStyle {
        base.contentMode = mode
        return self
    }
    
    @discardableResult
    func highlightedImage(_ highlightedImage: UIImage?) -> SFExStyle {
        base.highlightedImage = highlightedImage
        return self
    }
    
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> SFExStyle {
        base.isHighlighted = isHighlighted
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> SFExStyle {
        base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func animationImages(_ animationImages: [UIImage]?) -> SFExStyle {
        base.animationImages = animationImages
        return self
    }
    
    @discardableResult
    func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> SFExStyle {
        base.highlightedAnimationImages = highlightedAnimationImages
        return self
    }
    
    @discardableResult
    func animationDuration(_ animationDuration: TimeInterval) -> SFExStyle {
        base.animationDuration = animationDuration
        return self
    }
    
    @discardableResult
    func animationRepeatCount(_ animationRepeatCount: Int) -> SFExStyle {
        base.animationRepeatCount = animationRepeatCount
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor!) -> SFExStyle {
        base.tintColor = tintColor
        return self
    }
}

#endif
