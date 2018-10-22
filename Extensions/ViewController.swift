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
        var fullName: String = "This is a name"
        let phoneNumber:Int = 8675309
        
        print(fullName.points)
        print(fullName.pigLatin)
        print(fullName.whisper())
        print(fullName.shout())
        print(phoneNumber.half())
        print(phoneNumber.isDivisible(by: 10))
        print(phoneNumber.squared)
        print(phoneNumber.halved)
        let unicornPhrase = "My 🦄 is awesome"
        print(unicornPhrase)
        
    }
}

extension String {
    
    func whisper() -> String {
        return self.lowercased()
    }
    
    mutating func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin: String {
        guard self.characters.count > 1 else { return self }
        
        let lowerCasedWords = self.whisper()
        let stringArray = lowerCasedWords.components(separatedBy: " ")
        
        var finalString = ""
        
        for string in stringArray {
            var pigLatinString = string
            let firstLetter = string[string.startIndex]
            pigLatinString.remove(at: pigLatinString.startIndex)
           pigLatinString = pigLatinString.capitalized + String(firstLetter) + "ay"
            if finalString.isEmpty {
                finalString = pigLatinString
            } else {
                finalString = "\(finalString) \(pigLatinString)"
            }
        }
        return finalString
    }
    
    var points: Int {
        let lowerCasedWords = self.whisper()
        let consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
        let vowels = ["a","e","i","o","u", "y"]
        var points: Int = 0
        
        for letter in lowerCasedWords.characters {
            if consonants.contains(String(letter)) {
                points += 1
            } else if vowels.contains(String(letter)) {
                points += 2
            }
        }
        return points
    }
    
    var unicornLevel:Int{
        get{
            var count = 0
            for char in self{
                if char == "🦄"{
                    count += 1
                }
            }
            return count
        }
    }
}

extension Int{
    func half()->Int{
        return self/2
    }
    func isDivisible(by number: Int) -> Bool {
        if(self % number == 0){
            return true
        }else{
            return false
        }
    }
    var squared:Int{
        get{
            return self * self
        }
    }
    var halved:Int{
        get{
            return self/2
        }
    }
}

