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
        let fullName : String = "Ben Bernstein"
        let phoneNumber : Int = 8675309
        print(fullName.points, fullName.pigLatin)
        print(phoneNumber.squared, phoneNumber.halved)
        print(fullName.shout())
        print(fullName.whisper())
        print(phoneNumber.half(), phoneNumber.isDivisible(by: 3))
    }
}


