//
//  SFExStyle_UIScrollView.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
#if canImport(MJRefresh)
import MJRefresh
#endif

//MARK: - 系统Api支持

public extension SFExStyle where Base: UIScrollView {
    
//    @discardableResult
//    func delegate(_ delegate: UIScrollViewDelegate) -> SFExStyle {
//        switch delegate {
//        case let d as UITableViewDelegate where base is UITableView:
//            base.delegate = d
//        case let d as UICollectionViewDelegate where base is UICollectionView:
//            base.delegate = d
//        default:
//            base.delegate = delegate
//        }
//        return self
//    }
    
//    @discardableResult
//    func dragDelegate(_ delegate: NSObjectProtocol) -> SFExStyle {
//        switch delegate {
//        case let d as UITableViewDragDelegate where base is UITableView:
//            (base as? UITableView)?.dragDelegate = d
//        case let d as UICollectionViewDragDelegate where base is UICollectionView:
//            (base as? UICollectionView)?.dragDelegate = d
//        default:
//            break
//        }
//        return self
//    }
    
//    @discardableResult
//    func dropDelegate(_ delegate: NSObjectProtocol) -> SFExStyle {
//        switch delegate {
//        case let d as UITableViewDropDelegate where base is UITableView:
//            (base as? UITableView)?.dropDelegate = d
//        case let d as UICollectionViewDropDelegate where base is UICollectionView:
//            (base as? UICollectionView)?.dropDelegate = d
//        default:
//            break
//        }
//        return self
//    }
    
//    @discardableResult
//    func dataSource(_ dataSource: NSObjectProtocol) -> SFExStyle {
//        switch dataSource {
//        case let d as UITableViewDataSource where base is UITableView:
//            (base as? UITableView)?.dataSource = d
//        case let d as UICollectionViewDataSource where base is UICollectionView:
//            (base as? UICollectionView)?.dataSource = d
//        default:
//            break
//        }
//        return self
//    }
    
    @discardableResult
    func delegate(_ delegate: UIScrollViewDelegate) -> SFExStyle {
        base.delegate = delegate
        return self
    }
    
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
    func automaticallyAdjustsScrollIndicatorInsets(_ a: Bool) -> SFExStyle {
        base.automaticallyAdjustsScrollIndicatorInsets = a
        return self
    }

    @discardableResult
    func isDirectionalLockEnabled(_ a: Bool) -> SFExStyle {
        base.isDirectionalLockEnabled = a
        return self
    }

    @discardableResult
    func bounces(_ a: Bool) -> SFExStyle {
        base.bounces = a
        return self
    }

    @discardableResult
    func alwaysBounceVertical(_ a: Bool) -> SFExStyle {
        base.alwaysBounceVertical = a
        return self
    }

    @discardableResult
    func alwaysBounceHorizontal(_ a: Bool) -> SFExStyle {
        base.alwaysBounceHorizontal = a
        return self
    }

    @discardableResult
    func isPagingEnabled(_ a: Bool) -> SFExStyle {
        base.isPagingEnabled = a
        return self
    }

    @discardableResult
    func isScrollEnabled(_ a: Bool) -> SFExStyle {
        base.isScrollEnabled = a
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ show: Bool) -> SFExStyle {
        base.showsHorizontalScrollIndicator = show
        return self
    }
    
    @discardableResult
    func showsVerticalScrollIndicator(_ show: Bool) -> SFExStyle {
        base.showsVerticalScrollIndicator = show
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
    
    @discardableResult
    func delaysContentTouches(_ delays: Bool) -> SFExStyle {
        base.delaysContentTouches = delays
        return self
    }
    
    @discardableResult
    func canCancelContentTouches(_ can: Bool) -> SFExStyle {
        base.canCancelContentTouches = can
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
    func scrollsToTop(_ scroll: Bool) -> SFExStyle {
        base.scrollsToTop = scroll
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
    func allowsKeyboardScrolling(_ allows: Bool) -> SFExStyle {
        base.allowsKeyboardScrolling = allows
        return self
    }
}

//MARK: - 扩展

#if canImport(MJRefresh)

public extension SFExStyle where Base: UIScrollView {
    
    @discardableResult
    func refreshHeader(_ ignoredTop: CGFloat = 0, _ refresh: @escaping () -> Void) -> SFExStyle {
        let header = MJRefreshNormalHeader(refreshingBlock: refresh)
        header.ignoredScrollViewContentInsetTop = ignoredTop
        header.lastUpdatedTimeLabel?.isHidden = true
        header.stateLabel?.textColor = UIColor.lightGray
        base.mj_header = header
        return self
    }
    
    @discardableResult
    func refreshFooter(_ loadMore: @escaping () -> Void) -> SFExStyle {
        let footer = MJRefreshBackNormalFooter(refreshingBlock: loadMore)
        footer.isAutomaticallyChangeAlpha = true
        footer.arrowView?.image = nil
        footer.stateLabel?.textColor = UIColor.lightGray
        footer.setTitle("- 到底了 -", for: .noMoreData)
        base.mj_footer = footer
        return self
    }
    
    /// 上拉下拉都有的时候才可以调用
    @discardableResult
    func endRefreshing(_ count: Int = 0, standard: Int = 10) -> SFExStyle {
        base.mj_header?.endRefreshing()
        count < standard
            ? base.mj_footer?.endRefreshingWithNoMoreData()
            : base.mj_footer?.endRefreshing()
        return self
    }
}

#endif
