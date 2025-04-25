//
//  UIViewController++.swift
//  Pods
//
//  Created by sfh on 2025/4/25.
//

#if canImport(UIKit)

import UIKit

public extension UIViewController {
    
    func push(_ vc: UIViewController, animated: Bool = true) {
        self.navigationController?.pushViewController(vc, animated: animated)
    }

    func pop(_ animated: Bool = true) {
        self.navigationController?.popViewController(animated: animated)
    }

    func present(_ vc: UIViewController, animated: Bool = true, complete: (() -> Void)? = nil) {
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: animated, completion: complete)
    }
    
    func dismiss(_ animated: Bool = true, complete: (() -> Void)? = nil) {
        self.dismiss(animated: animated, completion: complete)
    }
    
}

#endif
