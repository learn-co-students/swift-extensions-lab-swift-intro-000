//
//  Extensions.swift
//  Extensions
//
//  Created by Nori Ogura on 12/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {

    func whisper() -> String {
        return self.lowercased()
    }
    func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin : String {
        
        let pigArray = self.characters.split{$0 == " "}.map(String.init)
        var pigString : String = ""
        
        //var newArray : [String]
        for (index_word, word) in pigArray.enumerated() {
            

            
            //pigArray[index] = word + "ay"
            
            var new_word : String = ""
            var last_char : String = ""
            
            if word.characters.count == 1 {
                new_word = word
            } else {
                
                for (index_char, char) in word.characters.enumerated() {
                    if index_char == 0 {
                        last_char = "\(char)"
                        last_char = last_char.lowercased()
                    } else if index_char == 1 {
                        var char_String = "\(char)"
                        char_String = char_String.uppercased()
                        new_word = new_word + char_String
                    } else {
                        new_word = new_word + "\(char)"
                    }
                    
                }
                new_word = new_word + "\(last_char)ay"
            }
            if pigString == "" {
                pigString = new_word
            } else {
                pigString = pigString + " " + new_word
            }
        }
        return pigString
    }

    
    var points : Int {
        
        var count_points : Int = 0
        let vowel_array : [String] = ["a","e","i","o","u", "y", "A", "E", "I", "O", "U", "Y"] //assume no non character elements in string, including y as a vowel
        
        for char in self.characters {
            if !vowel_array.contains("\(char)"){
                count_points += 1
            }
            else {
                count_points += 2
            }
        }
    
        return count_points
    }
    
    var unicornLevel : String {
        var unicorn_string : String = ""
        
        for char in self.characters {
            
            if char != " " {
                unicorn_string = unicorn_string + "🦄"
            }
        }
        //return "🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄"
        return unicorn_string
    }
}

extension Int {

    func half() -> Int {
        return Int(self/2)
    }
    
    func isDivisible(by: Int) -> Bool {
        let number : Int = by
        if Int(self) % Int(number) == 0 {
            return true
        } else {
            return false
        }
    }
    
    var squared : Int {
        return Int(self * self)
    }
    
    var halved : Int {
        return Int(self/2)
    }
}
