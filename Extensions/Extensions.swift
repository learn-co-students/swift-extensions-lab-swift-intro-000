//
//  Extensions.swift
//  
//
//  Created by Koi Stephanos on 10/10/17.
//

import Foundation


extension String {
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin : String {
        get {
        var word = "";          //initializes word
        var words = [String]()   //initializes array of words
        var output = ""         //initializes return string
        
        //if one character, return as is
        if(self.count == 1) {
            return self;
        }
        
        //else, convert self into an array of words
        for char in self.characters {
            //if this char is a space
            if char == " " {
                //then were done building this word, so add it to the array and reset our word var.
                words.append(word)
                word = ""
            } else {
                //otherwise, add the char to our word var
                word += String(char);
            }
        }
        //adds the last word to the words array
        words.append(word)
        word = ""
        
        //for every word in array, move first character to end and add 'ay'
        for index in 0...(words.count - 1) {
            words[index].insert(words[index].removeFirst(), at: words[index].endIndex)
            words[index] += "ay"
            words[index] = words[index].lowercased()
        words[index].insert(Character(String(words[index].removeFirst()).uppercased()), at: words[index].startIndex)
        }
        
        //rebuilds words array into output string
        for w in words {
            output += w
            if(words.index(of: w) != words.count - 1) {
                output += " "
            }
        }
        
            
        return output
        }
    }
    
    var points : Int {
        get {
            let undesireables = " 1234567890"
            let vowels = "aeiouAEIOU"
            var count = 0;
            
            for char in self.characters {
                if !undesireables.contains(char) {
                    if vowels.contains(char) {
                        count += 2
                    } else {
                        count += 1;
                    }
                }
            }
            
            return count
        }
    }
    
    var unicornLevel : Int {
        get {
            var count = 0
            
            for char in self.characters {
                if char == "🦄" {
                    count += 1
                }
            }
            
            return count
        }
    }
}

extension Int {
    
    func half() -> Int {
        return self/2
    }
    
    func isDivisible(by number : Int) -> Bool {
        if self % number == 0 {
            return true
        } else {
            return false
        }
    }
    
    var squared : Int {
        get {
            return self * self
        }
    }
    
    var halved : Int {
        get {
            return self/2
        }
    }
}

