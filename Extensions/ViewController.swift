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
    var firstName: String = "Alif"
    var lastName: String = "Khandoker"
    
    var fullName: String {
        return firstName + lastName
    }
    
    var phoneNumber: Int = 8675309
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(fullName): \(phoneNumber)")
        unicornLevelLabel.text = unicornLevel
    }
    
    var unicornLevel = "My 🦄 is awesome"
}
