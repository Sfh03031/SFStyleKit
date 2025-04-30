//
//  SFExStyle_UIControl.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/10.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UIControl
public extension SFExStyle where Base: UIControl {
    
    @discardableResult
    func isEnabled(_ value: Bool) -> SFExStyle {
        base.isEnabled = value
        return self
    }

    @discardableResult
    func isSelected(_ value: Bool) -> SFExStyle {
        base.isSelected = value
        return self
    }

    @discardableResult
    func isHighlighted(_ value: Bool) -> SFExStyle {
        base.isHighlighted = value
        return self
    }

    @discardableResult 
    func contentVerticalAlignment(_ value: UIControl.ContentVerticalAlignment) -> SFExStyle {
        base.contentVerticalAlignment = value
        return self
    }

    @discardableResult 
    func contentHorizontalAlignment(_ value: UIControl.ContentHorizontalAlignment) -> SFExStyle {
        base.contentHorizontalAlignment = value
        return self
    }

    @discardableResult 
    func endTracking(_ touch: UITouch?, with event: UIEvent?) -> SFExStyle {
        base.endTracking(touch, with: event)
        return self
    }

    @discardableResult 
    func cancelTracking(with event: UIEvent?) -> SFExStyle {
        base.cancelTracking(with: event)
        return self
    }

    @discardableResult 
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> SFExStyle {
        base.addTarget(target, action: action, for: controlEvents)
        return self
    }

    @discardableResult 
    func removeTarget(_ target: Any?, action: Selector?, for controlEvents: UIControl.Event) -> SFExStyle {
        base.removeTarget(target, action: action, for: controlEvents)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func addAction(_ action: UIAction, for controlEvents: UIControl.Event) -> SFExStyle {
        base.addAction(action, for: controlEvents)
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func removeAction(_ action: UIAction, for controlEvents: UIControl.Event) -> SFExStyle {
        base.removeAction(action, for: controlEvents)
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func removeAction(identifiedBy actionIdentifier: UIAction.Identifier, for controlEvents: UIControl.Event) -> SFExStyle {
        base.removeAction(identifiedBy: actionIdentifier, for: controlEvents)
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult
    func performPrimaryAction() -> SFExStyle {
        base.performPrimaryAction()
        return self
    }

    @discardableResult 
    func sendAction(_ action: Selector, to target: Any?, for event: UIEvent?) -> SFExStyle {
        base.sendAction(action, to: target, for: event)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func sendAction(_ action: UIAction) -> SFExStyle {
        base.sendAction(action)
        return self
    }

    @discardableResult 
    func sendActions(for controlEvents: UIControl.Event) -> SFExStyle {
        base.sendActions(for: controlEvents)
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func isContextMenuInteractionEnabled(_ value: Bool) -> SFExStyle {
        base.isContextMenuInteractionEnabled = value
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func showsMenuAsPrimaryAction(_ value: Bool) -> SFExStyle {
        base.showsMenuAsPrimaryAction = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func toolTip(_ value: String?) -> SFExStyle {
        base.toolTip = value
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult
    func isSymbolAnimationEnabled(_ value: Bool) -> SFExStyle {
        base.isSymbolAnimationEnabled = value
        return self
    }
    
}

#endif
