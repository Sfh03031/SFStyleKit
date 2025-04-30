//
//  SFExStyle_UIView.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UIView
public extension SFExStyle where Base: UIView {
    @discardableResult
    func isUserInteractionEnabled(_ value: Bool) -> SFExStyle {
        base.isUserInteractionEnabled = value
        return self
    }

    @discardableResult
    func tag(_ tag: Int) -> SFExStyle {
        base.tag = tag
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func focusGroupIdentifier(_ value: String?) -> SFExStyle {
        base.focusGroupIdentifier = value
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func focusGroupPriority(_ value: UIFocusGroupPriority) -> SFExStyle {
        base.focusGroupPriority = value
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func focusEffect(_ effect: UIFocusEffect?) -> SFExStyle {
        base.focusEffect = effect
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    func semanticContentAttribute(_ value: UISemanticContentAttribute) -> SFExStyle {
        base.semanticContentAttribute = value
        return self
    }
}

public extension SFExStyle where Base: UIView {
    
    @discardableResult
    func frame(_ frame: CGRect) -> SFExStyle {
        base.frame = frame
        return self
    }

    @discardableResult
    func bounds(_ bounds: CGRect) -> SFExStyle {
        base.bounds = bounds
        return self
    }

    @discardableResult
    func center(_ center: CGPoint) -> SFExStyle {
        base.center = center
        return self
    }
    
    @discardableResult
    func transform(_ value: CGAffineTransform) -> SFExStyle {
        base.transform = value
        return self
    }

    @available(iOS 13.0, *)
    @discardableResult
    func transform3D(_ value: CATransform3D) -> SFExStyle {
        base.transform3D = value
        return self
    }

    @available(iOS 4.0, *)
    @discardableResult
    func contentScaleFactor(_ value: CGFloat) -> SFExStyle {
        base.contentScaleFactor = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult
    func anchorPoint(_ value: CGPoint) -> SFExStyle {
        base.anchorPoint = value
        return self
    }

    @discardableResult
    func isMultipleTouchEnabled(_ value: Bool) -> SFExStyle {
        base.isMultipleTouchEnabled = value
        return self
    }

    @discardableResult
    func isExclusiveTouch(_ value: Bool) -> SFExStyle {
        base.isExclusiveTouch = value
        return self
    }

    @discardableResult
    func autoresizesSubviews(_ value: Bool) -> SFExStyle {
        base.autoresizesSubviews = value
        return self
    }

    @discardableResult
    func autoresizingMask(_ mask: UIView.AutoresizingMask) -> SFExStyle {
        base.autoresizingMask = mask
        return self
    }

    @discardableResult
    func sizeToFit() -> SFExStyle {
        base.sizeToFit()
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @discardableResult
    func removeFromSuperview() -> SFExStyle {
        base.removeFromSuperview()
        return self
    }

    @discardableResult
    func insertSubview(_ view: UIView, at index: Int) -> SFExStyle {
        base.insertSubview(view, at: index)
        return self
    }

    @discardableResult
    func exchangeSubview(at index1: Int, withSubviewAt index2: Int) -> SFExStyle {
        base.exchangeSubview(at: index1, withSubviewAt: index2)
        return self
    }

    @discardableResult
    func addSubview(_ view: UIView) -> SFExStyle {
        base.addSubview(view)
        return self
    }

    @discardableResult
    func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView) -> SFExStyle {
        base.insertSubview(view, belowSubview: siblingSubview)
        return self
    }

    @discardableResult
    func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView) -> SFExStyle {
        base.insertSubview(view, aboveSubview: siblingSubview)
        return self
    }

    @discardableResult
    func bringSubviewToFront(_ view: UIView) -> SFExStyle {
        base.bringSubviewToFront(view)
        return self
    }

    @discardableResult
    func sendSubviewToBack(_ view: UIView) -> SFExStyle {
        base.sendSubviewToBack(view)
        return self
    }
    
    @discardableResult
    func didAddSubview(_ subview: UIView) -> SFExStyle {
        base.didAddSubview(subview)
        return self
    }

    @discardableResult
    func willRemoveSubview(_ subview: UIView) -> SFExStyle {
        base.willRemoveSubview(subview)
        return self
    }

    @discardableResult
    func willMove(toSuperview newSuperview: UIView?) -> SFExStyle {
        base.willMove(toSuperview: newSuperview)
        return self
    }

    @discardableResult
    func didMoveToSuperview() -> SFExStyle {
        base.didMoveToSuperview()
        return self
    }

    @discardableResult
    func willMove(toWindow newWindow: UIWindow?) -> SFExStyle {
        base.willMove(toWindow: newWindow)
        return self
    }

    @discardableResult
    func didMoveToWindow() -> SFExStyle {
        base.didMoveToWindow()
        return self
    }

    @discardableResult
    func setNeedsLayout() -> SFExStyle {
        base.setNeedsLayout()
        return self
    }

    @discardableResult
    func layoutIfNeeded() -> SFExStyle {
        base.layoutIfNeeded()
        return self
    }

    @discardableResult
    func layoutSubviews() -> SFExStyle {
        base.layoutSubviews()
        return self
    }

    @available(iOS 8.0, *)
    @discardableResult
    func layoutMargins(_ insets: UIEdgeInsets) -> SFExStyle {
        base.layoutMargins = insets
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func directionalLayoutMargins(_ insets: NSDirectionalEdgeInsets) -> SFExStyle {
        base.directionalLayoutMargins = insets
        return self
    }

    @available(iOS 8.0, *)
    @discardableResult
    func preservesSuperviewLayoutMargins(_ enabled: Bool) -> SFExStyle {
        base.preservesSuperviewLayoutMargins = enabled
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func insetsLayoutMarginsFromSafeArea(_ enabled: Bool) -> SFExStyle {
        base.insetsLayoutMarginsFromSafeArea = enabled
        return self
    }

    @available(iOS 8.0, *)
    @discardableResult
    func layoutMarginsDidChange() -> SFExStyle {
        base.layoutMarginsDidChange()
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func safeAreaInsetsDidChange() -> SFExStyle {
        base.safeAreaInsetsDidChange()
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @discardableResult
    func draw(_ rect: CGRect) -> SFExStyle {
        base.draw(rect)
        return self
    }

    @discardableResult
    func setNeedsDisplay() -> SFExStyle {
        base.setNeedsDisplay()
        return self
    }

    @discardableResult
    func setNeedsDisplay(_ rect: CGRect) -> SFExStyle {
        base.setNeedsDisplay(rect)
        return self
    }

    @discardableResult
    func clipsToBounds(_ value: Bool) -> SFExStyle {
        base.clipsToBounds = value
        return self
    }

    @discardableResult
    func backgroundColor(_ color: UIColor?) -> SFExStyle {
        base.backgroundColor = color
        return self
    }

    @discardableResult
    func alpha(_ alpha: CGFloat) -> SFExStyle {
        base.alpha = alpha
        return self
    }

    @discardableResult
    func isOpaque(_ isOpaque: Bool) -> SFExStyle {
        base.isOpaque = isOpaque
        return self
    }
    
    @discardableResult
    func clearsContextBeforeDrawing(_ value: Bool) -> SFExStyle {
        base.clearsContextBeforeDrawing = value
        return self
    }

    @discardableResult
    func isHidden(_ value: Bool) -> SFExStyle {
        base.isHidden = value
        return self
    }

    @discardableResult
    func contentMode(_ mode: UIView.ContentMode) -> SFExStyle {
        base.contentMode = mode
        return self
    }

    @available(iOS 8.0, *)
    @discardableResult
    func mask(_ mask: UIView?) -> SFExStyle {
        base.mask = mask
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func tintColor(_ color: UIColor!) -> SFExStyle {
        base.tintColor = color
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func tintAdjustmentMode(_ mode: UIView.TintAdjustmentMode) -> SFExStyle {
        base.tintAdjustmentMode = mode
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    func tintColorDidChange() -> SFExStyle {
        base.tintColorDidChange()
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 3.2, *)
    @discardableResult
    func gestureRecognizers(_ gestures: [UIGestureRecognizer]?) -> SFExStyle {
        base.gestureRecognizers = gestures
        return self
    }

    @available(iOS 3.2, *)
    @discardableResult
    func addGestureRecognizer(_ gesture: UIGestureRecognizer) -> SFExStyle {
        base.addGestureRecognizer(gesture)
        return self
    }

    @available(iOS 3.2, *)
    @discardableResult
    func removeGestureRecognizer(_ gesture: UIGestureRecognizer) -> SFExStyle {
        base.removeGestureRecognizer(gesture)
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 7.0, *)
    @discardableResult
    func addMotionEffect(_ effect: UIMotionEffect) -> SFExStyle {
        base.addMotionEffect(effect)
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func removeMotionEffect(_ effect: UIMotionEffect) -> SFExStyle {
        base.removeMotionEffect(effect)
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func motionEffects(_ effects: [UIMotionEffect]) -> SFExStyle {
        base.motionEffects = effects
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 6.0, *)
    @discardableResult
    func addConstraint(_ constraint: NSLayoutConstraint) -> SFExStyle {
        base.addConstraint(constraint)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func addConstraints(_ constraints: [NSLayoutConstraint]) -> SFExStyle {
        base.addConstraints(constraints)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func removeConstraint(_ constraint: NSLayoutConstraint) -> SFExStyle {
        base.removeConstraint(constraint)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func removeConstraints(_ constraints: [NSLayoutConstraint]) -> SFExStyle {
        base.removeConstraints(constraints)
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 6.0, *)
    @discardableResult
    func updateConstraintsIfNeeded() -> SFExStyle {
        base.updateConstraintsIfNeeded()
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func updateConstraints() -> SFExStyle {
        base.updateConstraints()
        return self
    }


    @available(iOS 6.0, *)
    @discardableResult
    func setNeedsUpdateConstraints() -> SFExStyle {
        base.setNeedsUpdateConstraints()
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 6.0, *)
    @discardableResult
    func translatesAutoresizingMaskIntoConstraints(_ value: Bool) -> SFExStyle {
        base.translatesAutoresizingMaskIntoConstraints = value
        return self
    }
    
}

public extension SFExStyle where Base: UIView {

    @available(iOS 6.0, *)
    @discardableResult
    func invalidateIntrinsicContentSize() -> SFExStyle {
        base.invalidateIntrinsicContentSize()
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func setContentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> SFExStyle {
        base.setContentHuggingPriority(priority, for: axis)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func setContentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> SFExStyle {
        base.setContentCompressionResistancePriority(priority, for: axis)
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 9.0, *)
    @discardableResult
    func addLayoutGuide(_ layoutGuide: UILayoutGuide) -> SFExStyle {
        base.addLayoutGuide(layoutGuide)
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    func removeLayoutGuide(_ layoutGuide: UILayoutGuide) -> SFExStyle {
        base.removeLayoutGuide(layoutGuide)
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 6.0, *)
    @discardableResult
    func exerciseAmbiguityInLayout() -> SFExStyle {
        base.exerciseAmbiguityInLayout()
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 6.0, *)
    @discardableResult
    func restorationIdentifier(_ identifier: String?) -> SFExStyle {
        base.restorationIdentifier = identifier
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func encodeRestorableState(with coder: NSCoder) -> SFExStyle {
        base.encodeRestorableState(with: coder)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func decodeRestorableState(with coder: NSCoder) -> SFExStyle {
        base.decodeRestorableState(with: coder)
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 13.0, *)
    @discardableResult
    func overrideUserInterfaceStyle(style: UIUserInterfaceStyle) -> SFExStyle {
        base.overrideUserInterfaceStyle = style
        return self
    }
    
}

public extension SFExStyle where Base: UIView {
    
    @available(iOS 15.0, *)
    @discardableResult
    func minimumContentSizeCategory(_ category: UIContentSizeCategory?) -> SFExStyle {
        base.minimumContentSizeCategory = category
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func maximumContentSizeCategory(_ category: UIContentSizeCategory?) -> SFExStyle {
        base.maximumContentSizeCategory = category
        return self
    }
    
}
    
@available(iOS 17.0, *)
public extension SFExStyle where Base: UIView {

    @available(iOS 17.0, *)
    @discardableResult
    func updateTraitsIfNeeded() -> SFExStyle {
        base.updateTraitsIfNeeded()
        return self
    }
    
}

#endif
