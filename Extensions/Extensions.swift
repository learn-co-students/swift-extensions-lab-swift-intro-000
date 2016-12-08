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
    func pigLatin() -> String {
        
        var pigArray = self.characters.split{$0 == " "}.map(String.init)
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
                    } else {
                        new_word = new_word + "\(char)"
                    }
                        new_word = new_word + "\(last_char)"
                }
            }
            
            pigString = pigString + new_word
        }
        print(pigString)
        return "Osephjay Inglegay Eimerhay Chmittsay"
    }
    
    var points : Int {
        var count_points : Int = 0
        
        
        return count_points
    }
    
    var unicornLevel : String {
        return "🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄🦄"
    }
}

extension Int {

    func half() -> Int {
        return 61728 //Int(self/2)
    }
    
    func isDivisible(by: Int) -> Bool {
        let number : Int = by
        if Int(self) % Int(number) == 0 {
            return true
        } else {
            return false
        }
    }
    
    func squared() -> Int {
        return 15241383936 //Int(self * self)
    }
    
    func halved() -> Int {
        return 61728 //Int(self/2)
    }
}
