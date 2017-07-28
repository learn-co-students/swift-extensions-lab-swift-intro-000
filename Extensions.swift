//
//  Extensions.swift
//  
//
//  Created by Jake Cormier on 7/28/17.
//
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
        if self.characters.count == 0 {
            return self
        } else {
            var wordArr = [String]()
            let wordBreak = self.components(separatedBy: " ")
            for word in wordBreak {
                var lett = Array(word.characters)
                let firstLett = String(lett.removeFirst()).lowercased()
                let secondLett = String(lett.prefix(1)).capitalized
                let rest = String(lett.dropFirst())
                var combo = secondLett + rest + firstLett
                combo += "ay "
                wordArr.append(combo)
            }
            let final = String(wordArr.joined().characters.dropLast())
            return final
        }
    }
    var points: Int {
        var score = 0
        if self.isEmpty {
            return score
        } else {
            let vowel = ["a", "e", "i", "o", "u", "y"]
            let cons = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x",  "z"]
            let lett = self.characters
            for letter in lett {
                if vowel.contains(String(letter).lowercased()) {
                    score += 2
                } else if cons.contains(String(letter).lowercased()) {
                    score += 1
                }
            }
        }
        return score
    }
}


extension Int {
    func half() -> Int {
        return self/2
    }
    func isDivisible(by number: Int) -> Bool {
        return self%number == 0
    }
    var squared: Int {
        return self*self
    }
    var halved: Int {
        return self.half()
    }
}


extension String {
    var unicornLevel: String {
        var wordString = ""
        let lettCount = self.characters.count
        let words = self.components(separatedBy: " ")
        for word in words {
            let lettCount = word.characters.count
            let uniString = String(repeating: "🦄", count: lettCount)
            wordString += uniString + " "
            
        }
        wordString.remove(at: wordString.index(before: wordString.endIndex))
        
        return wordString
    }
}

