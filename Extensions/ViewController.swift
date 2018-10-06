//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fullName = "Mawia Janoudy"
        let phoneNumber = 8675309
        print(fullName.pigLatin)
        print(fullName.points)
        print(phoneNumber.isDivisible(by: 3))
        print(phoneNumber.squared)
        print(phoneNumber.halved)
        
        unicornLevelLabel.text = fullName.unicornLevel
    }
    
    
}


