//
//  Extensions.swift
//  Extensions
//
//  Created by Kim, James(James) on 1/4/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    
    func whisper(words: String) -> String {
        return words.lowercased()
    }
    
    func shout(noises: String) -> String {
        return noises.uppercased()
    }
    
    // need to add regex filter
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
    var pigLatin: String {
        let toConvert = self
        
        if toConvert.characters.count == 1 {
            return toConvert
        } else {
            let arrayConverted = toConvert.components(separatedBy: " ")
            var toReturn = ""
            let convertToStrings = processWord(array: arrayConverted)
            toReturn = convertToStrings.joined(separator: " ")
            return toReturn
        }
    }
    
} // end of extension


