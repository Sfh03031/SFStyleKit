//
//  Bundle++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(Foundation)

import Foundation

public extension Bundle {
    
    /// CFBundleShortVersionString
    var appVersion: String {
        return self.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    }
    
    /// CFBundleVersion
    var appBuild: String {
        return self.infoDictionary?["CFBundleVersion"] as? String ?? ""
    }
    
    /// default = `CFBundleDisplayName`, if nil, default = `CFBundleName`
    var appName: String {
        return self.infoDictionary?["CFBundleDisplayName"] as? String ?? (Bundle.main.infoDictionary?["CFBundleName"] as? String ?? "")
    }
    
    /// CFBundleIdentifier
    var appBundleId: String {
        return self.infoDictionary?["CFBundleIdentifier"] as? String ?? ""
    }
    
    /// CFBundleName
    var appNameSpace: String {
        return self.infoDictionary?["CFBundleName"] as? String ?? ""
    }

}

// MARK: Load files
public extension Bundle {
    
    /// Load json file
    /// - Parameter name: name of json file
    /// - Returns: json or nil
    func loadJSON(_ name: String) -> Any? {
        if let path = self.path(forResource: name, ofType: "json") {
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
    
    /// Load plist file
    /// - Parameter name: name of plist file
    /// - Returns: objc or nil
    func loadPlist(_ name: String) -> [String: Any]? {
        if let plistPath = self.path(forResource: name, ofType: "plist"),
           let dict = NSDictionary(contentsOfFile: plistPath) as? [String: Any] {
            return dict
        }
        return nil
    }
    
}

// MARK: Load target bundle
public extension Bundle {
    
    /// Load bundle by name of bundle
    /// - Parameters:
    ///   - byName: bundle name
    ///   - cls: any class
    /// - Returns: target bundle
    static func loadBundle(byName name: String, cls: AnyClass) -> Bundle? {
        let bundle = Bundle(for: cls)
        guard let path = bundle.path(forResource: name, ofType: "bundle") else { return nil }
        return Bundle(path: path)
    }
    
    /// Load bundle by resource of bundle
    /// - Parameters:
    ///   - byResource: resource name
    ///   - cls: any class
    /// - Returns: target bundle
    static func loadBundle(byResource resource: String? = nil, cls: AnyClass) -> Bundle? {
        let bundle = Bundle(for: cls)
        guard let bundleURL = bundle.url(forResource: resource, withExtension: "bundle") else { return nil }
        return Bundle(url: bundleURL)
    }
    
}

#endif
