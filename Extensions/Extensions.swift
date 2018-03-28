//
//  Extensions.swift
//  Extensions
//
//  Created by Eric Lein on 3/27/18.
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
        let testArray: [String] = self.components(separatedBy: " ")
        var pigSentence: [String] = []
        for word in testArray {
            if word.count == 1 {
                pigSentence.append(word.lowercased())
            }
            else {
                var testWord: [Character] = []
                for letter in word {
                    testWord.append(letter)
                }
                let firstLetter = testWord[0]
                testWord.remove(at: 0)
                testWord += [firstLetter, "a", "y"]
                pigSentence.append(String(testWord).lowercased())
            }
        }
        let firstWord = pigSentence[0].capitalized
        pigSentence.remove(at: 0)
        //        let lastWord = pigSentence.last!.capitalized
        //        pigSentence.removeLast()
        var pigString: String = "\(firstWord)"
        
        for word in pigSentence {
            pigString += " \(word.capitalized)"
        }
        //        pigString += "\(lastWord)"
        return pigString
    }
    
    var points: Int {
        var totalPoints: Int = 0
        let vowels: [Character] = ["a", "e", "i", "o", "u", "y"]
        let cons: [Character] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
        for character in self.lowercased() {
            if vowels.contains(character) {
                totalPoints += 2
            }
            if cons.contains(character) {
                totalPoints += 1
            }
        }
        return totalPoints
    }
    
    var unicornLevel: String {
        var unicornSentence: String = ""
        var unicornArray: [String] = self.components(separatedBy: " ")
        for word in unicornArray {
            var unicornWord: String = ""
            for _ in word {
                unicornWord += "🦄"
            }
            unicornSentence += "\(unicornWord) "
        }
        unicornSentence.removeLast()
        return unicornSentence
    }
}



extension Int {
    
    func half() -> Int {
        return self / 2
    }
    
    func isDivisible(by number: Int) -> Bool {
        if self % number == 0 {
            return true
        }
        else {
            return false
        }
    }
    
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
        return self.half()
    }
    
}


