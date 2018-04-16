//
//  Extensions.swift
//  Extensions
//
//  Created by Andrea on 4/15/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
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
        
        var lowerCasedWords = self.whisper()
        var wordsArr = lowerCasedWords.components(separatedBy: " ")
        
        var finalSentence = ""
        
        for word in wordsArr {
            var pigLatinWord = word
            let firstLetter = word[word.startIndex]
            pigLatinWord.remove(at: pigLatinWord.startIndex)
            pigLatinWord = pigLatinWord.capitalized + String(firstLetter) + "ay"
            if finalSentence.isEmpty {
                finalSentence = pigLatinWord
            } else {
                finalSentence = "\(finalSentence) \(pigLatinWord)"
            }
        }
        return finalSentence
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
        let stringArray = self.components(separatedBy: " ")
        
        var unicornPhrase = ""
        
        for word in stringArray {
            let charsCount = word.characters.count
            let unicornWord = String(repeating: "🦄", count: charsCount)
            
            if unicornPhrase.isEmpty {
                unicornPhrase = unicornWord
            } else {
                unicornPhrase = "\(unicornPhrase) \(unicornWord)"
            }
        }
        return unicornPhrase
    }
}
