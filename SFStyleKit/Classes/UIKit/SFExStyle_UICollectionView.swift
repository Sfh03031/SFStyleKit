//
//  SFExStyle_UICollectionView.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 系统Api支持

public extension SFExStyle where Base: UICollectionView {
    
    @discardableResult
    func delegate(_ delegate: UICollectionViewDelegate?) -> SFExStyle {
        base.delegate = delegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragDelegate(_ delegate: UICollectionViewDragDelegate?) -> SFExStyle {
        base.dragDelegate = delegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dropDelegate(_ delegate: UICollectionViewDropDelegate?) -> SFExStyle {
        base.dropDelegate = delegate
        return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UICollectionViewDataSource?) -> SFExStyle {
        base.dataSource = dataSource
        return self
    }

    @discardableResult 
    func collectionViewLayout(_ layout: UICollectionViewLayout) -> SFExStyle {
        base.collectionViewLayout = layout
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult 
    func prefetchDataSource(_ dataSource: UICollectionViewDataSourcePrefetching?) -> SFExStyle {
        base.prefetchDataSource = dataSource
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult 
    func isPrefetchingEnabled(_ enabled: Bool) -> SFExStyle {
        base.isPrefetchingEnabled = enabled
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult 
    func dragInteractionEnabled(_ enabled: Bool) -> SFExStyle {
        base.dragInteractionEnabled = enabled
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult 
    func reorderingCadence(_ cadence: UICollectionView.ReorderingCadence) -> SFExStyle {
        base.reorderingCadence = cadence
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult
    func selfSizingInvalidation(_ invalidation: UICollectionView.SelfSizingInvalidation) -> SFExStyle {
        base.selfSizingInvalidation = invalidation
        return self
    }

    @discardableResult 
    func backgroundView(_ view: UIView) -> SFExStyle {
        base.backgroundView = view
        return self
    }

    @discardableResult 
    func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) -> SFExStyle {
        base.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }

    @discardableResult 
    func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) -> SFExStyle {
        base.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }

    @discardableResult 
    func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String) -> SFExStyle {
        base.register(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
        return self
    }

    @discardableResult 
    func register(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) -> SFExStyle {
        base.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }

    @discardableResult 
    func allowsSelection(_ enabled: Bool) -> SFExStyle {
        base.allowsSelection = enabled
        return self
    }

    @discardableResult 
    func allowsMultipleSelection(_ enabled: Bool) -> SFExStyle {
        base.allowsMultipleSelection = enabled
        return self
    }

    @discardableResult 
    func selectItem(at indexPath: IndexPath?, animated: Bool, scrollPosition: UICollectionView.ScrollPosition) -> SFExStyle {
        base.selectItem(at: indexPath, animated: animated, scrollPosition: scrollPosition)
        return self
    }

    @discardableResult 
    func deselectItem(at indexPath: IndexPath, animated: Bool) -> SFExStyle {
        base.deselectItem(at: indexPath, animated: animated)
        return self
    }

    @discardableResult 
    func reloadData() -> SFExStyle {
        base.reloadData()
        return self
    }

    @discardableResult 
    func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool) -> SFExStyle {
        base.setCollectionViewLayout(layout, animated: animated)
        return self
    }

    @discardableResult 
    func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil) -> SFExStyle {
        base.setCollectionViewLayout(layout, animated: animated, completion: completion)
        return self
    }

    @discardableResult 
    func finishInteractiveTransition() -> SFExStyle {
        base.finishInteractiveTransition()
        return self
    }

    @discardableResult 
    func cancelInteractiveTransition() -> SFExStyle {
        base.cancelInteractiveTransition()
        return self
    }

    @discardableResult 
    func scrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition, animated: Bool) -> SFExStyle {
        base.scrollToItem(at: indexPath, at: scrollPosition, animated: animated)
        return self
    }

    @discardableResult 
    func insertSections(_ sections: IndexSet) -> SFExStyle {
        base.insertSections(sections)
        return self
    }

    @discardableResult 
    func deleteSections(_ sections: IndexSet) -> SFExStyle {
        base.deleteSections(sections)
        return self
    }
    
    @discardableResult
    func moveSection(_ section: Int, toSection newSection: Int) -> SFExStyle {
        base.moveSection(section, toSection: newSection)
        return self
    }

    @discardableResult 
    func reloadSections(_ sections: IndexSet) -> SFExStyle {
        base.reloadSections(sections)
        return self
    }

    @discardableResult 
    func insertItems(at indexPaths: [IndexPath]) -> SFExStyle {
        base.insertItems(at: indexPaths)
        return self
    }

    @discardableResult 
    func deleteItems(at indexPaths: [IndexPath]) -> SFExStyle {
        base.deleteItems(at: indexPaths)
        return self
    }

    @discardableResult
    func moveItem(at indexPath: IndexPath, to newIndexPath: IndexPath) -> SFExStyle {
        base.moveItem(at: indexPath, to: newIndexPath)
        return self
    }
    
    @discardableResult
    func reloadItems(at indexPaths: [IndexPath]) -> SFExStyle {
        base.reloadItems(at: indexPaths)
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func reconfigureItems(at indexPaths: [IndexPath]) -> SFExStyle {
        base.reconfigureItems(at: indexPaths)
        return self
    }

    @discardableResult 
    func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> SFExStyle {
        base.performBatchUpdates(updates, completion: completion)
        return self
    }

    @discardableResult 
    func updateInteractiveMovementTargetPosition(_ targetPosition: CGPoint) -> SFExStyle {
        base.updateInteractiveMovementTargetPosition(targetPosition)
        return self
    }

    @discardableResult 
    func endInteractiveMovement() -> SFExStyle {
        base.endInteractiveMovement()
        return self
    }

    @discardableResult 
    func cancelInteractiveMovement() -> SFExStyle {
        base.cancelInteractiveMovement()
        return self
    }

    @discardableResult 
    func remembersLastFocusedIndexPath(_ enabled: Bool) -> SFExStyle {
        base.remembersLastFocusedIndexPath = enabled
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func selectionFollowsFocus(_ focus: Bool) -> SFExStyle {
        base.selectionFollowsFocus = focus
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func allowsFocus(_ allows: Bool) -> SFExStyle {
        base.allowsFocus = allows
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func allowsFocusDuringEditing(_ allows: Bool) -> SFExStyle {
        base.allowsFocusDuringEditing = allows
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func isEditing(_ editing: Bool) -> SFExStyle {
        base.isEditing = editing
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func allowsSelectionDuringEditing(_ allows: Bool) -> SFExStyle {
        base.allowsSelectionDuringEditing = allows
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func allowsMultipleSelectionDuringEditing(_ allows: Bool) -> SFExStyle {
        base.allowsMultipleSelectionDuringEditing = allows
        return self
    }
}


public extension SFExStyle where Base: UICollectionView {
    
    @discardableResult
    func registerNib<T: UICollectionViewCell>(_: T.Type) -> SFExStyle {
        let nib = UINib(nibName: T.sf.reuseIdentifier, bundle: nil)
        base.register(nib, forCellWithReuseIdentifier: T.sf.reuseIdentifier)
        return self
    }
    
    @discardableResult
    func registerClass<T: UICollectionViewCell>(_: T.Type) -> SFExStyle {
        base.register(T.self, forCellWithReuseIdentifier: T.sf.reuseIdentifier)
        return self
    }
    
    @discardableResult
    func registerHeaderNib<T: UICollectionReusableView>(_: T.Type) -> SFExStyle {
        let nib = UINib(nibName: T.sf.reuseIdentifier, bundle: nil)
        base.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.sf.reuseIdentifier)
        return self
    }
    
    @discardableResult
    func registerHeaderClass<T: UICollectionReusableView>(_: T.Type) -> SFExStyle {
        base.register(T.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.sf.reuseIdentifier)
        return self
    }
    
    @discardableResult
    func registerFooterNib<T: UICollectionReusableView>(_: T.Type) -> SFExStyle {
        let nib = UINib(nibName: T.sf.reuseIdentifier, bundle: nil)
        base.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.sf.reuseIdentifier)
        return self
    }
    
    @discardableResult
    func registerFooterClass<T: UICollectionReusableView>(_: T.Type) -> SFExStyle {
        base.register(T.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.sf.reuseIdentifier)
        return self
    }
}
