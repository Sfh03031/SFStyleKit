//
//  SFExStyle_UIImageView.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

// MARK: 系统Api支持

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

// MARK: - 扩展

public extension UIImageView {
    
    /// 通过Data加载gif
    func loadGif(data: Data) {
        DispatchQueue.global().async {
            let image = UIImage.gif(data: data)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    /// 通过URL加载gif
    func loadGif(url: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(url: url)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    /// 通过NSDataAsset加载gif
    func loadGif(asset: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(asset: asset)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
    
    /// 通过name加载gif
    func loadGif(name: String) {
        DispatchQueue.global().async {
            let image = UIImage.gif(name: name)
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}
