//
//  SFExStyle_Bundle.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation

public extension SFExStyle where Base: Bundle {
    
    /// 应用发布版本
    var app_version: String {
        return base.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
    
    /// 应用构建版本
    var app_build: String {
        return base.infoDictionary?["CFBundleVersion"] as? String ?? ""
    }
    
    /// 应用名称
    var app_name: String {
        return base.infoDictionary?["CFBundleDisplayName"] as? String ?? (Bundle.main.infoDictionary?["CFBundleName"] as? String ?? "")
    }
    
    /// 应用唯一标识
    var app_bundleId: String {
        return base.infoDictionary?["CFBundleIdentifier"] as? String ?? ""
    }
    
    /// 应用命名空间
    var app_namespace: String {
        return base.infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    /// 获取资源bundle，加载图片、文件等资源
    /// - Parameters:
    ///   - cls: 任意类
    ///   - bundleName: bundle名字
    /// - Returns: 目标bundle
    static func loadBundle(cls: AnyClass, bundleName: String) -> Bundle? {
        let bundle = Bundle(for: cls)
        guard let path = bundle.path(forResource: bundleName, ofType: "bundle") else { return nil }
        return Bundle(path: path)
    }
    
    /// 跨模块获取bundle, 获取xib storyboard
    /// - Parameters:
    ///   - cls: 任意类
    ///   - module: 模块名
    /// - Returns: 目标bundle
    static func moduleBundle(_ cls: AnyClass, _ module: String? = nil) -> Bundle? {
        let bundle = Bundle(for: cls)
        guard let bundleURL = bundle.url(forResource: module, withExtension: "bundle") else { return nil }
        return Bundle(url: bundleURL)
    }
    
    /// 获取json文件
    /// - Parameter name: 文件名, 不带后缀
    func loadJSON(with name: String) -> Any? {
        if let path = base.path(forResource: name, ofType: "json") {
            let url = URL(fileURLWithPath: path, isDirectory: true)
            do {
                let data = try Data(contentsOf: url)
                if let value = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) {
                   return value
                }
            } catch {
                return nil
            }
        }
        return nil
    }
    
    /// 获取plist文件
    /// - Parameter name: 文件名, 不带后缀
    func loadPlist(with name: String) -> [String: Any]? {
        if let plistPath = base.path(forResource: name, ofType: "plist"),
           let dict = NSDictionary(contentsOfFile: plistPath) as? [String: Any] {
            return dict
        }
        return nil
    }
    
}
