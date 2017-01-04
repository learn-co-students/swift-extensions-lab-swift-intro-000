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
        let fullName = "John Martin Richardson"
        print(fullName.pigLatin)
        print(fullName.points)
        
        print(fullName.unicornLevel)
        print(fullName.whisper())
        print(fullName.shout())
        
        let phoneNumber = 8675309
        print(phoneNumber.squared)
        print(phoneNumber.halved)
        
        print(phoneNumber.half())
        print(phoneNumber.isDivisible(by: 3))
        
    }
}


