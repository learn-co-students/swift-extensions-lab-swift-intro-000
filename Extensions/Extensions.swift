//
//  Extensions.swift
//  Extensions
//
//  Created by Joseph Kim on 5/22/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin: String {
        let words = self.characters.split(separator: " ").map(String.init)
        var returnString = ""
        
        for (index, word) in words.enumerated() {
            var wordArray = Array(word.characters)
            wordArray.append(wordArray[0])
            wordArray.removeFirst()
            let wordString = wordArray.map({"\($0)"}).joined(separator: "")
            returnString += (wordString.capitalized + "ay")
            if index < words.count - 1 { returnString += " " }
        }
        
        return returnString
    }

    var points: Int {
        var points = 0
        
        for char in self.characters {
            switch String(char).lowercased() {
                case "a","e","i","o","u","y": points += 2
                case "b","c","d","e","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z": points += 1
                default: break
            }
        }
        
        return points
    }
    
    var unicornLevel: String {
        let letters = Array(self.characters)
        var returnArr = [String]()
        for letter in letters {
            switch String(letter) {
            case " ", ".", ";": returnArr.append(String(letter))
            default: returnArr.append("🦄")
            }
        }
        
        return returnArr.joined()
    }
}

extension Int {
    func half() -> Int {
        return self / 2
    }
    
    func isDivisible(by number: Int) -> Bool {
        return self % number == 0
    }
    
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
        return half()
    }
}
