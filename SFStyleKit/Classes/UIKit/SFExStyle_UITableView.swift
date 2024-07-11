//
//  SFExStyle_UITableView.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 系统Api支持

public extension SFExStyle where Base: UITableView {
    
    @discardableResult
    func delegate(_ delegate: UITableViewDelegate?) -> SFExStyle {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UITableViewDataSource?) -> SFExStyle {
        base.dataSource = dataSource
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragDelegate(_ delegate: UITableViewDragDelegate?) -> SFExStyle {
        base.dragDelegate = delegate
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dropDelegate(_ delegate: UITableViewDropDelegate?) -> SFExStyle {
        base.dropDelegate = delegate
        return self
    }

    @available(iOS 10.0, *)
    @discardableResult 
    func prefetchDataSource(_ dataSource: UITableViewDataSourcePrefetching?) -> SFExStyle {
        base.prefetchDataSource = dataSource
        return self
    }
    
    @available(iOS 15.0, *)
    @discardableResult
    func isPrefetchingEnabled(_ enabled: Bool) -> SFExStyle {
        base.isPrefetchingEnabled = enabled
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
    
    @discardableResult 
    func estimatedRowHeight(_ height: CGFloat) -> SFExStyle {
        base.estimatedRowHeight = height
        return self
    }

    @discardableResult 
    func estimatedSectionHeaderHeight(_ height: CGFloat) -> SFExStyle {
        base.estimatedSectionHeaderHeight = height
        return self
    }

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

    @discardableResult 
    func separatorInset(_ edgeInsets: UIEdgeInsets) -> SFExStyle {
        base.separatorInset = edgeInsets
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult 
    func separatorInsetReference(_ reference: UITableView.SeparatorInsetReference) -> SFExStyle {
        base.separatorInsetReference = reference
        return self
    }
    
    @available(iOS 16.0, *)
    @discardableResult
    func selfSizingInvalidation(_ invalidation: UITableView.SelfSizingInvalidation) -> SFExStyle {
        base.selfSizingInvalidation = invalidation
        return self
    }

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

    @discardableResult
    func moveSection(_ section: Int, toSection newSection: Int) -> SFExStyle {
        base.moveSection(section, toSection: newSection)
        return self
    }
    
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
    
    @discardableResult
    func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath) -> SFExStyle {
        base.moveRow(at: indexPath, to: newIndexPath)
        return self
    }

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

    @discardableResult 
    func reloadSectionIndexTitles() -> SFExStyle {
        base.reloadSectionIndexTitles()
        return self
    }

    @discardableResult 
    func isEditing(_ editing: Bool) -> SFExStyle {
        base.isEditing = editing
        return self
    }

    @discardableResult 
    func setEditing(_ editing: Bool, animated: Bool) -> SFExStyle {
        base.setEditing(editing, animated: animated)
        return self
    }

    @discardableResult 
    func allowsSelection(_ enabled: Bool) -> SFExStyle {
        base.allowsSelection = enabled
        return self
    }

    @discardableResult 
    func allowsSelectionDuringEditing(_ enabled: Bool) -> SFExStyle {
        base.allowsSelectionDuringEditing = enabled
        return self
    }

    @discardableResult 
    func allowsMultipleSelection(_ enabled: Bool) -> SFExStyle {
        base.allowsMultipleSelection = enabled
        return self
    }

    @discardableResult 
    func allowsMultipleSelectionDuringEditing(_ enabled: Bool) -> SFExStyle {
        base.allowsMultipleSelectionDuringEditing = enabled
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
    func sectionIndexMinimumDisplayRowCount(_ count: Int) -> SFExStyle {
        base.sectionIndexMinimumDisplayRowCount = count
        return self
    }

    @discardableResult 
    func sectionIndexColor(_ color: UIColor?) -> SFExStyle {
        base.sectionIndexColor = color
        return self
    }

    @discardableResult 
    func sectionIndexBackgroundColor(_ color: UIColor?) -> SFExStyle {
        base.sectionIndexBackgroundColor = color
        return self
    }

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

    @discardableResult 
    func separatorEffect(_ effect: UIVisualEffect?) -> SFExStyle {
        base.separatorEffect = effect
        return self
    }

    @discardableResult 
    func cellLayoutMarginsFollowReadableWidth(_ enabled: Bool) -> SFExStyle {
        base.cellLayoutMarginsFollowReadableWidth = enabled
        return self
    }

    @available(iOS 11.0, *)
    @discardableResult 
    func insetsContentViewsToSafeArea(_ enabled: Bool) -> SFExStyle {
        base.insetsContentViewsToSafeArea = enabled
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

    @discardableResult 
    func register(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> SFExStyle {
        base.register(nib, forCellReuseIdentifier: identifier)
        return self
    }

    @discardableResult 
    func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String) -> SFExStyle {
        base.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }

    @discardableResult 
    func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) -> SFExStyle {
        base.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }

    @discardableResult 
    func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String) -> SFExStyle {
        base.register(aClass, forHeaderFooterViewReuseIdentifier: identifier)
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
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragInteractionEnabled(_ enabled: Bool) -> SFExStyle {
        base.dragInteractionEnabled = enabled
        return self
    }
    
}


public extension SFExStyle where Base: UITableView {
    
    @discardableResult
    func registerNib<T: UITableViewCell>(_: T.Type) -> SFExStyle {
        let nib = UINib(nibName: String(describing: T.self), bundle: nil)
        base.register(nib, forCellReuseIdentifier: String(describing: T.self))
        return self
    }
    
    func registerClass<T: UITableViewCell>(_: T.Type) -> SFExStyle {
        base.register(T.self, forCellReuseIdentifier: String(describing: T.self))
        return self
    }
}
