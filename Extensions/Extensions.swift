//
//  Extensions.swift
//  Extensions
//
//  Created by Szamódy Zs. Balázs on 2017. 04. 26..
//  Copyright © 2017. Flatiron School. All rights reserved.
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
        let words = self.components(separatedBy: " ")
        
        var pigLatinWords: [String] = []
        var pigLatin = ""
        
        
        for var word in words {
            var punctuation = ""
            if word.characters.count == 1 {
                pigLatinWords.append(word)
            } else {
                if word.contains(".") {
                    word = word.replacingOccurrences(of: ".", with: "")
                    punctuation = "."
                    print("\(word) \(punctuation)")
                } else if word.contains(","){
                    word = word.replacingOccurrences(of: ",", with: "")
                    punctuation  = ","
                    print("\(word) \(punctuation)")
                }
                
                let firstChar = "\(word.remove(at: word.startIndex))"
                
                word = "\(word.capitalized)\(firstChar.lowercased())ay\(punctuation)"
                pigLatinWords.append(word)
            }
        }
        
        for word in pigLatinWords{
            if pigLatinWords.count == 1 {
                pigLatin += word
            } else {
                pigLatin += "\(pigLatinWords.remove(at: 0)) "
            }
        }
        
        return pigLatin
    }
    
    var points: Int {
        var points = 0
        let vowels: [String] = ["a","á","e", "é","i","í","o", "ó","ö","ő","u","ú","ü","ű","y"]
        let consonants: [String] = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
        
        var word = self.lowercased()
        
        var letters: [String] = []
        
        while word != "" {
            letters.append("\(word.remove(at: word.startIndex))")
        }
        
        for letter in letters {
            for vowel in vowels {
                if letter == vowel{
                    points += 2
                }
            }
            for consonant in consonants {
                if letter == consonant {
                    points += 1
                }
            }
        }
        
        return points
    }
    
    
}

extension Int {
    func half() -> Int {
        return self / 2
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

extension String {
    var unicornLevel: String {
        let words = self.components(separatedBy: " ")
        var unicorns: [String] = []
        var unicornSentence = ""
        for var word in words {
            var punctuation = ""
            if word.contains(".") {
                word = word.replacingOccurrences(of: ".", with: "")
                punctuation = "."
                print("\(word) \(punctuation)")
            } else if word.contains(","){
                word = word.replacingOccurrences(of: ",", with: "")
                punctuation  = ","
                print("\(word) \(punctuation)")
            }
            var unicornWord = ""
            for _ in 1 ... word.characters.count {
                unicornWord += "🦄"
            }
            unicornWord += punctuation
            unicorns.append(unicornWord)
        }
        
        for word in unicorns {
            if unicorns.count == 1 {
                unicornSentence += word
            } else {
                unicornSentence += "\(unicorns.remove(at: 0)) "
            }
        }
        
        return unicornSentence
    }
}
