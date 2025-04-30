//
//  JW_CLLocationCoordinate2D++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(MapKit)

import MapKit

public enum JWLocationType: String, CaseIterable {
    case East       = "正东"
    case South      = "正南"
    case West       = "正西"
    case North      = "正北"
    case Northeast  = "东北"
    case Southeast  = "东南"
    case Southwest  = "西南"
    case Northwest  = "西北"
}

public extension CLLocationCoordinate2D {
     
    /// get position by location coordinate2D
    /// - Parameter from: CLLocationCoordinate2D
    /// - Returns: case of JWLocationType
    func getPosition(from: CLLocationCoordinate2D) -> JWLocationType {
        let lat1 = from.latitude * Double.pi / 180
        let lon1 = from.longitude * Double.pi / 180
        
        let lat2 = latitude * Double.pi / 180
        let lon2 = longitude * Double.pi / 180
        
        let dLon = lon2 - lon1
        let y = sin(dLon) * cos(lat2)
        let x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon)
        let radiansBearing = atan2(y, x)
        let aDeg = radiansBearing * 180 / Double.pi
        var target = JWLocationType.East
        if aDeg >= 75 && aDeg <= 105 {
            target = .East
        } else if aDeg > 15 && aDeg < 75 {
            target = .Northeast
        } else if aDeg >= -15 && aDeg <= 15 {
            target = .North
        } else if aDeg > -75 && aDeg < -15 {
            target = .Northwest
        } else if aDeg >= -105 && aDeg <= -75 {
            target = .West
        } else if aDeg > -165 && aDeg < -105 {
            target = .Southwest
        } else if (aDeg >= 165 && aDeg <= 180) || (aDeg >= -180 && aDeg <= -165) {
            target = .South
        } else if aDeg > 105 && aDeg < 165 {
            target = .Southeast
        }
        
        return target
    }
    
}

#endif
