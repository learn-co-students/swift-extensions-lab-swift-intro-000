//
//  Extensions.swift
//  Extensions
//
//  Created by Alif on 22/05/2017.
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
        get {
            guard self.characters.count != 0 else { return self }
            
            var newWordArray = [String]()
            let wordArray = self.components(separatedBy: " ")
            
            for word in wordArray {
                var letters = Array(word.characters)
                let firstLetter = String(letters.removeFirst()).lowercased()
                let secondLetter = String(letters.prefix(1)).capitalized
                let remainder = String(letters.dropFirst())
                
                var newWord = secondLetter + remainder + firstLetter
                newWord += "ay "
                
                newWordArray.append(newWord)
            }
            
            let result = String(newWordArray.joined().characters.dropLast())
            return result
        }
    }
    
    var points: Int {
        get {
            var points: Int = 0
            guard !self.isEmpty else { return points }
            
            for input in self.characters {
                switch String(input).lowercased() {
                case "a", "e", "i", "o", "u", "y":
                    points += 2
                default:
                    points += 1
                }
            }
            
            return points
        }
        
    }
}

extension Int {
    func half() -> Int {
        return self / 2
    }
    
    func isDivisible(_ by: Int) -> Bool {
        if self % by == 0 {
            return true
        } else {
            return false
        }
    }
    
    var squared: Int {
        get {
            return self * self
        }
    }
    
    var halved: Int {
        get {
            return half()
        }
    }
}

































