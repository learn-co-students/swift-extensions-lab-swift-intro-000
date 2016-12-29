//
//  Extensions.swift
//
//
//  Created by Benjamin Bernstein on 12/29/16.
//
//

import Foundation

extension String {
    
    
    
    func whisper() -> String  {
        return self.lowercased()
    }
    
    func shout() -> String  {
        return self.uppercased()
    }
    
    
    var pigLatin : String {
        // take all words and put into an array
        let stringForArray = self
        let newArray = stringForArray.characters.split{$0 == " "}.map(String.init)
        var output : [String] = []
        for i in newArray {
            // append if just one letter and return
            if i.characters.count < 2 {
                output.append(i)
                return String(describing: output)
            }
            // create a word in piglatin
            let firstLetter = i.characters.first!
            var newInstance = i
            let body = newInstance.remove(at: newInstance.startIndex)
            output.append("\(body) \(firstLetter) ay")
            // append to output array
        }
        
        return String(describing: output)
    }
    
    var points : Int {
        guard self.characters.count > 1 else {return 0}
        let newArray = self.components(separatedBy: "")
        print(newArray)
        var points = 0
        let vowels = ["a", "e", "i", "o", "u", "y"]
        let consonants = [ "b","c","d","e","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
        for word in newArray{
            // for every word in the array, make it into an array of characters
            let wordArr = Array(word.characters)
            
            // for each character in the array of characters
            for i in wordArr {
                if vowels.contains(String(i).lowercased())
                { points += 2
                    print(points)
                } else if consonants.contains(String(i).lowercased())
                { points += 1
                }
            }
        }
        return points
    }
    
        var unicornLevel : String {
                   var unicorns = ""
                  let strings = self.replacingOccurrences(of: " ", with: "")
        
                for _ in 0..<strings.characters.count{
                           unicorns.append("🦄")
                    }
                return unicorns
        
            }
        
    }
    


extension Int {
    
    func half() -> Int {
       return self/2
    }
    
    func isDivisible(by number: Int) -> Bool {
        guard self % number == 0 else { return false }
        return true
    }
    
    var squared : Int {
        return self * self
    }
    
    var halved : Int {
        return self.half()
    }
    
    
}
