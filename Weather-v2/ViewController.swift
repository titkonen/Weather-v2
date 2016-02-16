//
//  ViewController.swift
//  Weather-v2
//
//  Created by Toni Itkonen on 09/02/16.
//  Copyright © 2016 Kirijaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, WeatherServiceDelegate {

    
    let weatherService = WeatherService()
    
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBAction func setCityTapped(sender: UIButton) {
        print("City Button Tapped")
        openCityAlert()
    }
    
    func openCityAlert() {
        // Create alert controller
        let alert = UIAlertController(title: "City", message: "Enter city name", preferredStyle: UIAlertControllerStyle.Alert)
        
        // Create Cancel action
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        
        alert.addAction(cancel)
        
        // Create OK action
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (action: UIAlertAction) -> Void in
            print("OK")
            let textField = alert.textFields?[0]
            print(textField?.text)
            self.cityLabel.text = textField?.text!
            let cityName = textField?.text!
            self.weatherService.getWeather(cityName!)
            
        }
        
        alert.addAction(ok)
        
        // Add text field
        alert.addTextFieldWithConfigurationHandler { (textField: UITextField) -> Void in
            textField.placeholder = "City Name"
        }
        
        // Present Alert Controller
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    // MARK: - Weather Service Delegate
    
    func setWeather(weather: Weather) {
        print("*** Set Weather ")
        print("City: \(weather.cityName) temp: \(weather.temp) desc: \(weather.description)")
        cityLabel.text = weather.cityName
        tempLabel.text = "\(weather.temp)"
        descriptionLabel.text = weather.description
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.weatherService.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

