//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var fullName = "Cynthia Nikolai"
        let myPhrase = "My 🦄🦄🦄 is awesome"
        let phoneNumber = 8675309
        let newString = fullName.pigLatin
        let newScore = fullName.points
        let newNum1 = phoneNumber.squared
        let newNum2 = phoneNumber.halved
        print(newString)
        print(fullName.whisper())
        print(fullName.shout())
        print(newScore)
        print(newNum1)
        print(newNum2)
        unicornLevelLabel.text = String(myPhrase.unicornLevel)
    }

}

extension String {
    mutating func whisper() -> String {
        return self.lowercased()
    }
    
    mutating func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin:String {
        var tempStringsArray = self.components(separatedBy: " ")
        if tempStringsArray.count == 1 {
            if tempStringsArray[0].first == tempStringsArray[0].last {
                return tempStringsArray[0]
            }
        }
        var newString:String = ""
        for string in tempStringsArray {
            var aWord = string
            let firstChar = aWord.removeFirst()
            aWord = aWord + String(firstChar)
            aWord = aWord + "ay"
            
            newString += " \(aWord)"
        }
        return newString
    }
    
    var points: Int {
        get {
            var score = 0
            let myString = Array(self)
            let vowels = ["a", "e", "i", "o", "u"]
            let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "s", "t", "v", "w", "x", "y", "z"]
            for char in myString {
                if vowels.contains(String(char)) {
                    score += 1
                }
                else {
                    if consonants.contains(String(char)) {
                        score += 2
                    }
                }
            }
            return score
        }
    }
    
    var unicornLevel: Int {
        get {
            let myString = Array(self)
            return myString.count
        }
    }
}

extension Int {
    func half() -> Int {
        return self/2
    }
    
    func isDivisible(by number: Int) -> Bool {
        if self % number == 0 {
            return true
        } else {
            return false
        }
    }
    
    var squared: Int {
        return self * self
    }
    
    var halved:Int {
        return self/2
    }
}

//extension String {
//
//    subscript (i: Int) -> Character {
//        return self[index(startIndex, offsetBy: i)]
//    }
//
//    subscript (i: Int) -> String {
//        return String(self[i] as Character)
//    }
//
//    subscript (r: Range<Int>) -> String {
//        let start = index(startIndex, offsetBy: r.lowerBound)
//        let end = index(startIndex, offsetBy: r.upperBound)
//        return self[Range(start ..< end)]
//    }
//}
//
//extension Int {
//
//    func hello() {
//        print("Hello. I'm a number. \(self).")
//    }
//
//    var squared: Int {
//        return self * self
//    }
//
//    mutating func add(number: Int) {
//        self += number
//    }
//
//}

