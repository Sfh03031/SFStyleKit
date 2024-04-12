//
//  SFExStyle_Date.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation

public extension SFExStyle where Base == Date {
    /// 获取当前年
    var nowYear: Int {
        let curCalendar: Calendar = Calendar.current
        let year: Int = curCalendar.component(.year, from: base)
        return year
    }
    
    /// 获取当前月
    var nowMonth: Int {
        let curCalendar: Calendar = Calendar.current
        let month: Int = curCalendar.component(.month, from: base)
        return month
    }
    
    /// 获取当前日
    var nowDay: Int {
        let curCalendar: Calendar = Calendar.current
        let day: Int = curCalendar.component(.day, from: base)
        return day
    }
    
    /// 时间转换成年月
    var yearMonth: String {
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = "yyyy-MM"
        return dateFormatter.string(from: base)
    }
}
