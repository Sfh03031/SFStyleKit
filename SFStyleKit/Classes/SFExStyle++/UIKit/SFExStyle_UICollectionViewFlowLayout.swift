//
//  SFExStyle_UICollectionViewFlowLayout.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UICollectionViewFlowLayout
public extension SFExStyle where Base: UICollectionViewFlowLayout {
    
    /// 垂直间距
    @discardableResult
    func minimumLineSpacing(_ value: CGFloat) -> SFExStyle {
        base.minimumLineSpacing = value
        return self
    }
    
    /// 水平间距
    @discardableResult
    func minimumInteritemSpacing(_ value: CGFloat) -> SFExStyle {
        base.minimumInteritemSpacing = value
        return self
    }
    
    @discardableResult
    func itemSize(_ value: CGSize) -> SFExStyle {
        base.itemSize = value
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult
    func estimatedItemSize(_ value: CGSize) -> SFExStyle {
        base.estimatedItemSize = value
        return self
    }
    
    @discardableResult
    func scrollDirection(_ value: UICollectionView.ScrollDirection) -> SFExStyle {
        base.scrollDirection = value
        return self
    }
    
    @discardableResult
    func headerReferenceSize(_ value: CGSize) -> SFExStyle {
        base.headerReferenceSize = value
        return self
    }

    @discardableResult
    func footerReferenceSize(_ value: CGSize) -> SFExStyle {
        base.footerReferenceSize = value
        return self
    }
    
    @discardableResult
    func sectionInset(_ value: UIEdgeInsets) -> SFExStyle {
        base.sectionInset = value
        return self
    }

    /// 横屏时在SafeArea内
    @available(iOS 11.0, *)
    @discardableResult
    func sectionInsetReference(_ value: UICollectionViewFlowLayout.SectionInsetReference) -> SFExStyle {
        base.sectionInsetReference = value
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func sectionHeadersPinToVisibleBounds(_ value: Bool) -> SFExStyle {
        base.sectionHeadersPinToVisibleBounds = value
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func sectionFootersPinToVisibleBounds(_ value: Bool) -> SFExStyle {
        base.sectionFootersPinToVisibleBounds = value
        return self
    }
}

#endif
