//
//  extensions.swift
//  Extensions
//
//  Created by Ben Nalle on 3/7/17.
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
        
        var convertedSentence = ""
        
        let allWords: [String] = self.components(separatedBy: " ")
        
        for (index, word) in allWords.enumerated() {
            var newWord = word
            
            if newWord.characters.count == 1 {
                convertedSentence.append(word)
            } else if index == 0 {
                if let firstCharacter = word.characters.first {
                    newWord.characters.append(firstCharacter)
                    newWord.characters.removeFirst()
                }
                var newNew = newWord.lowercased()
                newNew.append("ay")
                let theNewNew = newNew.capitalized
                convertedSentence.append("\(theNewNew)")
            } else {
                if let firstCharacter = word.characters.first {
                    newWord.characters.append(firstCharacter)
                    newWord.characters.removeFirst()
                }
                var newNew = newWord.lowercased()
                newNew.append("ay")
                let theNewNew = newNew.capitalized
                convertedSentence.append(" \(theNewNew)")
            }
        }
        return convertedSentence
    }
    
    var points: Int {
        
        get {
            var tally: Int = 0
            
            for character in self.lowercased().characters {
                if character == " "{
                    tally += 0
                } else if self.isEmpty {
                    tally = 0
                } else {
                    switch character {
                    case "a":
                        tally += 2
                    case "e":
                        tally += 2
                    case "i":
                        tally += 2
                    case "o":
                        tally += 2
                    case "u":
                        tally += 2
                    case "y":
                        tally += 2
                    default:
                        tally += 1
                    }
                }
            }
            return tally
        }
    }
    
    var unicornLevel: String {
        get {
            var unicorns: String = ""
            for character in self.characters {
                if character == " " {
                    unicorns.append(" ")
                } else {
                    unicorns.append("🦄")
                }
            }
            return unicorns
        }
    }
}

extension Int {
    
    func half() -> Int {
        return self/2
    }
    
    func isDivisible(by: Int) -> Bool {
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
            let halfOfIt = self.half()
            return halfOfIt
        }
    }
}


