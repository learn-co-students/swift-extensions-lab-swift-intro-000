//
//  Extensions.swift
//  Extensions
//
//  Created by Kenny Wong on 01/04/2017.
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
        let comp = self.components(separatedBy: " ")
        var newComp: [String] = []
        
        for c in comp {
            if c.characters.count > 1 {
                var tempSelf = c
                
                let firstChar = tempSelf.characters.first!
                tempSelf = c.appending(String(firstChar).lowercased())
                tempSelf = String(tempSelf.characters.dropFirst())
                
                let secondChar = tempSelf.characters.first!
                tempSelf = String(tempSelf.characters.dropFirst())
                tempSelf = String(secondChar).uppercased() + tempSelf + "ay "
                
                newComp.append(tempSelf)
            }
        }
        
        return String(newComp.joined().characters.dropLast())
    }
    
    var points: Int {
        if !self.isEmpty{
            var score = 0
            for i in self.characters {
                let vowels = ["a", "e", "i", "o", "u", "y"]
                let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "s", "t", "v", "w", "x", "z"]
                
                if vowels.contains(String(i).lowercased()) {
                    score += 2
                } else if consonants.contains(String(i).lowercased()) {
                    score += 1
                }
            }
            
            return score
        }
        
        return 0
    }
    
    var unicornLevel: String {
        var newString = ""
        for c in self.characters {
            if c != " " {
                newString += "🦄"
            } else {
                newString += " "
            }
        }
        
        return newString
    }
}

extension Int {
    func half() -> Int {
        return self / 2
    }
    
    func isDivisible(by: Int) -> Bool {
        return self % by == 0
    }
    
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
        return self.half()
    }
}
























