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
        
       let fullName =  "James Bond"
        
        let phoneNumber =  8675309
        
        print("Fullname: \(fullName)")
                    print("Phone Number: \(phoneNumber)")
            
                    print("Whisper: \(fullName.whisper())")
                    print("Shout: \(fullName.shout())")
                    print("PigLatin: \(fullName.pigLatin)")
                    print("Points: \(fullName.points)")
            
                    print("Half: \(phoneNumber.half())")
                    print("IsDivisibleBy 10: \(phoneNumber.isDivisible(by: 10))")
                    print("Squared: \(phoneNumber.squared)")
                    print("Halved: \(phoneNumber.halved)")
            
             let unicornPhrase = "My 🦄 is awesome"
        
                unicornLevelLabel.text = unicornPhrase.unicornLevel
        
            }
    }
extension String {
    
    var unicornLevel: String {
        
        get {
            
            var newString = ""
            
            for char in self.characters {
                
                if char == " " {
                    
                    newString += " "
                    
                } else {
                    
                    newString += "🦄"
                }
                
            }
            
            return newString
        }
    }
}



