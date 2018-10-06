//
//  Extensions.swift
//  Extensions
//
//  Created by Muaawia Janoudy on 2018-10-04.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    mutating func whisper() {
        self = self.lowercased()
    }
    
    mutating func shout() {
        self = self.uppercased()
    }
    
    var pigLatin: String {
        
        if Array(self).count == 1 {
            return self
        } else {
            let wordsInSentence = self.components(separatedBy: " ")
            var sentence: String = ""
            var wordInPiglatin: String = ""
            for word in wordsInSentence {
                var letters = Array(word)
                var firstLetter = letters[0]
                var restOfWord = letters.dropFirst()
                wordInPiglatin = String(restOfWord) + String(firstLetter) +  "ay "
                sentence += wordInPiglatin
            }
            return sentence
        }
        
    }
    
    var points: Int {
        let lettersInWord = Array(self)
        var points = 0
        if self.isEmpty {
            return 0
        } else {
            for letter in lettersInWord {
                switch letter {
                case "0","1","2","3","4","5","6","7","8","9"," ":
                    points += 0
                case "o","e","a","u","y","w","i":
                    points += 2
                default:
                    points += 1
                }
            }
            return points
        }

    }
    
    var unicornLevel: String {
        let charCount = Array(self).count
        var unicorns: String = ""
        for i in 1...charCount{
            unicorns += "🦄"
        }
        return "The unicorn level is \(charCount) \(unicorns)"
    }
    
}

extension Int {
    mutating func half() {
        self = self/2
    }
    
    func isDivisible (by number: Int)-> Bool {
        return self % number == 0 ? true: false
    }
    
    var squared: Int {
        return self*self
    }
    
    var halved: Int {
        return self/2
    }
    
}
