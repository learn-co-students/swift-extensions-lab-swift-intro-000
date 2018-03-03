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
        
        let fullName = "Joseph Gingle Heimer Schmitt"
        var phoneNumber = 8675309
        
        unicornLevelLabel.text = fullName.unicornLevel
        print("pigLatin:\(fullName.pigLatin). Points: \(fullName.points)")
        print("squared: \(phoneNumber.squared), halved: \(phoneNumber.halved)")
        
        print(fullName.whisper())
        print(fullName.shout())
        print(phoneNumber.half())
        print(phoneNumber.isDivisible(by: 3))
        
        
    }
    
    
    
}


