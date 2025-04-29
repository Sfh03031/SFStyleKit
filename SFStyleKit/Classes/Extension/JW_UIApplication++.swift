//
//  UIApplication++.swift
//  Pods
//
//  Created by sfh on 2025/4/25.
//

#if canImport(UIKit)

import UIKit

public extension UIApplication {
    
    /// documents URL
    var DocumentsURL: URL? {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last
    }
    
    /// documents path
    var DocumentsPath: String? {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
    }
    
    /// caches URL
    var CachesURL: URL? {
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).last
    }
    
    /// caches path
    var CachesPath: String? {
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first
    }
    
    /// library URL
    var LibraryURL: URL? {
        return FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).last
    }
    
    /// library path
    var LibraryPath: String? {
        return NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first
    }
    
    /// MemoryUsage
    var MemoryUsage: String {
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

#endif
