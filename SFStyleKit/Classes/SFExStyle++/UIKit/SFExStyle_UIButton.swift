//
//  SFExStyle_UIButton.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UIButton
public extension SFExStyle where Base: UIButton {
    
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
    func configurationUpdateHandler(_ handler: UIButton.ConfigurationUpdateHandler?) -> SFExStyle {
        base.configurationUpdateHandler = handler
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func automaticallyUpdatesConfiguration(_ auto: Bool) -> SFExStyle {
        base.automaticallyUpdatesConfiguration = auto
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult
    func tintColor(_ color: UIColor!) -> SFExStyle {
        base.tintColor = color
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
    func isPointerInteractionEnabled(_ enable: Bool) -> SFExStyle {
        base.isPointerInteractionEnabled = enable
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
    func preferredMenuElementOrder(_ order: UIContextMenuConfiguration.ElementOrder) -> SFExStyle {
        base.preferredMenuElementOrder = order
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func changesSelectionAsPrimaryAction(_ value: Bool) -> SFExStyle {
        base.changesSelectionAsPrimaryAction = value
        return self
    }
    
    @discardableResult
    func setTitle(_ title: String?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func setTitleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func setTitleShadowColor(_ color: UIColor?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setTitleShadowColor(color, for: state)
        return self
    }
    
    @discardableResult
    func titleFont(_ font: UIFont?) -> SFExStyle {
        base.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    func setImage(_ image: UIImage?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func setBackgroundImage(_ image: UIImage?, for state: UIControl.State = .normal) -> SFExStyle {
        base.setBackgroundImage(image, for: state)
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func setPreferredSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration?, forImageIn state: UIControl.State) -> SFExStyle {
        base.setPreferredSymbolConfiguration(configuration, forImageIn: state)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func setAttributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> SFExStyle {
        base.setAttributedTitle(title, for: state)
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult
    func contentEdgeInsets(_ insets: UIEdgeInsets) -> SFExStyle {
        base.contentEdgeInsets = insets
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult
    func titleEdgeInsets(_ insets: UIEdgeInsets) -> SFExStyle {
        base.titleEdgeInsets = insets
        return self
    }

    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult
    func imageEdgeInsets(_ insets: UIEdgeInsets) -> SFExStyle {
        base.imageEdgeInsets = insets
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration, you may customize to replicate this behavior via a configurationUpdateHandler")
    @discardableResult
    func reversesTitleShadowWhenHighlighted(_ value: Bool) -> SFExStyle {
        base.reversesTitleShadowWhenHighlighted = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration, you may customize to replicate this behavior via a configurationUpdateHandler")
    @discardableResult
    func adjustsImageWhenHighlighted(_ value: Bool) -> SFExStyle {
        base.adjustsImageWhenHighlighted = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration, you may customize to replicate this behavior via a configurationUpdateHandler")
    @discardableResult
    func adjustsImageWhenDisabled(_ value: Bool) -> SFExStyle {
        base.adjustsImageWhenDisabled = value
        return self
    }
    
    @available(iOS, introduced: 2.0, deprecated: 15.0, message: "This property is ignored when using UIButtonConfiguration")
    @discardableResult
    func showsTouchWhenHighlighted(_ value: Bool) -> SFExStyle {
        base.showsTouchWhenHighlighted = value
        return self
    }
    
}

// MARK: Support SFExStyle for system Api of UIButton.Configuration
@available(iOS 15.0, tvOS 15.0, *)
public extension SFExStyle where Base: UIButton {
    
    @available(iOS 15.0, *)
    @discardableResult
    func background(_ value: UIBackgroundConfiguration) -> SFExStyle {
        base.configuration?.background = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func cornerStyle(_ value: UIButton.Configuration.CornerStyle) -> SFExStyle {
        base.configuration?.cornerStyle = value
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func buttonSize(_ value: UIButton.Configuration.Size) -> SFExStyle {
        base.configuration?.buttonSize = value
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func macIdiomStyle(_ value: UIButton.Configuration.MacIdiomStyle) -> SFExStyle {
        base.configuration?.macIdiomStyle = value
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func baseForegroundColor(_ value: UIColor?) -> SFExStyle {
        base.configuration?.baseForegroundColor = value
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func baseBackgroundColor(_ value: UIColor?) -> SFExStyle {
        base.configuration?.baseBackgroundColor = value
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func image(_ value: UIImage?) -> SFExStyle {
        base.configuration?.image = value
        return self
    }
    
    @discardableResult
    func imageColorTransformer(_ value: UIConfigurationColorTransformer?) -> SFExStyle {
        base.configuration?.imageColorTransformer = value
        return self
    }

    @discardableResult
    func preferredSymbolConfigurationForImage(_ value: UIImage.SymbolConfiguration?) -> SFExStyle {
        base.configuration?.preferredSymbolConfigurationForImage = value
        return self
    }

    @discardableResult
    func showsActivityIndicator(_ value: Bool) -> SFExStyle {
        base.configuration?.showsActivityIndicator = value
        return self
    }

    @discardableResult
    func activityIndicatorColorTransformer(_ value: UIConfigurationColorTransformer?) -> SFExStyle {
        base.configuration?.activityIndicatorColorTransformer = value
        return self
    }

    @discardableResult
    func title(_ value: String?) -> SFExStyle {
        base.configuration?.title = value
        return self
    }
    
    @discardableResult
    func attributedTitle(_ value: AttributedString?) -> SFExStyle {
        base.configuration?.attributedTitle = value
        return self
    }

    @discardableResult
    func titleTextAttributesTransformer(_ value: UIConfigurationTextAttributesTransformer?) -> SFExStyle {
        base.configuration?.titleTextAttributesTransformer = value
        return self
    }

    @discardableResult
    func subtitle(_ value: String?) -> SFExStyle {
        base.configuration?.subtitle = value
        return self
    }

    @discardableResult
    func attributedSubtitle(_ value: AttributedString?) -> SFExStyle {
        base.configuration?.attributedSubtitle = value
        return self
    }

    @discardableResult
    func subtitleTextAttributesTransformer(_ value: UIConfigurationTextAttributesTransformer?) -> SFExStyle {
        base.configuration?.subtitleTextAttributesTransformer = value
        return self
    }

    @available(iOS 16.0, tvOS 16.0, *)
    @discardableResult
    func indicator(_ value: UIButton.Configuration.Indicator) -> SFExStyle {
        base.configuration?.indicator = value
        return self
    }

    @available(iOS 16.0, tvOS 16.0, *)
    @discardableResult
    func indicatorColorTransformer(_ value: UIConfigurationColorTransformer?) -> SFExStyle {
        base.configuration?.indicatorColorTransformer = value
        return self
    }
    
    @discardableResult
    func contentInsets(_ value: NSDirectionalEdgeInsets) -> SFExStyle {
        base.configuration?.contentInsets = value
        return self
    }

    @discardableResult
    func setDefaultContentInsets() -> SFExStyle {
        base.configuration?.setDefaultContentInsets()
        return self
    }

    @discardableResult
    func imagePlacement(_ value: NSDirectionalRectEdge) -> SFExStyle {
        base.configuration?.imagePlacement = value
        return self
    }

    @discardableResult
    func imagePadding(_ value: CGFloat) -> SFExStyle {
        base.configuration?.imagePadding = value
        return self
    }

    @discardableResult
    func titlePadding(_ value: CGFloat) -> SFExStyle {
        base.configuration?.titlePadding = value
        return self
    }

    @discardableResult
    func titleAlignment(_ value: UIButton.Configuration.TitleAlignment) -> SFExStyle {
        base.configuration?.titleAlignment = value
        return self
    }

    @discardableResult
    func automaticallyUpdateForSelection(_ value: Bool) -> SFExStyle {
        base.configuration?.automaticallyUpdateForSelection = value
        return self
    }
    
    @discardableResult
    func hash(into hasher: inout Hasher) -> SFExStyle {
        base.configuration?.hash(into: &hasher)
        return self
    }
    
    @discardableResult
    func titleLineBreakMode(_ value: NSLineBreakMode) -> SFExStyle {
        base.configuration?.titleLineBreakMode = value
        return self
    }

    @discardableResult
    func subtitleLineBreakMode(_ value: NSLineBreakMode) -> SFExStyle {
        base.configuration?.subtitleLineBreakMode = value
        return self
    }

    @discardableResult
    func imageReservation(_ value: CGFloat) -> SFExStyle {
        base.configuration?.imageReservation = value
        return self
    }
}

#endif
