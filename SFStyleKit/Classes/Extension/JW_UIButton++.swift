//
//  UIButton++.swift
//  Pods
//
//  Created by sfh on 2025/4/25.
//

#if canImport(UIKit)

// MARK: modify the position of the image in the button

/// enum of JWImagePositionType
public enum JWImagePositionType {
    case left
    case right
    case top
    case bottom
}

public extension UIButton {
    
    /// make image position of button
    /// - Parameters:
    ///   - title: text of button
    ///   - image: image of button
    ///   - state: UIControl.State of text and image
    ///   - space: margin between text and image
    ///   - position: image position of button
    /// - Returns: self
    func makePosition(title: String?,
                      image: UIImage?,
                      state: UIControl.State = .normal,
                      space: CGFloat = 10,
                      position: JWImagePositionType = .left,
                      isCompress: Bool = false) {
        self.imageView?.contentMode = .center
        self.setImage(image, for: state)
        self.titleLabel?.contentMode = .center
        self.setTitle(title, for: state)
        self.makeBetweenSpace(space: space, position: position, isCompress: isCompress)
    }
    
    /// make margin between text and image
    /// - Parameters:
    ///   - title: text
    ///   - space: margin
    ///   - position: case of JWImagePositionType
    ///   - isCompress: whether compress text when the width is insufficient (宽度不足时是否压缩文字)
    /// - Returns: self
    func makeBetweenSpace(space: CGFloat, position: JWImagePositionType, isCompress: Bool = false) {
        // 防止因为通过约束布局导致titleRect获取的rect不准
        self.layoutIfNeeded()
        let imageSize = self.imageView?.image?.size ?? .zero
        // 系统为titleLabel分配的size
        let titleSize = self.titleRect(forContentRect: self.frame).size
        // 展示文字实际所需的size
        var titleNeedSize: CGSize = .zero
        if let font = self.titleLabel?.font {
            titleNeedSize = (self.titleLabel?.text ?? "").size(withAttributes: [NSAttributedString.Key.font: font])
        }
        // 文字是否被系统压缩
        var isTitleCompress = false
        if isCompress {
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
                let imageLeft = (self.bounds.size.width - imageSize.width)/2
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
                let imageLeft = (self.bounds.size.width - imageSize.width)/2
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
        
        self.titleEdgeInsets = titleInsets
        self.imageEdgeInsets = imageInsets
    }
}

/*
     UIButton默认布局是图片在左、文字在右，图片和文字之间边距为0，图片和文字整体居中显示
     当同时存在image和title时，imageEdgeInsets中的top、left、bottom相对于UIButton，right相对于title，同理，titleEdgeInsets中的top、bottom、right相对于UIButton，left相对于title
     imageEdgeInsets = UIEdgeInsets.init(top: 5, left: 0, bottom: -5, right: 0) 表示图片整体向下移动5
     imageEdgeInsets = UIEdgeInsets.init(top: -5, left: 4, bottom: 5, right: -4) 表示图片整体向上移动5，向右移动4
     默认的情况下当按钮比较小时会自动保留图片的尺寸和将文字部分缩小，一般出现在图标和文字上下布局，button的整体较小时，因为按钮总体宽度比较小，导致系统给分配的宽度不足以完整显示文字
 */

#endif
