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
        /*
         In ViewController.swift inside the function body of viewDidLoad():
         Create a String object with the value as your full name called fullName
         Create an Int object with the value 8675309 called phoneNumber
         Print the value of the extension computed properties on fullName and phoneNumber
         Call all of your String and Int functions on your name and print them to the console
 */
        let fullName: String = "Brendt Bly"
        let phoneNumber: Int = 8675309
        print(fullName.whisper())
        print(fullName.shout())
        print(fullName.pigLatin)
        
        print(fullName.points)
        print(phoneNumber.half())
        print(phoneNumber.isDivisible(number: 4))
        print(phoneNumber.squared())
        print(phoneNumber.halved())
        
    }
}


