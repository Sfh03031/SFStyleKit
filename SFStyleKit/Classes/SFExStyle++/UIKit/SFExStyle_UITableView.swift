//
//  SFExStyle_UITableView.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UITableView
public extension SFExStyle where Base: UITableView {
    
    @discardableResult
    func dataSource(_ dataSource: (any UITableViewDataSource)?) -> SFExStyle {
        base.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: (any UITableViewDelegate)?) -> SFExStyle {
        base.delegate = delegate
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    func prefetchDataSource(_ dataSource: (any UITableViewDataSourcePrefetching)?) -> SFExStyle {
        base.prefetchDataSource = dataSource
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func isPrefetchingEnabled(_ enabled: Bool) -> SFExStyle {
        base.isPrefetchingEnabled = enabled
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragDelegate(_ delegate: (any UITableViewDragDelegate)?) -> SFExStyle {
        base.dragDelegate = delegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dropDelegate(_ delegate: (any UITableViewDropDelegate)?) -> SFExStyle {
        base.dropDelegate = delegate
        return self
    }
    
    @discardableResult
    func rowHeight(_ height: CGFloat) -> SFExStyle {
        base.rowHeight = height
        return self
    }

    @discardableResult 
    func sectionHeaderHeight(_ height: CGFloat) -> SFExStyle {
        base.sectionHeaderHeight = height
        return self
    }

    @discardableResult 
    func sectionFooterHeight(_ height: CGFloat) -> SFExStyle {
        base.sectionFooterHeight = height
        return self
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    func estimatedRowHeight(_ height: CGFloat) -> SFExStyle {
        base.estimatedRowHeight = height
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func estimatedSectionHeaderHeight(_ height: CGFloat) -> SFExStyle {
        base.estimatedSectionHeaderHeight = height
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func estimatedSectionFooterHeight(_ height: CGFloat) -> SFExStyle {
        base.estimatedSectionFooterHeight = height
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func fillerRowHeight(_ height: CGFloat) -> SFExStyle {
        base.fillerRowHeight = height
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func sectionHeaderTopPadding(_ height: CGFloat) -> SFExStyle {
        base.sectionHeaderTopPadding = height
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func separatorInset(_ insets: UIEdgeInsets) -> SFExStyle {
        base.separatorInset = insets
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult 
    func separatorInsetReference(_ value: UITableView.SeparatorInsetReference) -> SFExStyle {
        base.separatorInsetReference = value
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult
    func selfSizingInvalidation(_ value: UITableView.SelfSizingInvalidation) -> SFExStyle {
        base.selfSizingInvalidation = value
        return self
    }

    @available(iOS 3.2, *)
    @discardableResult
    func backgroundView(_ view: UIView?) -> SFExStyle {
        base.backgroundView = view
        return self
    }

    @discardableResult 
    func scrollToRow(at indexPath: IndexPath, at scrollPosition: UITableView.ScrollPosition, animated: Bool) -> SFExStyle {
        base.scrollToRow(at: indexPath, at: scrollPosition, animated: animated)
        return self
    }

    @discardableResult 
    func scrollToNearestSelectedRow(at scrollPosition: UITableView.ScrollPosition, animated: Bool) -> SFExStyle {
        base.scrollToNearestSelectedRow(at: scrollPosition, animated: animated)
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult 
    func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> SFExStyle {
        base.performBatchUpdates(updates, completion: completion)
        return self
    }
    
    @discardableResult
    func beginUpdates() -> SFExStyle {
        base.beginUpdates()
        return self
    }

    @discardableResult
    func endUpdates() -> SFExStyle {
        base.endUpdates()
        return self
    }

    @discardableResult 
    func insertSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> SFExStyle {
        base.insertSections(sections, with: animation)
        return self
    }

    @discardableResult 
    func deleteSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> SFExStyle {
        base.deleteSections(sections, with: animation)
        return self
    }

    @available(iOS 5.0, *)
    @discardableResult
    func moveSection(_ section: Int, toSection newSection: Int) -> SFExStyle {
        base.moveSection(section, toSection: newSection)
        return self
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func reloadSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> SFExStyle {
        base.reloadSections(sections, with: animation)
        return self
    }

    @discardableResult 
    func insertRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> SFExStyle {
        base.insertRows(at: indexPaths, with: animation)
        return self
    }

    @discardableResult 
    func deleteRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> SFExStyle {
        base.deleteRows(at: indexPaths, with: animation)
        return self
    }
    
    @available(iOS 5.0, *)
    @discardableResult
    func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath) -> SFExStyle {
        base.moveRow(at: indexPath, to: newIndexPath)
        return self
    }

    @available(iOS 3.0, *)
    @discardableResult
    func reloadRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> SFExStyle {
        base.reloadRows(at: indexPaths, with: animation)
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func reconfigureRows(at indexPaths: [IndexPath]) -> SFExStyle {
        base.reconfigureRows(at: indexPaths)
        return self
    }

    @discardableResult 
    func reloadData() -> SFExStyle {
        base.reloadData()
        return self
    }

    @available(iOS 3.0, *)
    @discardableResult
    func reloadSectionIndexTitles() -> SFExStyle {
        base.reloadSectionIndexTitles()
        return self
    }

    @discardableResult 
    func isEditing(_ value: Bool) -> SFExStyle {
        base.isEditing = value
        return self
    }

    @discardableResult 
    func setEditing(_ editing: Bool, animated: Bool) -> SFExStyle {
        base.setEditing(editing, animated: animated)
        return self
    }

    @available(iOS 3.0, *)
    @discardableResult
    func allowsSelection(_ value: Bool) -> SFExStyle {
        base.allowsSelection = value
        return self
    }

    @discardableResult 
    func allowsSelectionDuringEditing(_ value: Bool) -> SFExStyle {
        base.allowsSelectionDuringEditing = value
        return self
    }

    @available(iOS 5.0, *)
    @discardableResult
    func allowsMultipleSelection(_ value: Bool) -> SFExStyle {
        base.allowsMultipleSelection = value
        return self
    }

    @available(iOS 5.0, *)
    @discardableResult
    func allowsMultipleSelectionDuringEditing(_ value: Bool) -> SFExStyle {
        base.allowsMultipleSelectionDuringEditing = value
        return self
    }

    @discardableResult 
    func selectRow(at indexPath: IndexPath?, animated: Bool, scrollPosition: UITableView.ScrollPosition) -> SFExStyle {
        base.selectRow(at: indexPath, animated: animated, scrollPosition: scrollPosition)
        return self
    }
    
    @discardableResult 
    func deselectRow(at indexPath: IndexPath, animated: Bool) -> SFExStyle {
        base.deselectRow(at: indexPath, animated: animated)
        return self
    }

    @discardableResult 
    func sectionIndexMinimumDisplayRowCount(_ value: Int) -> SFExStyle {
        base.sectionIndexMinimumDisplayRowCount = value
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func sectionIndexColor(_ color: UIColor?) -> SFExStyle {
        base.sectionIndexColor = color
        return self
    }

    @available(iOS 7.0, *)
    @discardableResult
    func sectionIndexBackgroundColor(_ color: UIColor?) -> SFExStyle {
        base.sectionIndexBackgroundColor = color
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func sectionIndexTrackingBackgroundColor(_ color: UIColor?) -> SFExStyle {
        base.sectionIndexTrackingBackgroundColor = color
        return self
    }

    @discardableResult 
    func separatorStyle(_ style: UITableViewCell.SeparatorStyle) -> SFExStyle {
        base.separatorStyle = style
        return self
    }

    @discardableResult 
    func separatorColor(_ color: UIColor?) -> SFExStyle {
        base.separatorColor = color
        return self
    }

    @available(iOS 8.0, *)
    @discardableResult
    func separatorEffect(_ effect: UIVisualEffect?) -> SFExStyle {
        base.separatorEffect = effect
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    func cellLayoutMarginsFollowReadableWidth(_ value: Bool) -> SFExStyle {
        base.cellLayoutMarginsFollowReadableWidth = value
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult 
    func insetsContentViewsToSafeArea(_ value: Bool) -> SFExStyle {
        base.insetsContentViewsToSafeArea = value
        return self
    }

    @discardableResult 
    func tableHeaderView(_ view: UIView?) -> SFExStyle {
        base.tableHeaderView = view
        return self
    }

    @discardableResult 
    func tableFooterView(_ view: UIView?) -> SFExStyle {
        base.tableFooterView = view
        return self
    }

    @available(iOS 5.0, *)
    @discardableResult
    func register(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> SFExStyle {
        base.register(nib, forCellReuseIdentifier: identifier)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String) -> SFExStyle {
        base.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) -> SFExStyle {
        base.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }

    @available(iOS 6.0, *)
    @discardableResult
    func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String) -> SFExStyle {
        base.register(aClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }

    @available(iOS 9.0, *)
    @discardableResult
    func remembersLastFocusedIndexPath(_ value: Bool) -> SFExStyle {
        base.remembersLastFocusedIndexPath = value
        return self
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func selectionFollowsFocus(_ value: Bool) -> SFExStyle {
        base.selectionFollowsFocus = value
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func allowsFocus(_ value: Bool) -> SFExStyle {
        base.allowsFocus = value
        return self
    }

    @available(iOS 15.0, *)
    @discardableResult
    func allowsFocusDuringEditing(_ value: Bool) -> SFExStyle {
        base.allowsFocusDuringEditing = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragInteractionEnabled(_ value: Bool) -> SFExStyle {
        base.dragInteractionEnabled = value
        return self
    }
    
    @available(iOS 18.0, *)
    @discardableResult
    func contentHuggingElements(_ value: UITableViewContentHuggingElements) -> SFExStyle {
        base.contentHuggingElements = value
        return self
    }
    
}

// MARK: Add register Selectors about UITableViewCell
public extension SFExStyle where Base: UITableView {
    
    @discardableResult
    func registerNib<T: UITableViewCell>(_: T.Type) -> SFExStyle {
        let nib = UINib(nibName: NSStringFromClass(T.self), bundle: nil)
        base.register(nib, forCellReuseIdentifier: NSStringFromClass(T.self))
        return self
    }
    
    func registerClass<T: UITableViewCell>(_: T.Type) -> SFExStyle {
        base.register(T.self, forCellReuseIdentifier: NSStringFromClass(T.self))
        return self
    }
}

#endif
