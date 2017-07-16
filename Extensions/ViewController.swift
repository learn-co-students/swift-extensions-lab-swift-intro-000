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
      
      let fullName = "iBrie van Der iets"
      let phoneNumber = 8675309
     
      unicornLevelLabel.text = fullName.unicornLevel
      print ("\(fullName.pigLatin) + \(fullName.points) \(phoneNumber.squared) + \(phoneNumber.halved)")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}


