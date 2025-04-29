//
//  CLPlacemark++.swift
//  Pods
//
//  Created by sfh on 2025/4/27.
//

#if canImport(CoreLocation)

import CoreLocation

public extension CLPlacemark  {
    
    /// country code
    var countryCode: String? {
        String(format: "%@", isoCountryCode ?? "")
    }
    
    /// country-province
    var countryProvince: String? {
        String(format: "%@%@", country ?? "", administrativeArea ?? "")
    }
    
    /// city-area-road
    var cityAreaRoad: String? {
        String(format: "%@%@%@", locality ?? "", subLocality ?? "", name ?? "")
    }
    
}

#endif
