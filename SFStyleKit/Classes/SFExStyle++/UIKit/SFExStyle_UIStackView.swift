//
//  SFExStyle_UIStackView.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/10.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

#if canImport(UIKit)

import UIKit

// MARK: Support SFExStyle for system Api of UIStackView
public extension SFExStyle where Base: UIStackView {
    
    @discardableResult
    func addArrangedSubview(_ view: UIView) -> SFExStyle {
        base.addArrangedSubview(view)
        return self
    }
    
    @discardableResult
    func removeArrangedSubview(_ view: UIView) -> SFExStyle {
        base.removeArrangedSubview(view)
        return self
    }
    
    @discardableResult
    func insertArrangedSubview(_ view: UIView, at: Int) -> SFExStyle {
        base.insertArrangedSubview(view, at: at)
        return self
    }
    
    @discardableResult
    func axis(_ value: NSLayoutConstraint.Axis) -> SFExStyle {
        base.axis = value
        return self
    }
    
    @discardableResult
    func distribution(_ value: UIStackView.Distribution) -> SFExStyle {
        base.distribution = value
        return self
    }
    
    @discardableResult
    func alignment(_ value: UIStackView.Alignment) -> SFExStyle {
        base.alignment = value
        return self
    }

    @discardableResult
    func spacing(_ value: CGFloat) -> SFExStyle {
        base.spacing = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func setCustomSpacing(_ spacing: CGFloat, after subview: UIView) -> SFExStyle {
        base.setCustomSpacing(spacing, after: subview)
        return self
    }
    
    /// 布局时是否参照基准线，默认是NO
    @discardableResult
    func isBaselineRelativeArrangement(_ value: Bool) -> SFExStyle {
        base.isBaselineRelativeArrangement = value
        return self
    }
    
    /// 设置布局时是否以控件的LayoutMargins为标准，默认为NO，是以控件的bounds为标准
    @discardableResult
    func isLayoutMarginsRelativeArrangement(_ value: Bool) -> SFExStyle {
        base.isLayoutMarginsRelativeArrangement = value
        return self
    }
}

// MARK: Extension `add` and `remove`
public extension SFExStyle where Base: UIStackView {
    
    @discardableResult
    func add(subviews views: [UIView]) -> SFExStyle {
        views.forEach { base.addArrangedSubview($0) }
        return self
    }
    
    @discardableResult
    func remove(subviews views: [UIView]) -> SFExStyle {
        views.forEach { base.removeArrangedSubview($0) }
        return self
    }
    
}

#endif
