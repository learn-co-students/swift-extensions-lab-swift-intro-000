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
        
        let fullName = "James Aurelius Kim"
        let phoneNumber = 8675309
        print("My name is \(fullName) and my phone number is \(phoneNumber)")
        // I got lazy with calling the functions here, but they are called on all of my various test playgrounds.
        
    }
}


