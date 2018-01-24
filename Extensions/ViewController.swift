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
        let fullName: String = "This is a name"
        let phoneNumber:Int = 8675309

        print(fullName.points)
        print(fullName.pigLatin)
        print(fullName.whisper())
        print(fullName.shout())
        print(phoneNumber.half())
        print(phoneNumber.isDivisible(by: 10))
        print(phoneNumber.squared)
        print(phoneNumber.halved)
        let unicornPhrase = "My 🦄 is awesome"
        print(unicornPhrase)
//        unicornLevelLabel.text = String("I heart 🦄🦄🦄!!!".unicornLevel)
    }
}


