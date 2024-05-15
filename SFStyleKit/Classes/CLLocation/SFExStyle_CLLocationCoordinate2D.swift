//
//  SFExStyle_CLLocationCoordinate2D.swift
//  SFStyleKit_Example
//
//  Created by sfh on 2024/4/3.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import MapKit

//MARK: - 扩展

public extension CLLocationCoordinate2D {
    
    /// 根据经纬坐标获取方位
    func getPositionFrom(_ from: CLLocationCoordinate2D) -> String {
        let lat1 = from.latitude * Double.pi / 180
        let lon1 = from.longitude * Double.pi / 180
        
        let lat2 = latitude * Double.pi / 180
        let lon2 = longitude * Double.pi / 180
        
        let dLon = lon2 - lon1
        let y = sin(dLon) * cos(lat2)
        let x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon)
        let radiansBearing = atan2(y, x)
        let aDeg = radiansBearing * 180 / Double.pi
        var str = ""
        if aDeg >= 75 && aDeg <= 105 {
                str = "正东"
        } else if aDeg > 15 && aDeg < 75 {
                str = "东北"
        } else if aDeg >= -15 && aDeg <= 15 {
                str = "正北"
        } else if aDeg > -75 && aDeg < -15 {
            str = "西北"
        } else if aDeg >= -105 && aDeg <= -75 {
            str = "正西"
        } else if aDeg > -165 && aDeg < -105 {
            str = "西南"
        } else if (aDeg >= 165 && aDeg <= 180) || (aDeg >= -180 && aDeg <= -165) {
            str = "正南"
        } else if aDeg > 105 && aDeg < 165 {
            str = "东南"
        }
        return str
    }
}
