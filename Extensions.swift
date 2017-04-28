//
//  Extensions.swift
//  
//
//  Created by Joel Holla on 2017-04-27.
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
                } else if word.contains(",") {
                    word = word.replacingOccurrences(of: ",", with: "")
                    punctuation = ","
                    print("\(word) \(punctuation)")
                }
                
                let firstChar = "\(word.remove(at: word.startIndex))"
                
                word = "\(word.capitalized)\(firstChar.lowercased())ay\(punctuation)"
                pigLatinWords.append(word)
            }
        }
        
        for word in pigLatinWords {
            if pigLatinWords.count == 1 {
                pigLatin += word
            } else {
                pigLatin += "\(pigLatinWords.remove(at: 0))"
            }
        }
        
        return pigLatin
    }
                
        
        
    var points: Int {
        var points = 0
        for char in self.characters {
            let char_str = "\(char)".lowercased()
            if char_str == " " { continue }
            if char_str.range(of: "a|e|i|o|u|y", options: .regularExpression) != nil {
                points += 2
            }
            else if char_str.range(of: "[a-z]", options: .regularExpression) != nil {
                points += 1
            }
        }
        
        return points
        
    }
    
    
    var unicornLevel: String {
        var r_str = ""
        for char in self.characters {
            if char == " " {
                r_str += " "
                continue
            }
            else {
                r_str += "🦄"
            }
        }
        
        return r_str
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
        return half()
    }
}

