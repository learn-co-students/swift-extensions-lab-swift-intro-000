//
//  Extensions.swift
//  Extensions
//
//  Created by Kelly Lougheed on 4/28/17.
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
        let words: [String] = self.components(separatedBy: " ")
        var newWords: [String] = []
        for word in words {
            if word.characters.count == 1 {
                newWords.append(word)
            } else {
                var wordCopy = word
                let firstChar = wordCopy.characters.popFirst()
                wordCopy = "/(wordCopy)/(firstChar)ay"
                newWords.append(wordCopy)
            }
        }
        return newWords.joined(separator: " ")
    }
    var points: Int {
        var points = 0
        var str = self.uppercased()
        for letter in str.characters {
            switch letter {
            case "A", "E", "I", "O", "U":
                points += 2
            case " ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                break
            default:
                points += 1
            }
        }
        return points
    }
    var unicornLevel: String {
        var unicornLevel: String = ""
        for char in self.characters {
            unicornLevel += "🦄"
        }
        return unicornLevel
    }
}

extension Int {
    func half() -> Int {
        return self/2
    }
    func isDivisible(by number: Int) -> Bool {
        return self % number == 0
    }
    var squared: Int {
        return self * self
    }
    var halved: Int {
        return self.half()
    }
}
