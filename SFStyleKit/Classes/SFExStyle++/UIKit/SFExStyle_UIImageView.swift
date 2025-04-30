//
//  SFExStyle_UIImageView.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UIImageView
public extension SFExStyle where Base: UIImageView {
    
    @discardableResult
    func image(_ value: UIImage?) -> SFExStyle {
        base.image = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func highlightedImage(_ value: UIImage?) -> SFExStyle {
        base.highlightedImage = value
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func preferredSymbolConfiguration(_ value: UIImage.SymbolConfiguration?) -> SFExStyle {
        base.preferredSymbolConfiguration = value
        return self
    }
    
    @discardableResult
    func isUserInteractionEnabled(_ value: Bool) -> SFExStyle {
        base.isUserInteractionEnabled = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func isHighlighted(_ value: Bool) -> SFExStyle {
        base.isHighlighted = value
        return self
    }
    
    @discardableResult
    func animationImages(_ value: [UIImage]?) -> SFExStyle {
        base.animationImages = value
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func highlightedAnimationImages(_ value: [UIImage]?) -> SFExStyle {
        base.highlightedAnimationImages = value
        return self
    }
    
    @discardableResult
    func animationDuration(_ value: TimeInterval) -> SFExStyle {
        base.animationDuration = value
        return self
    }
    
    @discardableResult
    func animationRepeatCount(_ value: Int) -> SFExStyle {
        base.animationRepeatCount = value
        return self
    }
    
    @discardableResult
    func tintColor(_ value: UIColor!) -> SFExStyle {
        base.tintColor = value
        return self
    }
    
    @discardableResult
    func startAnimating() -> SFExStyle {
        base.startAnimating()
        return self
    }

    @discardableResult
    func stopAnimating() -> SFExStyle {
        base.stopAnimating()
        return self
    }

    @available(iOS 17.0, *)
    @discardableResult
    func preferredImageDynamicRange(_ value: UIImage.DynamicRange) -> SFExStyle {
        base.preferredImageDynamicRange = value
        return self
    }
    
    @available(iOS 17.0, tvOS 17.0, *)
    @MainActor @preconcurrency @discardableResult
    func addSymbolEffect(_ effect: some DiscreteSymbolEffect & SymbolEffect, options: SymbolEffectOptions = .default, animated: Bool = true, completion: UISymbolEffectCompletion? = nil) -> SFExStyle {
        base.addSymbolEffect(effect, options: options, animated: animated, completion: completion)
        return self
    }
    
    @available(iOS 17.0, tvOS 17.0, *)
    @MainActor @preconcurrency @discardableResult
    func addSymbolEffect(_ effect: some IndefiniteSymbolEffect & SymbolEffect, options: SymbolEffectOptions = .default, animated: Bool = true, completion: UISymbolEffectCompletion? = nil) -> SFExStyle {
        base.addSymbolEffect(effect, options: options, animated: animated, completion: completion)
        return self
    }
    
    @available(iOS 17.0, tvOS 17.0, *)
    @MainActor @preconcurrency @discardableResult
    func addSymbolEffect(_ effect: some DiscreteSymbolEffect & IndefiniteSymbolEffect & SymbolEffect, options: SymbolEffectOptions = .default, animated: Bool = true, completion: UISymbolEffectCompletion? = nil) -> SFExStyle {
        base.addSymbolEffect(effect, options: options, animated: animated, completion: completion)
        return self
    }
    
    @available(iOS 17.0, tvOS 17.0, *)
    @MainActor @preconcurrency @discardableResult
    func removeSymbolEffect(ofType effect: some DiscreteSymbolEffect & SymbolEffect, options: SymbolEffectOptions = .default, animated: Bool = true, completion: UISymbolEffectCompletion? = nil) -> SFExStyle {
        base.removeSymbolEffect(ofType: effect, options: options, animated: animated, completion: completion)
        return self
    }
    
    @available(iOS 17.0, tvOS 17.0, *)
    @MainActor @preconcurrency @discardableResult
    func removeSymbolEffect(ofType effect: some IndefiniteSymbolEffect & SymbolEffect, options: SymbolEffectOptions = .default, animated: Bool = true, completion: UISymbolEffectCompletion? = nil) -> SFExStyle {
        base.removeSymbolEffect(ofType: effect, options: options, animated: animated, completion: completion)
        return self
    }
    
    
    @available(iOS 17.0, tvOS 17.0, *)
    @MainActor @preconcurrency @discardableResult
    func removeSymbolEffect(ofType effect: some DiscreteSymbolEffect & IndefiniteSymbolEffect & SymbolEffect, options: SymbolEffectOptions = .default, animated: Bool = true, completion: UISymbolEffectCompletion? = nil) -> SFExStyle {
        base.removeSymbolEffect(ofType: effect, options: options, animated: animated, completion: completion)
        return self
    }
    
    @available(iOS 17.0, tvOS 17.0, *)
    @MainActor @preconcurrency @discardableResult
    func removeAllSymbolEffects(options: SymbolEffectOptions = .default, animated: Bool = true) -> SFExStyle {
        base.removeAllSymbolEffects(options: options, animated: animated)
        return self
    }
    
    @available(iOS 17.0, tvOS 17.0, *)
    @MainActor @preconcurrency @discardableResult
    func setSymbolImage(_ image: UIImage, contentTransition: some ContentTransitionSymbolEffect & SymbolEffect, options: SymbolEffectOptions = .default, completion: UISymbolEffectCompletion? = nil) -> SFExStyle {
        base.setSymbolImage(image, contentTransition: contentTransition, options: options, completion: completion)
        return self
    }
    
}

#endif
