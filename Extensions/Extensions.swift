//
//  Extensions.swift
//  Extensions
//
//  Created by Inga on 2/1/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation


extension String {
    
    
    
    
    func whisper() -> String {
        
        let lowercaseString = self.lowercased()
        return lowercaseString
    }
    
    
    
    
    func shout() -> String {
        
        let uppercaseString = self.uppercased()
        return uppercaseString
    }
    
    
    
    
    // computed read-only property
    var pigLatin: String {
        
        var pigLatinString = self
        
        if pigLatinString.characters.count == 1 {
            print("\(pigLatinString)")
            return self
            
        } else {
            
            let firstChar = pigLatinString.characters.first // optional
            var firstCharString : String
            
            if let firstChar = firstChar {
                print("My first character is \(firstChar)")
                firstCharString = "\(firstChar)"
                pigLatinString.append(firstCharString.lowercased())
            }
            
            pigLatinString.remove(at: pigLatinString.startIndex)
            pigLatinString.append("ay")
            
            print("\(pigLatinString.capitalized)")
            
            return pigLatinString.capitalized
            
        }

    }
    
    
    
    var points: Int {
        
        
        let myString = self
        let vowels: [Character] = ["a", "e", "i", "o", "u"]
        let consonants: [Character] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
        var count = 0
        
        for character in myString.characters {
            if vowels.contains(character) {
                count += 2
            }
            
            if consonants.contains(character) {
                count += 1
            }
        }

        if myString.isEmpty {
            count = 0
        }
        
        return count
    
    }
    
    
    
}



extension Int {
    
    
    func half() -> Int {
        
        let halfMyNumber = self / 2
        return halfMyNumber
    }
    
    
    func isDivisible(by:Int) {
        
        
        
    }
    
    


}













