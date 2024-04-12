//
//  SFExStyle_UICollectionViewFlowLayout.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 系统Api支持

public extension SFExStyle where Base: UICollectionViewFlowLayout {
    
    /// 垂直间距
    @discardableResult
    func minimumLineSpacing(_ spacing: CGFloat) -> SFExStyle {
        base.minimumLineSpacing = spacing
        return self
    }
    
    /// 水平间距
    @discardableResult
    func minimumInteritemSpacing(_ spacing: CGFloat) -> SFExStyle {
        base.minimumInteritemSpacing = spacing
        return self
    }
    
    @discardableResult
    func itemSize(_ size: CGSize) -> SFExStyle {
        base.itemSize = size
        return self
    }
    
    @discardableResult
    func estimatedItemSize(_ size: CGSize) -> SFExStyle {
        base.estimatedItemSize = size
        return self
    }
    
    @discardableResult
    func headerReferenceSize(_ size: CGSize) -> SFExStyle {
        base.headerReferenceSize = size
        return self
    }

    @discardableResult
    func footerReferenceSize(_ size: CGSize) -> SFExStyle {
        base.footerReferenceSize = size
        return self
    }
    
    @discardableResult
    func sectionInset(_ inset: UIEdgeInsets) -> SFExStyle {
        base.sectionInset = inset
        return self
    }

    /// 横屏时在SafeArea内
    @available(iOS 11.0, *)
    @discardableResult
    func sectionInsetReference(_ a: UICollectionViewFlowLayout.SectionInsetReference = .fromSafeArea) -> SFExStyle {
        base.sectionInsetReference = a
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func sectionHeadersPinToVisibleBounds(_ visible: Bool) -> SFExStyle {
        base.sectionHeadersPinToVisibleBounds = visible
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func sectionFootersPinToVisibleBounds(_ visible: Bool) -> SFExStyle {
        base.sectionFootersPinToVisibleBounds = visible
        return self
    }
}
