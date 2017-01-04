//
//  Extensions.swift
//  Extensions
//
//  Created by John Richardson on 1/3/17.
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
        var piggyWordArray = [String]()
        let wordArray = self.components(separatedBy: " ")
        for word in wordArray {
            var piggyWord = word.lowercased()
            let firstLetter = piggyWord.remove(at: startIndex)
            piggyWord = piggyWord.capitalized + String(firstLetter) + "ay"
            piggyWordArray.append(piggyWord)
        }
        return piggyWordArray.joined(separator: " ")
    }
    
    var points: Int {
        var pointTotal = 0
        let vowels = ["a", "e", "i", "o", "u", "y"]
        let consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
        let wordArray = self.components(separatedBy: " ")
        for word in wordArray {
            for char in word.lowercased().characters {
                if vowels.contains(String(char)) {
                    pointTotal += 2
                } else if consonants.contains(String(char)) {
                    pointTotal += 1
                }
            }
        }
        return pointTotal
    }
    
    var unicornLevel: String {
        var unicorns = ""
        let trimmedString = self.replacingOccurrences(of: " ", with: "")
        for _ in trimmedString.characters {
            unicorns += "🦄"
        }
        return unicorns
    }
}

extension Int {
    func half() -> Int {
        return self/2
    }
    
    func isDivisible(by: Int) -> Bool {
        guard self != 0 else {return false}
        if self % by == 0 {
            return true
        } else {
            return false
        }
    }
    
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
        return half()
    }
}
