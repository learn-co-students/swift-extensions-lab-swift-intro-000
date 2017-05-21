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
        
        
        
        let fullName = "Kirill Shapoval"
        let phoneNumber = 8675309
        print(fullName.unicornLevel)
        print(fullName.pigLatin)
        print(fullName.points)
        print(phoneNumber.squared)
        print(phoneNumber.halved)
        
        unicornLevelLabel.text = fullName.unicornLevel
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}


