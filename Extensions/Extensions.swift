//
//  Extensions.swift
//  Extensions
//
//  Created by Tor Magnus Michaelsen on 06/04/2018.
//  Copyright © 2018 Flatiron School. All rights reserved.
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
        let arrayOfWords = self.components(separatedBy: " ")
        if (arrayOfWords.count == 1) { // only one string
            //check if one character or several
            if (arrayOfWords[1].first == arrayOfWords[1].last) {
                return arrayOfWords[0] //return and skip rest
            }
        }
        var pigString = ""
        for word in arrayOfWords {// several characters, shall add ay to end of word
            
            var currWord  = word
            let firstLetter = currWord.removeFirst()
            currWord = currWord + String(firstLetter) + "ay" //currWord is being modified
            pigString += "\(currWord)"
        } //end for
        return pigString
    }//end pigLatin
    
    var points: Int {
        //get?
        let theString = Array(self)
        let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        let vowels = ["a", "e", "i", "o", "u"]
        var score = 0
        for char in theString {
            if vowels.contains(String(char)) {
                score += 2
            } else if (consonants.contains(String(char))) { //if inside or outside else
                score += 1
            }
        }
        return score
    }
    var unicornLevel: Int {
        get {
            let wordArray = Array(self)
            var level = 0
            for char in wordArray {
                if (char != " ") {
                    level += 1
                }
            }
            return level
        }
    }
    
}//end extension

extension Int {
    func half()-> Int{
        return self/2
    }
    func isDivisible(by number: Int) -> Bool {
        if (self % number == 0) {
            return true
        } else {
            return false
        }
    }
    var squared: Int {
        get {
            return self*self
        }
    }
    var halved: Int {
        get {
            return self.half()
        }
    }
}
