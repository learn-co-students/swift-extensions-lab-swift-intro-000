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
        // Do any additional setup after loading the view, typically from a nib.
        let fullName: String = "Eric Jason Lein"
        let phoneNumber: Int = 8675309
        print(fullName.whisper(), fullName.shout(), fullName.pigLatin, fullName.points, fullName.unicornLevel)
        print(phoneNumber.half(), phoneNumber.isDivisible(by: 3), phoneNumber.squared, phoneNumber.half())
        unicornLevelLabel.text = fullName.unicornLevel
    }
}


