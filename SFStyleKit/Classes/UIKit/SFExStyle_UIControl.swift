//
//  SFExStyle_UIControl.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/10.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 系统Api支持

public extension SFExStyle where Base: UIControl {
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> SFExStyle {
        base.isEnabled = isEnabled
        return self
    }

    @discardableResult
    func isSelected(_ isSelected: Bool) -> SFExStyle {
        base.isSelected = isSelected
        return self
    }

    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> SFExStyle {
        base.isHighlighted = isHighlighted
        return self
    }

    @discardableResult 
    func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> SFExStyle {
        base.contentVerticalAlignment = contentVerticalAlignment
        return self
    }

    @discardableResult 
    func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> SFExStyle {
        base.contentHorizontalAlignment = contentHorizontalAlignment
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
    func isContextMenuInteractionEnabled(_ a: Bool) -> SFExStyle {
        base.isContextMenuInteractionEnabled = a
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func showsMenuAsPrimaryAction(_ a: Bool) -> SFExStyle {
        base.showsMenuAsPrimaryAction = a
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func toolTip(_ a: String?) -> SFExStyle {
        base.toolTip = a
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult
    func isSymbolAnimationEnabled(_ a: Bool) -> SFExStyle {
        base.isSymbolAnimationEnabled = a
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willDisplayMenuFor configuration: UIContextMenuConfiguration, animator a: UIContextMenuInteractionAnimating?) -> SFExStyle {
        base.contextMenuInteraction(interaction, willDisplayMenuFor: configuration, animator: a)
        return self
    }

    @available(iOS 14.0, *)
    @discardableResult
    func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willEndFor configuration: UIContextMenuConfiguration, animator a: UIContextMenuInteractionAnimating?) -> SFExStyle {
        base.contextMenuInteraction(interaction, willEndFor: configuration, animator: a)
        return self
    }
}
