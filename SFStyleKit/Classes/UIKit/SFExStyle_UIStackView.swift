//
//  SFExStyle_UIStackView.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/10.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 系统Api支持

public extension SFExStyle where Base: UIStackView {
    
    @discardableResult
    func add(subviews views: [UIView]) -> SFExStyle {
        views.forEach { base.addArrangedSubview($0) }
        return self
    }
    
    @discardableResult
    func remove(subview view: UIView) -> SFExStyle {
        base.removeArrangedSubview(view)
        return self
    }
    
    @discardableResult
    func remove(subviews views: [UIView]) -> SFExStyle {
        views.forEach { base.removeArrangedSubview($0) }
        return self
    }
    
    @discardableResult
    func insert(subview view: UIView, at: Int) -> SFExStyle {
        base.insertArrangedSubview(view, at: at)
        return self
    }
    
    @discardableResult
    func axis(_ a: NSLayoutConstraint.Axis) -> SFExStyle {
        base.axis = a
        return self
    }
    
    @discardableResult
    func distribution(_ a: UIStackView.Distribution) -> SFExStyle {
        base.distribution = a
        return self
    }
    
    @discardableResult
    func alignment(_ a: UIStackView.Alignment) -> SFExStyle {
        base.alignment = a
        return self
    }

    @discardableResult
    func spacing(_ a: CGFloat) -> SFExStyle {
        base.spacing = a
        return self
    }
    
    @discardableResult
    @available(iOS 11.0, *)
    func custom(_ spacing: CGFloat, after subview: UIView) -> SFExStyle {
        base.setCustomSpacing(spacing, after: subview)
        return self
    }
    
    /// 布局时是否参照基准线，默认是NO
    @discardableResult
    func isBaselineRelativeArrangement(_ a: Bool) -> SFExStyle {
        base.isBaselineRelativeArrangement = a
        return self
    }
    
    /// 设置布局时是否以控件的LayoutMargins为标准，默认为NO，是以控件的bounds为标准
    @discardableResult
    func isLayoutMarginsRelativeArrangement(_ a: Bool) -> SFExStyle {
        base.isLayoutMarginsRelativeArrangement = a
        return self
    }
}
