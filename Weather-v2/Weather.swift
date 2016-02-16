//
//  Weather.swift
//  Weather-v2
//
//  Created by Toni Itkonen on 13/02/16.
//  Copyright © 2016 Kirijaki. All rights reserved.
//

import Foundation

struct Weather {
    let cityName: String
    let temp: Double
    let description: String
    let icon: String
    
    /*
    var tempC: Double {
        get {
            return temp - 273.15
        }
    }*/
    
    init(cityName: String, temp: Double, description: String, icon: String ) {
        self.cityName = cityName
        self.temp = temp
        self.description = description
        self.icon = icon
    }
    
}