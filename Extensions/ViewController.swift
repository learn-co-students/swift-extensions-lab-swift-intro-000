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
    let fullName = "Harry Disseldorp"
    let phoneNumber = 8675309
    
    unicornLevelLabel.text = fullName.unicornLevel
    
    print("Whisper:      \(fullName.whisper())")
    print("Shout:        \(fullName.shout())")
    print("pigLatin:     \(fullName.pigLatin)")
    print("points:       \(fullName.points)")
    print("unicornLevel: \(fullName.unicornLevel)")
    
    print("half:             \(phoneNumber.half())")
    print("halved:           \(phoneNumber.halved)")
    print("isDivisible by 9: \(phoneNumber.isDivisible(by: 9))")
    print("isDivisible by 7: \(phoneNumber.isDivisible(by: 7))")
    print("isDivisible by 5: \(phoneNumber.isDivisible(by: 5))")
    print("isDivisible by 3: \(phoneNumber.isDivisible(by: 3))")
    print("isDivisible by 2: \(phoneNumber.isDivisible(by: 2))")
    print("squared           \(phoneNumber.squared)")
  }
}


