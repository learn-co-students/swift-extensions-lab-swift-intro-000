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
        var fullname: String = "Juan Jose Jaramillo Velez"
        var phoneNumber: Int = 8675309
        
        print("\(fullname.whisper())")
        print("\(fullname.shout())")
        print("\(fullname.pigLatin)")
        print("\(fullname.points)")
        print("\(phoneNumber.half())")
        print("\(phoneNumber.isDivisible(by: 3))")
        print("\(phoneNumber.squared)")
        print("\(phoneNumber.halved)")
        
        unicornLevelLabel.text = fullname.unicornLevel
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}


