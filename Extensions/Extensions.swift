//
//  Extensions.swift
//  Extensions
//
//  Created by Luis Romo on 23/01/18.
//  Copyright © 2018 Flatiron School. All rights reserved.
//

import Foundation
extension String{
    func whisper() -> String{
        return self.lowercased()
    }
    func shout()->String{
        return self.uppercased()
    }

    var pigLatin:String {
        var tempStringsArray = self.components(separatedBy: " ")
        if tempStringsArray.count == 1 {
            if tempStringsArray[0].first == tempStringsArray[0].last {
                return tempStringsArray[0]
            }
        }
        var newString:String = ""
        for string in tempStringsArray {
            var aWord = string
            let firstChar = aWord.removeFirst()
            aWord = aWord + String(firstChar)
            aWord = aWord + "ay"

            newString += " \(aWord)"
        }
        return newString
    }
    var points: Int{
        get{
            var score = 0
            let myString = Array(self)
            let vowels = ["a", "e", "i", "o", "u"]
            let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "s", "t", "v", "w", "x", "y", "z"]
            for char in myString {
                if vowels.contains(String(char)) {
                    score += 1
                }
                else {
                    if consonants.contains(String(char)) {
                        score += 2
                    }
                }
            }
            return score
        }
    }
    var unicornLevel:Int{
        get{
            var count = 0
            for char in self{
                if char == "🦄"{
                    count += 1
                }
            }
            return count
        }
    }
}
extension Int{
    func half()->Int{
        return self/2
    }
    func isDivisible(by number: Int) -> Bool {
        if(self % number == 0){
            return true
        }else{
            return false
        }
    }
    var squared:Int{
        get{
            return self * self
        }
    }
    var halved:Int{
        get{
            return self/2
        }
    }
}




