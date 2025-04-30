//
//  JW_UIDevice++.swift
//  Pods
//
//  Created by sfh on 2025/4/25.
//

#if canImport(UIKit)

import UIKit
import CoreTelephony
import AVFoundation

public extension UIDevice {
    
    /// 设备idfv
    var Idfv: String {
        return UIDevice.current.identifierForVendor?.uuidString ?? ""
    }
    
    /// 设备系列名称，iPhone, iPod touch, iPad...
    var Model: String {
        return UIDevice.current.model
    }
    
    /// 设备系列简称
    var LocalizedModel: String {
        return UIDevice.current.localizedModel
    }
    
    /// 设备名称，如 XXX的iPhone...
    var Name: String {
        return UIDevice.current.name
    }
    
    /// 设备运行的系统名称
    var SystemName: String {
        return UIDevice.current.systemName
    }
    
    /// 设备运行的系统版本
    var SystemVersion: String {
        return UIDevice.current.systemVersion
    }

    /// 获取UUID
    var UUIDCreated: String {
        let uuid = CFUUIDCreate(nil)
        let value = CFUUIDCreateString(nil, uuid)
        return String(describing: value)
    }
    
    /// 判断设备是否是模拟器
    var isSimulator: Bool {
        var isSimu = false
        #if arch(i386) || arch(x86_64)
        isSimu = true
        #endif
        return isSimu
    }
    
    /// 剪切板第一个字符串类型的内容
    var PasteBoardValue: String {
        return UIPasteboard.general.string ?? ""
    }
    
    /// 电池电量
    var BatteryLevel: String {
        UIDevice.current.isBatteryMonitoringEnabled = true
        return String(format: "%.2f", UIDevice.current.batteryLevel)
    }
    
    /// 电池状态
    var BatteryState: String {
        UIDevice.current.isBatteryMonitoringEnabled = true
        let state = UIDevice.current.batteryState
        switch state {
        case .unplugged:
            return "未充电"
        case .charging:
            return "充电中"
        case .full:
            return "已充满"
        default:
            return "未知"
        }
    }
    
    /// 方向
    var Orientation: String {
        let state = UIDevice.current.orientation
        switch state {
        case .portrait:
            return "上"
        case .portraitUpsideDown:
            return "下"
        case .landscapeLeft:
            return "左"
        case .landscapeRight:
            return "右"
        case .faceUp:
            return "屏幕向上"
        case .faceDown:
            return "屏幕向下"
        default:
            return "未知"
        }
    }
    
    /// 屏幕分辨率
    var Resolution: CGSize {
        let bounds = UIScreen.main.bounds
        let scale = UIScreen.main.scale
        let size = CGSizeMake(bounds.size.width * scale, bounds.size.height * scale)
        return size
    }
    
    /// 屏幕亮度
    var Brightness: CGFloat {
        return UIScreen.main.brightness
    }
    
    /// 设备音量
    var Volume: String {
        let volume: Float = AVAudioSession.sharedInstance().outputVolume
        return String(format: "%.2f", volume)
    }
    
    /// 判断设备是否越狱
    var isJailbreak: Bool {
        if isSimulator { return false }
        
        let paths = [
            "/Applications/Cydia.app",
            "/private/var/lib/apt/",
            "/private/var/lib/cydia",
            "/private/var/stash",
        ]
        
        for path in paths {
            if FileManager.default.fileExists(atPath: path) {
                return true
            }
        }
        
        let path = "/private/\(UUIDCreated)"
        do {
            try "test".write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
            try FileManager.default.removeItem(atPath: path)
            return true
        } catch {
            return false
        }
    }
    
