//
//  Extensions.swift
//  Extensions
//
//  Created by Brigitte van der Loo on 16/07/2017.
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
  
  
 // Create a String extension computed property for the String class called pigLatin
  
  var pigLatin: String{
    
    guard self.characters.count > 1 else {
      return self
      }
    var result = self.lowercased()
    let arrayFromString = result.components(separatedBy: " ")
  
    print(arrayFromString)
    var arrayResult: [String] = []
    
    
    for word in arrayFromString{
      var editableWord = word
      let firstLetter = word[word.startIndex]
      editableWord.remove(at: result.startIndex)
      editableWord += String(firstLetter)
      editableWord += "ay"
      arrayResult.append(editableWord)
    
      }
    result = arrayResult.joined(separator: " ")
    
    return result.capitalized
    }
  
  var points:Int {
    guard self.characters.count > 1 else {
      return 0
    }
    
    
    let vowels = ["a","e","i","o","u","y"]
    let consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
    var points = 0
    let arrayFromString = self.components(separatedBy: "")
    for word in arrayFromString{
      let wordArray = Array(word.characters)
      for letter in wordArray{
        if consonants.contains(String(letter).lowercased()){
          points += 1
      }
        else if vowels.contains(String(letter).lowercased()){
        
        points += 2
        }
        else {
          points += 0
      }
      }
    }
    return points
  }
  
}
  
    
  


  extension Int {
    func half() ->  Int{
      return self/2
    }
  
  func isDivisible(by number:Int ) -> Bool{
    //use the remainder operator %
    return self % number == 0
  }
  
  var squared : Int {
    return self*self
    }
  var halved : Int{
    return half()
      }
    }

extension String {
  var unicornLevel: String{
    var unicorns = ""
    for letter in self.characters{
      if letter != " "{
        unicorns.append("🦄")
        }
      else  {
        
      
        unicorns.append(" ")
      
      }
    print (unicorns)
    }
    return unicorns
   
  }
}





  
  
  
  
  
  
  
  
