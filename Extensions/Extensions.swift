//
//  Extensions.swift
//  Extensions
//
//  Created by Kim, James(James) on 1/4/17.
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
    
    // function for pigLatin
    // need to add regex filter
    // use reduce/map/filter to refactor this
    func processWord(array processedArray: [String]) -> [String] {
        var returnArray = [String]()
        var toReturn = ""
        
        for each in processedArray {
            let heldEach = each
            let firstCharacter = String(heldEach[heldEach.startIndex]).lowercased()
            let ripToChar = heldEach.index(after: heldEach.startIndex)..<heldEach.endIndex
            let wordWithoutFirstLetter = heldEach[ripToChar]
            
            toReturn = wordWithoutFirstLetter + firstCharacter + "ay"
            returnArray.append(toReturn)
        }
        return returnArray
    }
    
    // refactor this with reduce/filter/map
    // need to include punctuations/regex stuff filter
    var pigLatin: String {
        let toConvert = self
        
        if toConvert.isEmpty || toConvert.characters.count == 1 {
            return toConvert
        } else {
            let arrayConverted = toConvert.components(separatedBy: " ")
            let convertedToStrings = processWord(array: arrayConverted).joined(separator: " ")
            return convertedToStrings
        }
    }
    
    // also need to be refactored to use reduce/filter/map.
    var points: Int {
        
        // Start copy block
        var sounds = [
            "consonant" : ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"],
            "vowels" : ["a", "e", "i", "o", "u", "w", "y"]
        ]
        
        var totalPoints = 0
        if self.characters.count < 1 {
            return totalPoints
        } else {
            
            var valueToCheck = self.lowercased().components(separatedBy: .whitespaces).joined(separator: "")
            let countOfValueToCheck = valueToCheck.characters.count
            
            // this is a Set converted from an Array of valueToCheck
            let rippedCharToSet = Set(valueToCheck.characters.map { String($0) } )
            
            // this is an Array of valueToCheck
            let rippedCharToArray = valueToCheck.characters.map { String($0) }
            
            if let
                allVowels = sounds["vowels"],
                let allConsonants = sounds["consonant"] {
                var allVowels = allVowels
                var allConsonants = allConsonants
                
                for eachLetter in rippedCharToArray {
                    if allVowels.contains(String(eachLetter)) {
                        totalPoints += 1
                    }
                    
                    if allConsonants.contains(String(eachLetter)) {
                        totalPoints += 2
                    }
                }
                
            } // end of if let statement
        } // end of else block
        return totalPoints
        // end copy block
        
    } // end of points
    
    var length: Int {
        return self.characters.count
    }
    
} // end of extension


