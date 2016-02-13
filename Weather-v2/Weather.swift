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
    
    init(cityName: String, temp: Double, description: String ) {
        self.cityName = cityName
        self.temp = temp
        self.description = description
    }
}