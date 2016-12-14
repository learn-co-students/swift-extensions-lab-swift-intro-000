//
//  Extensions.swift
//  Extensions
//
//  Created by Ramon Geronimo on 10/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
extension String {
    
    func whisper() -> String {
        let whisper = self.lowercased()
        return whisper
    }
    
    func shout() -> String {
        let shout = self.uppercased()
        return shout
    }
    
    var pigLatin : String {
        guard self.characters.count > 1 else { return self }
        
        var result = self.lowercased()
        let myArr = result.components(separatedBy: " ")
        var newArr : [String] = []
        
        for word in myArr {
            
            var edit = word
            let firstLetter = word[word.startIndex]
            
            edit.remove(at: result.startIndex)
            edit += String(firstLetter)
            edit += "ay"
            newArr.append(edit)
        }
        
        result = newArr.joined(separator: " ")
        return result.capitalized
    }
    
    var points : Int {
        guard self.characters.count > 0 else { return 0 }
        
        let myArr = self.components(separatedBy: "")
        let consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
        let vowels = ["a","e","i","o","u","y"]
        var points = 0
        
        for word in myArr {
            let wordArr = Array(word.characters)
            for letter in wordArr {
                if consonants.contains(String(letter).lowercased()) {
                    points += 1
                } else if vowels.contains(String(letter).lowercased()) {
                    points += 2
                }
            }
        }
        return points
    }
    
}



extension Int {
    var halved : Int {
        return half()
    }
    var squared : Int{
        return self * self
    }
    
    func half() -> Int {
        let newNum = self / 2
        return newNum
        
    }
    
    func isDivisible(by number:Int) -> Bool {
        return self % number == 0
    }
    
    mutating func square() {
        self = self * self
    }
}

extension String {
    var unicornLevel : String {
        var unicorns = ""
        let strings = self.replacingOccurrences(of: " ", with: "")
        
        for _ in 0..<strings.characters.count{
            unicorns.append("🦄")
        }
        return unicorns

    }
}













