    /// 机型
    var DeviceType: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { partialResult, element in
            guard let value = element.value as? Int8, value != 0 else { return partialResult }
            return partialResult + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
    
    /// 设备型号名称
    var DeviceName: String {
        let machine = DeviceType
        switch machine {
            //iPhone系列
        case "iPhone1,1":
            return "iPhone"
        case "iPhone1,2":
            return "iPhone 3G"
        case "iPhone2,1":
            return "iPhone 3GS"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":
            return "iPhone 4"
        case "iPhone4,1":
            return "iPhone 4S"
        case "iPhone5,1", "iPhone5,2":
            return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":
            return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":
            return "iPhone 5s"
        case "iPhone7,2":
            return "iPhone 6"
        case "iPhone7,1":
            return "iPhone 6 Plus"
        case "iPhone8,1":
            return "iPhone 6s"
        case "iPhone8,2":
            return "iPhone 6s Plus"
        case "iPhone8,4":
            return "iPhone SE (1st generation)"
        case "iPhone9,1", "iPhone9,3":
            return "iPhone 7"
        case "iPhone9,2", "iPhone9,4":
            return "iPhone 7 Plus"
        case "iPhone10,1", "iPhone10,4":
            return "iPhone 8"
        case "iPhone10,5", "iPhone10,2":
            return "iPhone 8 Plus"
        case "iPhone10,3", "iPhone10,6":
            return "iPhone X"
        case "iPhone11,8":
            return "iPhone XR"
        case "iPhone11,2":
            return "iPhone XS"
        case "iPhone11,6", "iPhone11,4":
            return "iPhone XS Max"
        case "iPhone12,1":
            return "iPhone 11"
        case "iPhone12,3":
            return "iPhone 11 Pro"
        case "iPhone12,5":
            return "iPhone 11 Pro Max"
        case "iPhone12,8":
            return "iPhone SE (2nd generation)"
        case "iPhone13,1":
            return "iPhone 12 mini"
        case "iPhone13,2":
            return "iPhone 12"
        case "iPhone13,3":
            return "iPhone 12 Pro"
        case "iPhone13,4":
            return "iPhone 12 Pro Max"
        case "iPhone14,4":
            return "iPhone 13 mini"
        case "iPhone14,5":
            return "iPhone 13"
        case "iPhone14,2":
            return "iPhone 13 Pro"
        case "iPhone14,3":
            return "iPhone 13 Pro Max"
        case "iPhone14,6":
            return "iPhone SE (3rd generation)"
        case "iPhone14,7":
            return "iPhone 14"
        case "iPhone14,8":
            return "iPhone 14 Plus"
        case "iPhone15,2":
            return "iPhone 14 Pro"
        case "iPhone15,3":
            return "iPhone 14 Pro Max"
        case "iPhone15,4":
            return "iPhone 15"
        case "iPhone15,5":
            return "iPhone 15 Plus"
        case "iPhone16,1":
            return "iPhone 15 Pro"
        case "iPhone16,2":
            return "iPhone 15 Pro Max"
        case "iPhone17,3":
            return "iPhone 16"
        case "iPhone17,4":
            return "iPhone 16 Plus"
        case "iPhone17,1":
            return "iPhone 16 Pro"
        case "iPhone17,2":
            return "iPhone 16 Pro Max"
            //iPod系列
        case "iPod1,1":
            return "iPod touch"
        case "iPod2,1":
            return "iPod touch (2nd generation)"
        case "iPod3,1":
            return "iPod touch (3rd generation)"
        case "iPod4,1":
            return "iPod touch (4th generation)"
        case "iPod5,1":
            return "iPod touch (5th generation)"
        case "iPod7,1":
            return "iPod touch (6th generation)"
        case "iPod9,1":
            return "iPod touch (7th generation)"
            //iPad系列
        case "iPad1,1":
            return "iPad"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":
            return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":
            return "iPad (3rd generation)"
        case "iPad3,4", "iPad3,5", "iPad3,6":
            return "iPad (4th generation)"
        case "iPad6,11", "iPad6,12":
            return "iPad (5th generation)"
        case "iPad7,5", "iPad7,6":
            return "iPad (6th generation)"
        case "iPad7,11", "iPad7,12":
            return "iPad (7th generation)"
        case "iPad11,6", "iPad11,7":
            return "iPad (8th generation)"
        case "iPad12,1", "iPad12,2":
            return "iPad (9th generation)"
        case "iPad13,18", "iPad13,19":
            return "iPad (10th generation)"
            //iPad Air系列
        case "iPad4,1", "iPad4,2", "iPad4,3":
            return "iPad Air"
        case "iPad5,3", "iPad5,4":
            return "iPad Air 2"
        case "iPad11,3", "iPad11,4":
            return "iPad Air (3rd generation)"
        case "iPad13,1", "iPad13,2":
            return "iPad Air (4th generation)"
        case "iPad13,16", "iPad13,17":
            return "iPad Air (5th generation)"
        case "iPad14,8", "iPad14,9":
            return "iPad Air 11-inch (M2)"
        case "iPad14,10", "iPad14,11":
            return "iPad Air 13-inch (M2)"
            //iPad Pro系列
        case "iPad6,7", "iPad6,8":
            return "iPad Pro (12.9-inch)"
        case "iPad6,3", "iPad6,4":
            return "iPad Pro (9.7-inch)"
        case "iPad7,1", "iPad7,2":
            return "iPad Pro (12.9-inch)(2nd generation)"
        case "iPad7,3", "iPad7,4":
            return "iPad Pro (10.5-inch)"
        case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":
            return "iPad Pro (11-inch)"
        case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":
            return "iPad Pro (12.9-inch)(3rd generation)"
        case "iPad8,9", "iPad8,10":
            return "iPad Pro (11-inch)(2nd generation)"
        case "iPad8,11", "iPad8,12":
            return "iPad Pro (12.9-inch)(4th generation)"
        case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7":
            return "iPad Pro (11-inch)(3rd generation)"
        case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11":
            return "iPad Pro (12.9-inch)(5th generation)"
        case "iPad16,3", "iPad16,4":
            return "iPad Pro 11-inch (M4)"
        case "iPad16,5", "iPad16,6":
            return "iPad Pro 13-inch (M4)"
            //iPad mini系列
        case "iPad2,5", "iPad2,6", "iPad2,7":
            return "iPad mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":
            return "iPad mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":
            return "iPad mini 3"
        case "iPad5,1", "iPad5,2":
            return "iPad mini 4"
        case "iPad11,1", "iPad11,2":
            return "iPad mini (5th generation)"
        case "iPad14,1", "iPad14,2":
            return "iPad mini (6th generation)"
            
        case "i386", "x86_64":
            return "Simulator"
        default:
            return machine
        }
    }
    
    /// 获取wifi网络的IPAddress
    var IpAddress: String? {
        var address: String?
        var ifaddr: UnsafeMutablePointer<ifaddrs>?
        if getifaddrs(&ifaddr) == 0 {
            var ptr = ifaddr
            while ptr != nil {
                // memory has been renamed to pointee in swift 3 so changed memory to pointee
                defer { ptr = ptr?.pointee.ifa_next }
                guard let interface = ptr?.pointee else {
                    return nil
                }
                let addrFamily = interface.ifa_addr.pointee.sa_family
                if addrFamily == UInt8(AF_INET) || addrFamily == UInt8(AF_INET6) {
                    guard let ifa_name = interface.ifa_name else {
                        return nil
                    }
                    let name: String = String(cString: ifa_name)
                    // String.fromCString() is deprecated in Swift 3. So use the following code inorder to get the exact IP Address.
                    if name == "en0" {
                        var hostname = [CChar](repeating: 0, count: Int(NI_MAXHOST))
                        getnameinfo(interface.ifa_addr, socklen_t((interface.ifa_addr.pointee.sa_len)), &hostname, socklen_t(hostname.count), nil, socklen_t(0), NI_NUMERICHOST)
                        // 一般公司都算小公司，被分配C类网段，192打头，A类网段10打头，B类网段172打头
                        address = String(cString: hostname)
                    }
                }
            }
            freeifaddrs(ifaddr)
        }
        return address
    }
    
    /// 获取运营商信息
    /// - CTCarrier已在16.0被废弃，固定返回 “--”
    var SimProvider: String {
//        var supplier:String?
//        let info = CTTelephonyNetworkInfo()
//        if #available(iOS 12.0, *) {
//            if let carriers = info.serviceSubscriberCellularProviders {
//                for item in carriers.values {
//                    if item.mobileNetworkCode != nil {
//                        supplier = item.carrierName
//                    }
//                }
//            }
//        } else {
//            if let carrier = info.subscriberCellularProvider {
//                supplier = carrier.carrierName
//            }
//        }
//
//        return supplier ?? ""
        return "--"
    }
    
    /// 设备cpu核数
    var CpuCoreNum: String {
        var ncpu = UInt(0)
        var len = MemoryLayout.size(ofValue: ncpu)
        sysctlbyname("hw.ncpu", &ncpu, &len, nil, 0)
        return "\(Int(ncpu))"
    }
    
    /// 设备cpu类型
    var CpuType: String {
        let HOST_BASIC_INFO_COUNT = MemoryLayout<host_basic_info>.stride/MemoryLayout<integer_t>.stride
        var size = mach_msg_type_number_t(HOST_BASIC_INFO_COUNT)
        var hostInfo = host_basic_info()
        _ = withUnsafeMutablePointer(to: &hostInfo) {
            $0.withMemoryRebound(to: integer_t.self, capacity:Int(size)){
                host_info(mach_host_self(), Int32(HOST_BASIC_INFO), $0, &size)
            }
        }
        switch hostInfo.cpu_type {
        case CPU_TYPE_ARM:
            return "CPU_TYPE_ARM"
        case CPU_TYPE_ARM64:
            return "CPU_TYPE_ARM64"
        case CPU_TYPE_ARM64_32:
            return"CPU_TYPE_ARM64_32"
        case CPU_TYPE_X86:
            return "CPU_TYPE_X86"
        case CPU_TYPE_X86_64:
            return"CPU_TYPE_X86_64"
        case CPU_TYPE_ANY:
            return"CPU_TYPE_ANY"
        case CPU_TYPE_VAX:
            return"CPU_TYPE_VAX"
        case CPU_TYPE_MC680x0:
            return"CPU_TYPE_MC680x0"
        case CPU_TYPE_I386:
            return"CPU_TYPE_I386"
        case CPU_TYPE_MC98000:
            return"CPU_TYPE_MC98000"
        case CPU_TYPE_HPPA:
            return"CPU_TYPE_HPPA"
        case CPU_TYPE_MC88000:
            return"CPU_TYPE_MC88000"
        case CPU_TYPE_SPARC:
            return"CPU_TYPE_SPARC"
        case CPU_TYPE_I860:
            return"CPU_TYPE_I860"
        case CPU_TYPE_POWERPC:
            return"CPU_TYPE_POWERPC"
        case CPU_TYPE_POWERPC64:
            return"CPU_TYPE_POWERPC64"
        default:
            return ""
        }
    }
    
    /// 设备磁盘总大小
    var DiskTotalSize: String {
        let ptr = UnsafeMutablePointer<statfs>.allocate(capacity: MemoryLayout<statfs>.size)
        var fs = ptr.pointee
        if statfs("/var",&fs) >= 0 {
            let val = Int64(UInt64(fs.f_bsize) * fs.f_blocks)
            return fileSizeToString(val: val)
        } else {
            return "0 B"
        }
    }
    
    /// 设备磁盘可用大小
    var DiskAvailableSize: String {
        let ptr = UnsafeMutablePointer<statfs>.allocate(capacity: MemoryLayout<statfs>.size)
        var fs = ptr.pointee
        if statfs("/var",&fs) >= 0 {
            let val = Int64(UInt64(fs.f_bsize) * fs.f_bavail)
            return fileSizeToString(val: val)
        } else {
            return "0 B"
        }
    }
    
    /// 将磁盘大小转换成字符串
    fileprivate func fileSizeToString(val: Int64) -> String {
        let fileSize = CGFloat(val)
        
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
