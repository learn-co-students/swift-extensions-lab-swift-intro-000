//
//  Extensions.swift
//  Extensions
//
//  Created by William Suryadiputra Goi on 19/3/17.
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
        // Split sentence to words
        var pigLatinString = ""
        let words = self.components(separatedBy: " ")

        for word in words {
            var eachWord = word
            
            //Move first char to end
            eachWord.insert(eachWord[eachWord.startIndex], at: eachWord.endIndex)
            eachWord.remove(at: eachWord.startIndex)
            
            //Add ay to end
            eachWord.insert("a", at: eachWord.endIndex)
            eachWord.insert("y", at: eachWord.endIndex)
            
            eachWord.lowercased()
            eachWord = eachWord.capitalized
            
            if pigLatinString.isEmpty {
                pigLatinString = eachWord
            } else {
                pigLatinString = "\(pigLatinString) \(eachWord)"
            }
        }
        
        return pigLatinString;
        
    }
    
    var points: Int {

        var points = 0
        let lowerSelf = self.lowercased()
        let stringChar = lowerSelf.characters
        
        if (stringChar.isEmpty) {
            return 0
        } else {
        
                for char in stringChar {
                        switch char {
                            case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z": points += 1
                            case "a","i","u","e","o","y": points += 2
                            default: points += 0
                    }
                }
        
        }
        
        return points
    
    }
    
    var unicornLevel: String {
        var newSentence = ""
        
        let stringChar = self.characters
        
        for char in stringChar {
            var newChar = char
            
            switch newChar {
                case " ": newChar = " "
                default: newChar = "🦄"
            }
            
            
                newSentence = "\(newSentence)\(newChar)"
            
        }
        return newSentence

    }
}

extension Int {
    func half() -> Int {
        return self/2
    }
    
    func isDivisible(by number: Int) -> Bool {
        return (self % number == 0)
    }
    
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
            return half()
    }
    
}
