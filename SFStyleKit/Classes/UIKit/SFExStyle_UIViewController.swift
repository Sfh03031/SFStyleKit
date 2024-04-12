//
//  SFExStyle_UIViewController.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

public extension SFExStyle where Base: UIViewController {
    
    @discardableResult
    func push(_ vc: UIViewController, animated: Bool = true) -> SFExStyle {
        base.navigationController?.pushViewController(vc, animated: animated)
        return self
    }

    @discardableResult
    func pop(_ animated: Bool = true) -> SFExStyle {
        base.navigationController?.popViewController(animated: animated)
        return self
    }

    @discardableResult
    func present(_ vc: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) -> SFExStyle {
        base.present(vc, animated: animated, completion: completion)
        return self
    }

    @discardableResult
    func dismiss(_ animated: Bool = true, completion: (() -> Void)? = nil) -> SFExStyle {
        base.dismiss(animated: animated, completion: completion)
        return self
    }
    
}
