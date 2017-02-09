//
//  Extensions.swift
//  Extensions
//
//  Created by Marc Aupont on 2/9/17.
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
        
        get {
            
            var newString = ""
            
            var wordArray = [String]()
            var modifiedArray = [String]()
            
            if self.characters.count == 1 {
                
                return self
            }
            
            wordArray = self.components(separatedBy: " ")
            
            for word in wordArray {
                
                let firstChar = word.lowercased().characters.first!
                
                let index = word.index(after: word.startIndex)
                let middle = word.substring(from: index)
                
                let transformedWord = "\(middle.capitalized)\(firstChar)ay"
                
                modifiedArray.append(transformedWord)
            }
            
            for word in modifiedArray {
                
                if newString.isEmpty {
                    
                    newString += word
                    
                } else {
                    
                    newString += " " + word
                }
                
                
            }
            
            return newString
        }
        
        
    }
    
    var points: Int {
        
        get {
            
            var pointScore = 0
            
            if self.isEmpty {
                
                return 0
            }
            
            for char in self.lowercased().characters {
                
                switch char {
                    
                case "a", "e", "i", "o", "u", "y":
                    pointScore += 2
                    
                case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "y", "z":
                    pointScore += 1
                    
                default:
                    pointScore += 0
                }
            }
            
            return pointScore
        }
        
    }
    
}

extension Int {
    
    func half() -> Int {
        
        return self / 2
    }
    
    func isDivisible(by number: Int) ->Bool {
        
        return self % number == 0
    }
    
    var squared: Int {
        
        get {
            
            return self * self
        }
    }
    
    var halved: Int {
        
        get {
            
            return self.half()
        }
    }
    
}
