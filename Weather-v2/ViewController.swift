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

