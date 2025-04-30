//
//  JW_Date++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(Foundation)

import Foundation

public extension Date {
    
    /// get now year
    var nowYear: Int {
        let curCalendar: Calendar = Calendar.current
        let year: Int = curCalendar.component(.year, from: self)
        return year
    }
    
    /// get now month
    var nowMonth: Int {
        let curCalendar: Calendar = Calendar.current
        let month: Int = curCalendar.component(.month, from: self)
        return month
    }
    
    /// get now day
    var nowDay: Int {
        let curCalendar: Calendar = Calendar.current
        let day: Int = curCalendar.component(.day, from: self)
        return day
    }
    
    /// string value of year-month
    var yearMonth: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = "yyyy-MM"
        return dateFormatter.string(from: self)
    }
    
    /// string value of year-month-day
    var yearMonthDay: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: self)
    }
    
}

#endif
