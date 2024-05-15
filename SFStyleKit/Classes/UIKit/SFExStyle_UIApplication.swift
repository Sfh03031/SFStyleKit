//
//  SFExStyle_UIApplication.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/8.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

//MARK: - 扩展

public extension SFExStyle where Base: UIApplication {
    
    /// documents的URL
    var documentsURL: URL? {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last
    }
    
    /// documents的路径
    var documentsPath: String? {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
    }
    
    /// caches的URL
    var cachesURL: URL? {
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).last
    }
    
    /// caches的路径
    var cachesPath: String? {
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first
    }
    
    /// library的URL
    var libraryURL: URL? {
        return FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).last
    }
    
    /// library的路径
    var libraryPath: String? {
        return NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first
    }
    
    /// 内存使用情况
    var memoryUsage: String {
        var info = mach_task_basic_info()
        var count = mach_msg_type_number_t(MemoryLayout.size(ofValue: info) / MemoryLayout<integer_t>.size)
        let kerr = withUnsafeMutablePointer(to: &info) { infoPtr in
            return infoPtr.withMemoryRebound(to: integer_t.self, capacity: Int(count)) { (machPtr: UnsafeMutablePointer<integer_t>) in
                return task_info(
                    mach_task_self_,
                    task_flavor_t(MACH_TASK_BASIC_INFO),
                    machPtr,
                    &count
                )
            }
        }
        guard kerr == KERN_SUCCESS else { return "" }
        
        let fileSize = CGFloat(info.resident_size)
        
        let KB: CGFloat = 1024
        let MB: CGFloat = KB * KB
        let GB: CGFloat = MB * KB
        
        if fileSize < KB {
            return "< 1 KB"
        } else if fileSize < MB {
            return String(format: "%.1f KB", CGFloat(fileSize)/KB)
        } else if fileSize < GB {
            return String(format: "%.1f MB", CGFloat(fileSize)/MB)
        } else {
            return String(format: "%.1f GB", CGFloat(fileSize)/GB)
        }
    }
    
}
