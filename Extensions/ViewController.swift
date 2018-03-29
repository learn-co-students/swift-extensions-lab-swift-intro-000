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
        var fullName: String = "James"
        var phoneNumber: Int = 8675309
        print("\(fullName), \(phoneNumber)")
        print("whisper: \(fullName.whisper())")
        print("louder: \(fullName.shout())")
        print("pigLatin: \(fullName.pigLatin), and points: \(fullName.points)")
    }
}



extension String {
    
    
    // MARK: - methods
    
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
    
    
    // MARK: - computed property
    
    var pigLatin: String {
        get {
            
            let stringArray = self.components(separatedBy: " ")
            var returnWord = ""
            if stringArray.count == 1 {
                return stringArray.first!
            } else {
                for word in stringArray {
                    var newWord = word.lowercased()
                    let firstLetter = newWord.removeFirst()
                    newWord.append(firstLetter)
                    newWord.append("ay")
                    returnWord += newWord.capitalized + " "
                }
                returnWord.removeLast()
                return returnWord
            }
        }
    }
    
    var points: Int {
        let text = self.lowercased()
        var totalPoint: Int = 0
        for letter in text {
            switch letter {
            case "a", "e", "i", "o", "u", "w","y":
                totalPoint += 2
            case "1","2","3","4","5","6","7","8","9","0"," ":
                totalPoint += 0
            case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","x","z":
                totalPoint += 1
            default:
                totalPoint += 0
            }
        }
        return totalPoint
    }
    
    var unicornLevel: String {
        get {
            var returnString = ""
            for char in self {
                var changeCharacter = char
                if changeCharacter == " " {
                    returnString.append(changeCharacter)
                } else {
                    changeCharacter = "🦄"
                    returnString.append(changeCharacter)
                }
            }
            return returnString
        }
    }
}


extension Int {
    
    
    // MARK - method
    
    func half() -> Int {
        return self/2
    }
    
    func isDivisible(by number: Int) -> Bool {
        return self % number == 0 ? true : false
    }
    
    
    // MARK: - computed property
    
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
        return self.half()
    }
}


extension ViewController {
    
}
