//
//  Extensions.swift
//  Extensions
//
//  Created by Nahar Alamoudi on 10/17/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import UIKit


extension String {
    
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin: String {
    
            
        let x = self.components(separatedBy: " ")
        var newSentence = ""
        
        if self.count == 1{
            return self
        } else{
        
        for (index,value) in x.enumerated() {
            
            if (index + 1) == (x.count){
                var word = value
                let firstLetter = word.removeFirst()
                let newWord = "\(word)\(firstLetter)ay"
                newSentence = "\(newSentence)\(newWord)"
            } else {
            var word = value
            let firstLetter = word.removeFirst()
            let newWord = "\(word)\(firstLetter)ay"
            newSentence = "\(newSentence)\(newWord) "
            }
        }
        
        return newSentence.capitalized
    }
    }
    
    var points: Int {
        
        let letters = Array(self)
        var count = 0
        
        if letters.count == 0 {
        return count
        }
        
        for letter in letters {
            switch letter {
            case "a":
                count += 2
            case "A":
                count += 2
            case "e":
                count += 2
            case "E":
                count += 2
            case "i":
                count += 2
            case "I":
                count += 2
            case "o":
                count += 2
            case "O":
                count += 2
            case "u":
                count += 2
            case "U":
                count += 2
            case "y":
                count += 2
            case "Y":
                count += 2
            default:
                count += 1
            }
            }
            return count
    }
    
    var unicornLevel: String {
        
        var result: String = ""
        
        // Replace individual characters in the string.
        // ... Append them to a new string.
        for char in self {
            if char == " " {
                result = "\(result) "
            }
            else {
                result = "\(result)🦄"
            }
        }
        
        return result
}
}


/*
 1.Create a computed extension property on String called unicornLevel
 Calculates one unicorn for each character in the recipient String
 Use this totes adorbs unicorn emoji 🦄 directly in your code. For example:
 */

extension Int {
    
    mutating func half() {
        
        self = self/2
        
    }
    
    func isDivisible(by number: Int) -> Bool {
        
        if self%number == 0 {
            return true
        } else {
            return false
        }
        
    }
    
    var squared: Int {
        
        mutating get {
            
            self = self * self
            return self
        }
        
    }
    
    var halved: Int {
        
        mutating get {
            
            var x = self
            
            x.half()
            
            return x
        }
    }
    
}




