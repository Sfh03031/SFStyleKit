//
//  SFExStyle_UIButton.swift
//  SFStyleKit_Example
//
//  Created by 望舒 on 2024/4/5.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 系统Api支持

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

//MARK: - 扩展

/// button中图片的位置枚举
public enum ImagePosition {
    /// 图片在左
    case left
    /// 图片在右
    case right
    /// 图片在上
    case top
    /// 图片在下
    case bottom
}

public extension SFExStyle where Base: UIButton {
    
    /// 创建带图片的按钮
    /// - Parameters:
    ///   - title: 文字
    ///   - image: 图片
    ///   - state: 状态
    ///   - space: 图片与文字间距
    ///   - position: 图片的位置
    /// - Returns: self
    @discardableResult
    func imagePosition(title: String?, 
                       image: UIImage?,
                       state: UIControl.State = .normal,
                       space: CGFloat = 10,
                       position: ImagePosition = .left,
                       isSureTitleCompress: Bool = false) -> SFExStyle {
        base.imageView?.contentMode = .center
        base.setImage(image, for: state)
        base.titleLabel?.contentMode = .center
        base.setTitle(title, for: state)
        imageSpace(title: title ?? "", space: space, position: position, isSureTitleCompress: isSureTitleCompress)
        return self
    }
    
    /// 修改图片位置
    /// - Parameters:
    ///   - title: 文字
    ///   - space: 间距
    ///   - position: 图片的位置
    ///   - isSureTitleCompress: 宽度不足时是否压缩文字
    /// - Returns: self
    @discardableResult
    func imageSpace(title: String, space: CGFloat, position: ImagePosition, isSureTitleCompress: Bool) -> SFExStyle {
        /*
             UIButton默认布局是图片在左、文字在右，图片和文字之间边距为0，图片和文字整体居中显示
             当同时存在image和title时，imageEdgeInsets中的top、left、bottom相对于UIButton，right相对于title，同理，titleEdgeInsets中的top、bottom、right相对于UIButton，left相对于title
             imageEdgeInsets = UIEdgeInsets.init(top: 5, left: 0, bottom: -5, right: 0) 表示图片整体向下移动5
             imageEdgeInsets = UIEdgeInsets.init(top: -5, left: 4, bottom: 5, right: -4) 表示图片整体向上移动5，向右移动4
             默认的情况下当按钮比较小时会自动保留图片的尺寸和将文字部分缩小，一般出现在图标和文字上下布局，button的整体较小时，因为按钮总体宽度比较小，导致系统给分配的宽度不足以完整显示文字
         */
        
        // 防止因为通过约束布局导致titleRect获取的rect不准
        self.layoutIfNeeded()
        let imageSize = base.imageView?.image?.size ?? .zero
        // 系统为titleLabel分配的size
        let titleSize = base.titleRect(forContentRect: base.frame).size
        // 展示文字实际所需的size
        var titleNeedSize: CGSize = .zero
        if let font = base.titleLabel?.font {
            titleNeedSize = title.size(withAttributes: [NSAttributedString.Key.font: font])
        }
        // 文字是否被系统压缩
        var isTitleCompress = false
        if isSureTitleCompress {
            isTitleCompress = true
        } else if titleNeedSize.width > titleSize.width {
            isTitleCompress = true
        }
        
        var titleInsets: UIEdgeInsets
        var imageInsets: UIEdgeInsets
        
        switch position {
            
        case .bottom:
            let imageTop = titleSize.height/2 + space/2
            let titleTop = -(imageSize.height/2 + space/2)
            if isTitleCompress {
                let imageLeft = (base.bounds.size.width - imageSize.width)/2
                imageInsets = UIEdgeInsets(top: imageTop, left: imageLeft, bottom: -imageTop, right: 0)
                titleInsets = UIEdgeInsets(top: titleTop, left: -imageSize.width, bottom: -titleTop, right: 0)
            } else {
                imageInsets = UIEdgeInsets(top: imageTop, left: titleSize.width/2, bottom: -imageTop, right: -titleSize.width/2)
                titleInsets = UIEdgeInsets(top: titleTop, left: -imageSize.width/2, bottom: -titleTop, right: imageSize.width/2)
            }
        case .top:
            let imageTop = -(titleSize.height/2 + space/2)
            let titleTop = imageSize.height/2 + space/2
            if isTitleCompress {
                let imageLeft = (base.bounds.size.width - imageSize.width)/2
                imageInsets = UIEdgeInsets(top: imageTop, left: imageLeft, bottom: -imageTop, right: 0)
                titleInsets = UIEdgeInsets(top: titleTop, left: -imageSize.width, bottom: -titleTop, right: 0)
            } else {
                imageInsets = UIEdgeInsets(top: imageTop, left: titleSize.width/2, bottom: -imageTop, right: -titleSize.width/2)
                titleInsets = UIEdgeInsets(top: titleTop, left: -imageSize.width/2, bottom: -titleTop, right: imageSize.width/2)
            }
        case .right:
            imageInsets = UIEdgeInsets(top: 0, left: titleSize.width + space/2, bottom: 0, right: -(titleSize.width + space/2))
            titleInsets = UIEdgeInsets(top: 0, left: -(imageSize.width + space/2), bottom: 0, right: imageSize.width + space/2)
        case .left:
            imageInsets = UIEdgeInsets(top: 0, left: -space/2, bottom: 0, right: space/2)
            titleInsets = UIEdgeInsets(top: 0, left: space/2, bottom: 0, right: -space/2)
        }
        
        base.titleEdgeInsets = titleInsets
        base.imageEdgeInsets = imageInsets
        return self
    }
}
