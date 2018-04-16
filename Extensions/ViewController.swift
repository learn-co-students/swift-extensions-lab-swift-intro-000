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
        var fullName: String = "Mlle Dolce"
        var phoneNumber: Int = 1234568
        print("The extension computed property 'pigLatin' of 'fullName' is \(fullName.pigLatin)")
        print("The extension computed property 'points' of 'fullName' is \(fullName.points)")
        print("The extension computed property 'isDivisible' of 'phoneNumber' is \(phoneNumber.isDivisible(by: 2))")
        print("The extension computed property 'isDivisible' of 'phoneNumber' is \(phoneNumber.squared)")
        print("The extension computed property 'isDivisible' of 'phoneNumber' is \(phoneNumber.halved)")

        unicornLevelLabel.text = "Hello".unicornLevel
    }
}


