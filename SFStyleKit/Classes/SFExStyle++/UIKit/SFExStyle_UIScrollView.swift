//
//  SFExStyle_UIScrollView.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UIScrollView
public extension SFExStyle where Base: UIScrollView {

    @discardableResult
    func contentOffset(_ offset: CGPoint) -> SFExStyle {
        base.contentOffset = offset
        return self
    }

    @discardableResult
    func contentSize(_ size: CGSize) -> SFExStyle {
        base.contentSize = size
        return self
    }

    @discardableResult
    func contentInset(_ insets: UIEdgeInsets) -> SFExStyle {
        base.contentInset = insets
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult
    func contentAlignmentPoint(_ point: CGPoint) -> SFExStyle {
        base.contentAlignmentPoint = point
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func adjustedContentInsetDidChange() -> SFExStyle {
        base.adjustedContentInsetDidChange()
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult
    func contentInsetAdjustmentBehavior(_ behavior: UIScrollView.ContentInsetAdjustmentBehavior) -> SFExStyle {
        base.contentInsetAdjustmentBehavior = behavior
        return self
    }

    @available(iOS 13.0, *)
    @discardableResult
    func automaticallyAdjustsScrollIndicatorInsets(_ value: Bool) -> SFExStyle {
        base.automaticallyAdjustsScrollIndicatorInsets = value
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: (any UIScrollViewDelegate)?) -> SFExStyle {
        base.delegate = delegate
        return self
    }

    @discardableResult
    func isDirectionalLockEnabled(_ value: Bool) -> SFExStyle {
        base.isDirectionalLockEnabled = value
        return self
    }

    @discardableResult
    func bounces(_ value: Bool) -> SFExStyle {
        base.bounces = value
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult
    func bouncesHorizontally(_ value: Bool) -> SFExStyle {
        base.bouncesHorizontally = value
        return self
    }

    @available(iOS 17.4, *)
    @discardableResult
    func bouncesVertically(_ value: Bool) -> SFExStyle {
        base.bouncesVertically = value
        return self
    }

    @discardableResult
    func alwaysBounceVertical(_ value: Bool) -> SFExStyle {
        base.alwaysBounceVertical = value
        return self
    }

    @discardableResult
    func alwaysBounceHorizontal(_ value: Bool) -> SFExStyle {
        base.alwaysBounceHorizontal = value
        return self
    }

    @discardableResult
    func isPagingEnabled(_ value: Bool) -> SFExStyle {
        base.isPagingEnabled = value
        return self
    }

    @discardableResult
    func isScrollEnabled(_ value: Bool) -> SFExStyle {
        base.isScrollEnabled = value
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult
    func transfersHorizontalScrollingToParent(_ value: Bool) -> SFExStyle {
        base.transfersHorizontalScrollingToParent = value
        return self
    }

    @available(iOS 17.4, *)
    @discardableResult
    func transfersVerticalScrollingToParent(_ value: Bool) -> SFExStyle {
        base.transfersVerticalScrollingToParent = value
        return self
    }
    
    @discardableResult
    func showsVerticalScrollIndicator(_ value: Bool) -> SFExStyle {
        base.showsVerticalScrollIndicator = value
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ value: Bool) -> SFExStyle {
        base.showsHorizontalScrollIndicator = value
        return self
    }
    
    @discardableResult
    func indicatorStyle(_ style: UIScrollView.IndicatorStyle) -> SFExStyle {
        base.indicatorStyle = style
        return self
    }
    
    @available(iOS 11.1, *)
    @discardableResult
    func verticalScrollIndicatorInsets(_ insets: UIEdgeInsets) -> SFExStyle {
        base.verticalScrollIndicatorInsets = insets
        return self
    }
    
    @available(iOS 11.1, *)
    @discardableResult
    func horizontalScrollIndicatorInsets(_ insets: UIEdgeInsets) -> SFExStyle {
        base.horizontalScrollIndicatorInsets = insets
        return self
    }
    
    @discardableResult
    func scrollIndicatorInsets(_ insets: UIEdgeInsets) -> SFExStyle {
        base.scrollIndicatorInsets = insets
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func decelerationRate(_ rate: UIScrollView.DecelerationRate) -> SFExStyle {
        base.decelerationRate = rate
        return self
    }
    
    @discardableResult
    func indexDisplayMode(_ mode: UIScrollView.IndexDisplayMode) -> SFExStyle {
        base.indexDisplayMode = mode
        return self
    }
    
    @discardableResult
    func setContentOffset(_ offset: CGPoint, animated a: Bool) -> SFExStyle {
        base.setContentOffset(offset, animated: a)
        return self
    }
    
    @discardableResult
    func scrollRectToVisible(_ rect: CGRect, animated a: Bool) -> SFExStyle {
        base.scrollRectToVisible(rect, animated: a)
        return self
    }
    
    @discardableResult
    func flashScrollIndicators() -> SFExStyle {
        base.flashScrollIndicators()
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult
    func withScrollIndicatorsShown(forContentOffsetChanges changes: () -> Void) -> SFExStyle {
        base.withScrollIndicatorsShown(forContentOffsetChanges: changes)
        return self
    }
    
    @discardableResult
    func delaysContentTouches(_ value: Bool) -> SFExStyle {
        base.delaysContentTouches = value
        return self
    }
    
    @discardableResult
    func canCancelContentTouches(_ value: Bool) -> SFExStyle {
        base.canCancelContentTouches = value
        return self
    }
    
    @discardableResult
    func minimumZoomScale(_ scale: CGFloat) -> SFExStyle {
        base.minimumZoomScale = scale
        return self
    }
    
    @discardableResult
    func maximumZoomScale(_ scale: CGFloat) -> SFExStyle {
        base.maximumZoomScale = scale
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func zoomScale(_ scale: CGFloat) -> SFExStyle {
        base.zoomScale = scale
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func setZoomScale(_ scale: CGFloat, animated a: Bool) -> SFExStyle {
        base.setZoomScale(scale, animated: a)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func zoom(to rect: CGRect, animated a: Bool) -> SFExStyle {
        base.zoom(to: rect, animated: a)
        return self
    }
    
    @discardableResult
    func bouncesZoom(_ zoom: Bool) -> SFExStyle {
        base.bouncesZoom = zoom
        return self
    }
    
    @discardableResult
    func scrollsToTop(_ value: Bool) -> SFExStyle {
        base.scrollsToTop = value
        return self
    }
    
    @available(iOS 17.4, *)
    @discardableResult
    func stopScrollingAndZooming() -> SFExStyle {
        base.stopScrollingAndZooming()
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    func keyboardDismissMode(_ mode: UIScrollView.KeyboardDismissMode) -> SFExStyle {
        base.keyboardDismissMode = mode
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    func refreshControl(_ control: UIRefreshControl?) -> SFExStyle {
        base.refreshControl = control
        return self
    }
    
    @available(iOS 17.0, *)
    @discardableResult
    func allowsKeyboardScrolling(_ value: Bool) -> SFExStyle {
        base.allowsKeyboardScrolling = value
        return self
    }
    
}

#endif
