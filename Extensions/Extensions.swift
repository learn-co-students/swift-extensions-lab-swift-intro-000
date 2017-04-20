//
//  Extensions.swift
//  Extensions
//
//  Created by Harry Disseldorp on 4/20/17.
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
    guard self.characters.count > 1 else { return self }
    var words = self.components(separatedBy: [" ", ",", "\t"])
    
    for (i, word) in words.enumerated() {
      let char = word.lowercased().characters.first!
      let index = word.index(word.startIndex, offsetBy: 1)

      words[i] = "\(word.substring(from: index).capitalized)\(char)ay"
    }
    
    var latin = String()
    
    for word in words {
      latin += word + " "
    }
    latin.characters.removeLast()
    return latin
  }
  
  var points: Int {
    guard !self.isEmpty else { return 0 }
    
    var counter = 0
    
    for char in self.characters {
      switch char {
      case "a", "A", "e", "E", "i", "I", "o", "O", "u", "U", "y":
        counter += 2
      case "b", "B", "c", "C", "d", "D", "f", "F", "g", "G", "h", "H", "j", "J", "k", "K", "l", "L", "m", "M",
           "n", "N", "p", "P", "q", "Q", "r", "R", "s", "S", "t", "T", "v", "V", "w", "W", "x", "X", "Y", "z", "Z":
        counter += 1
      default:
        break
      }
    }
    return counter
  }
  
  var unicornLevel: String {
    var newString = String()
    for char in self.characters {
      if char != " " {
        newString.append("🦄")
      } else {
        newString.append(" ")
      }
    }
    return newString
  }
}

extension Int {
  
  func half() -> Int {
    return self / 2
  }
  
  func isDivisible(by: Int) -> Bool {
    if self % by == 0 {
      return true
    }
    return false
  }
  
  var squared: Int {
    return self * self
  }
  
  var halved: Int {
    return half()
  }
}

