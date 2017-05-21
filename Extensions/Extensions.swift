//
//  Extensions.swift
//  Extensions
//
//  Created by Kirill Shapoval on 5/18/17.
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
        
        var newSentence = ""
        
        let words = self.components(separatedBy: " ")
        
        for word in words {
            if newSentence != "" {
                newSentence += " "
            }
            var newWord = word
            let firstLetter = newWord.characters.popFirst()
            newWord.characters.append(firstLetter!)
            newWord += "ay"
            newSentence += newWord.lowercased().capitalized
        }
        return newSentence
    }
    
    var points: Int {
        let consonants = "bcdfghjklmnpqrstvxz"
        let vowels = "aeiouy"
        var points = 0
        
        for consonant in consonants.characters {
            for letter in self.lowercased().characters {
                if consonant == letter {
                    points += 1
                }
            }
        }
        
        for vowel in vowels.characters {
            for letter in self.lowercased().characters {
                if vowel == letter {
                    points += 2
                }
            }
        }
        
        return points

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

extension String {
    var unicornLevel: String {
        let words = self.components(separatedBy: "")
        var unicornSentence = ""
        for word in words {
            for char in word.characters {
                if char != " " {
                    unicornSentence += "🦄"
                } else {
                    unicornSentence += " "
                }
            }
        }
        return unicornSentence
    }
}
