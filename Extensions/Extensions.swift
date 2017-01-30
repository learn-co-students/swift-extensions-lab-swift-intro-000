//
//  Extensions.swift
//  Extensions
//
//  Created by Ryan Hennings on 1/29/17.
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
        guard self.characters.count > 1 else { return self }
        
        var newStr = ""
        let strArr = self.components(separatedBy: " ")
        
        for var word in strArr {
            let first = word.remove(at: word.startIndex)
            word.insert(Character(String(first).lowercased()), at: word.endIndex)
            word = word.capitalizingFirstLetter()
            newStr += word + "ay "
        }
        // Pop last space off
        newStr = String(newStr.characters.dropLast(1))
        return newStr
    }
    
    // Taken from: <http://stackoverflow.com/a/26306372>
    func capitalizingFirstLetter() -> String {
        let first = String(characters.prefix(1)).capitalized
        let other = String(characters.dropFirst())
        return first + other
    }
    
    var points: Int {
        guard self.characters.count > 0 else {
            return 0
        }
        
        let letters = CharacterSet.letters
        let vowels = ["a","e","i","o","u","y"]
        
        var pts = 0
        for char in self.unicodeScalars {
            let c = String(char)
            if letters.contains(char) {
                if vowels.contains(c.lowercased()) {
                    pts += 2
                }
                else {
                    pts += 1
                }
            }
        }
        return pts
    }
    
    var unicornLevel: String {
        let letters = CharacterSet.alphanumerics
        var uLvl = ""
        for char in self.unicodeScalars {
            if letters.contains(char) {
                uLvl += "🦄"
            }
        }
        return uLvl
    }
}

extension Int {
    func half() -> Int {
        return Int(round(Double(self/2)))
    }
    
    func isDivisible(by divisor: Int) -> Bool {
        if self%divisor == 0 {
            return true
        } else {
            return false
        }
    }
    
    var squared: Int {
        return self*self
    }
    
    var halved: Int {
        return Int(round(Double(self/2)))
    }
}





