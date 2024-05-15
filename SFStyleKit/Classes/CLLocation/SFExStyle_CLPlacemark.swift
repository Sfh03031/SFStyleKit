//
//  SFExStyle_CLPlacemark.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import CoreLocation

//MARK: - 扩展

public extension CLPlacemark  {
    /// 国家代码
    var countryCode: String? {
        String(format: "%@", isoCountryCode ?? "")
    }
    
    /// 国-省
    var country_province: String? {
        String(format: "%@%@", country ?? "", administrativeArea ?? "")
    }
    
    /// 市-区-路
    var city_area_road: String? {
        String(format: "%@%@%@", locality ?? "", subLocality ?? "", name ?? "")
    }
}
