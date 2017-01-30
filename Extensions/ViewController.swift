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

    var fullName = "Ryan Dude"
    var phoneNumber = 8675309
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let unicornPhrase = "My 🦄 is awesome"
        print(unicornPhrase)
        unicornLevelLabel.text = fullName.unicornLevel
        
    }
}


