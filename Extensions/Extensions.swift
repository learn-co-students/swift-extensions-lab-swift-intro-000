//
//  Extensions.swift
//  Extensions
//
//  Created by ASM on 6/27/17.
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
            var characters = self.characters
        
            if characters.contains(" ") {
                var sentence = ""
                var word = ""
                for character in characters {
//                    word.append(character)
                    if character == " " {
                        let firstCharacter = word.characters.first
                        word.characters.removeFirst()
                        word.characters.removeLast()
                        word.append(firstCharacter!)
                        word.append("a")
                        word.append("y")
                        
                        sentence += "\(word) "
                        word = ""

                    } else {
                        word += String(character)
                    }
                }
                
                let firstCharacter = word.characters.first
                word.characters.removeFirst()
                word.append(firstCharacter!)
                word.append("a")
                word.append("y")
                
                sentence += word
                
                return sentence
                
            } else {
                let firstCharacter = characters.first
                characters.removeFirst()
                characters.append(firstCharacter!)
                characters.append("a")
                characters.append("y")
                
                return String(characters)
            }
        
    }

    var points: Int {
        var pointCount = 0
        
        for character in self.characters {
            switch character {
            case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U":
                pointCount += 2
            case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z":
                pointCount += 1
            default:
                pointCount += 0
            }
        }
        return pointCount
    }
    
    
    var unicornLevel: String {
        var unicornString = ""
        for character in self.characters {
            if character != " " {
                unicornString.append("🦄")
            } else {
                unicornString.append(" ")
            }
        }
        return unicornString
    }
}

extension Int {
    func half() -> Int {
        return self / 2
    }
    
    func isDivisible(by number: Int) -> Bool {
        if self % number == 0 {
            return true
        } else {
            return false
        }
    }
    
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
        let half = self.half()
        return half
    }
    
    
}















