//
//  Extensions.swift
//  Extensions
//
//  Created by Julian Gomez on 3/5/17.
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
        guard self.characters.count > 1 else {return self}
        
        var newString = ""
        let stringArray = self.components(separatedBy: " ")
        
        for var word in stringArray {
            let first = word.remove(at: word.startIndex)
            word.insert(Character(String(first).lowercased()), at: word.endIndex)
            word = word.capitalized
            newString += word + "ay" + " "
        }
        newString = String(newString.characters.dropLast(1))
        return newString
    }

    var points: Int {
         var points = 0
            if self.isEmpty {
                return points
            } else {
        let vowels = ["a","e","i","o","u", "y"]
        let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "s", "t", "v", "w", "x", "z"]
        let letters = self.characters
                
                for letter in letters {
                    if vowels.contains(String(letter).lowercased()) {
                        points += 2
                    } else if consonants.contains(String(letter).lowercased()) {
                        points += 1
                    }
                }
        }
         return points
    }
    
    var unicornLevel: String {
        get {
            
            var wordString = ""
            _ = self.characters.count
            let words = self.components(separatedBy: " ")
            for word in words {
                let letterCount = word.characters.count
                let unicornString = String(repeating: "🦄", count: letterCount)
                wordString += unicornString + " "
            }
            wordString.remove(at: wordString.index(before: wordString.endIndex))
            
            return wordString
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
        return self*self
    }
    
    var halved: Int {
        return half()
        }
    }


