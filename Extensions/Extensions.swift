//
//  Extensions.swift
//  
//
//  Created by Brian Poole on 4/26/17.
//
//

import Foundation

extension String{
    func whisper( ) -> String{
        return self.lowercased( )
    }
    
    func shout( ) -> String{
        return self.uppercased( )
    }
    
    var pigLatin: String{
        if self.characters.count == 1{ return self }
        
        var new_str = ""
        let words = self.components(separatedBy: " ")
        for word in words{
            if new_str != ""{
                new_str += " "
            }
            
            var first_char = ""
            for (i, char) in word.characters.enumerated(){
                if i == 1{
                    new_str += "\(char)".uppercased()
                }
                else if i > 0{
                    new_str += "\(char)"
                }
                else{
                    first_char = "\(char)".lowercased()
                }
            }
            
            new_str += "\(first_char)ay"
        }
        
        return new_str
    }
    
    var points: Int{
        var points = 0
        for char in self.characters{
            let char_str = "\(char)".lowercased()
            if char_str == " "{ continue }
            if char_str.range(of: "a|e|i|o|u|y", options: .regularExpression) != nil{
                points += 2
            }
            else if char_str.range(of: "[a-z]", options: .regularExpression) != nil{
                points += 1
            }
        }
        
        return points
    }
    
    var unicornLevel: String{
        var r_str = ""
        for char in self.characters{
            if char == " "{
                r_str += " "
                continue
            }
            else{
                r_str += "🦄"
            }
        }
        
        return r_str
        
    }
}

extension Int{
    func half( ) -> Int{
        return self / 2
    }
    
    func isDivisible(by number: Int) -> Bool{
        return self % number == 0
    }
    
    var squared: Int{
        return self * self
    }
    
    var halved: Int{
        return half( )
    }
}
