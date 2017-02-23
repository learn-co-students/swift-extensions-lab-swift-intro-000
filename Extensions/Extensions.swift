//
//  Extensions.swift
//  Extensions
//
//  Created by Hing Yen Yin on 2/21/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {

func whisper() -> String {

return self.lowercased()

}



        func shout () -> String {
return self.uppercased()

}

    var pigLatin: String {

    var newSentence: String = ""
    
    let allWords = self.components(separatedBy: " ")
    
            var countWords = 0
    
            for word in allWords {
               countWords += 1
                    var newWord = word
                    let igLatinpay = newWord.characters.popFirst()
    
                newWord.characters.append(igLatinpay!)
                newWord += "ay"
                newSentence += newWord
    
                if countWords == allWords.count {
                    } else {
                newSentence += " "
                }
            }
            return newSentence.capitalized
        }


    var points: Int {
        
        get {

        var pointScore = 0
        
                    if self.isEmpty {
            
                            return 0
                        }
        
                    for char in self.lowercased().characters {
            
                            switch char {
                                                case "a", "e", "i", "o", "u", "y":
                                      pointScore += 2
                        
                                case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "y", "z":
                                        pointScore += 1
                        
                               default:
                                        pointScore += 0
                               }
                        }
        
                    return pointScore
                }
    
        }

}


extension Int {


    func half () -> Int {

        return self/2 }


    func isDivisible(by number: Int) -> Bool {

return
    
    self % number ==  0

}



    var squared:  Int {

        get {

return self * self

}
}

    var halved: Int {


        get {
return self.half()

}
}

}







