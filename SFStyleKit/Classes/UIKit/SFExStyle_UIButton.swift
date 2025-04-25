//
//  SFExStyle_UIButton.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: support SFExStyle for system Api of UIButton
public extension SFExStyle where Base: UIButton {
    
    @discardableResult
    func title(_ title: String?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func titleShadowColor(_ color: UIColor?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setTitleShadowColor(color, for: state)
        return self
    }
    
    @discardableResult
    func titleFont(_ font: UIFont?) -> SFExStyle {
        base.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func background(_ image: UIImage?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setAttributedTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func adjustsImageWhenHighlighted(_ adjustsImageWhenHighlighted: Bool) -> SFExStyle {
        base.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted
        return self
    }
    
    @discardableResult
    func adjustsImageWhenDisabled(_ adjustsImageWhenDisabled: Bool) -> SFExStyle {
        base.adjustsImageWhenDisabled = adjustsImageWhenDisabled
        return self
    }
    
    @discardableResult
    func showsTouchWhenHighlighted(_ showsTouchWhenHighlighted: Bool) -> SFExStyle {
        base.showsTouchWhenHighlighted = showsTouchWhenHighlighted
        return self
    }
    
    @discardableResult
    func tintColor(_ tintColor: UIColor!) -> SFExStyle {
        base.tintColor = tintColor
        return self
    }
    
    @discardableResult
    func contentEdgeInsets(_ contentEdgeInsets: UIEdgeInsets) -> SFExStyle {
        base.contentEdgeInsets = contentEdgeInsets
        return self
    }
    
    @discardableResult
    func titleEdgeInsets(_ titleEdgeInsets: UIEdgeInsets) -> SFExStyle {
        base.titleEdgeInsets = titleEdgeInsets
        return self
    }
    
    @discardableResult
    func reversesTitleShadowWhenHighlighted(_ reversesTitleShadowWhenHighlighted: Bool) -> SFExStyle {
        base.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted
        return self
    }
    
    @discardableResult
    func imageEdgeInsets(_ imageEdgeInsets: UIEdgeInsets) -> SFExStyle {
        base.imageEdgeInsets = imageEdgeInsets
        return self
    }
    
    @discardableResult
    func transform(_ transform: CGAffineTransform) -> SFExStyle {
        base.transform = transform
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func setNeedsUpdateConfiguration() -> SFExStyle {
        base.setNeedsUpdateConfiguration()
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func updateConfiguration() -> SFExStyle {
        base.updateConfiguration()
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func configurationUpdateHandler(handler: UIButton.ConfigurationUpdateHandler?) -> SFExStyle {
        base.configurationUpdateHandler = handler
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func automaticallyUpdatesConfiguration(config: Bool) -> SFExStyle {
        base.automaticallyUpdatesConfiguration = config
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func role(_ role: UIButton.Role) -> SFExStyle {
        base.role = role
        return self
    }

    @available(iOS 13.4, *)
    @discardableResult
    func isPointerInteractionEnabled(_ enabled: Bool) -> SFExStyle {
        base.isPointerInteractionEnabled = enabled
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func menu(_ menu: UIMenu?) -> SFExStyle {
        base.menu = menu
        return self
    }

    @available(iOS 16.0, *)
    @discardableResult
    func preferredMenuElementOrder(_ preferredMenuElementOrder: UIContextMenuConfiguration.ElementOrder) -> SFExStyle {
        base.preferredMenuElementOrder = preferredMenuElementOrder
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func changesSelectionAsPrimaryAction(_ changesSelectionAsPrimaryAction: Bool) -> SFExStyle {
        base.changesSelectionAsPrimaryAction = changesSelectionAsPrimaryAction
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func setPreferredSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration?, forImageIn state: UIControl.State) -> SFExStyle {
        base.setPreferredSymbolConfiguration(configuration, forImageIn: state)
        return self
    }
}

#endif
