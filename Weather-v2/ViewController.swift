//
//  ViewController.swift
//  Weather-v2
//
//  Created by Toni Itkonen on 09/02/16.
//  Copyright © 2016 Kirijaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBAction func setCityTapped(sender: UIButton) {
        print("City Button Tapped")
        openCityAlert()
    }
    
    func openCityAlert() {
        let alert = UIAlertController(title: "City", message: "Enter city name", preferredStyle: UIAlertControllerStyle.Alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        
        alert.addAction(cancel)
        
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (action: UIAlertAction) -> Void in
            print("OK")
        }
        
        alert.addAction(ok)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

