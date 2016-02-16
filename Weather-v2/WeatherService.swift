//
//  WeatherService.swift
//  Weather-v2
//
//  Created by Toni Itkonen on 13/02/16.
//  Copyright © 2016 Kirijaki. All rights reserved.
//

import Foundation

protocol WeatherServiceDelegate {
    func setWeather(weather:Weather)
}

class WeatherService {
    
    var delegate: WeatherServiceDelegate?
    
    func getWeather(city: String) {
        print("Weather Service city: \(city)")
        // request weather data
        // wait.....
        // process data
        
        
        
        let path = "http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=44db6a862fba0b067b1930da0d769e98"
        let url = NSURL(string: path)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url!) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            //print(">>>>> \(data)")
            let json = JSON(data: data!)
            let lon = json["coord"]["lon"].double
            let lat = json["coord"]["lat"].double
            let temp = json["main"]["temp"].double
            
            print("Lat: \(lat!) lon: \(lon!) temp: \(temp!)")
            
        }
        
        task.resume()
        
        /*
        let weather = Weather(cityName: city, temp: 237.12, description: "A nice day")
        
        if delegate != nil {
            delegate?.setWeather(weather)
        }
        */
    }
    
    
}