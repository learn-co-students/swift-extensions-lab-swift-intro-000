//
//  Extensions.swift
//  Extensions
//
//  Created by Juan Jaramillo on 1/8/17.
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
    
    
    var points: Int {
        
        var points: Int = 0
        let vowels: [Character] = ["a","e","i","o","u","A","E","I","O","U"]
        let consonants: [Character] = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z","B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z"]
       
        if self.characters.count != 0 {
            
        
        for characters in self.characters {
            
            for i in vowels {
            if characters == i {
                points += 2
                }
             }
            for j in consonants {
                
             if characters == j {
            points += 1
               }
             }
       }
       return points
    }
       return 0
    
    }

     var pigLatin : String {
        
        var name = self
        var Discrete : [String] = []
        for i in name.characters.indices {
            
            if name.characters.count > 0 {
                if let n = name.characters.index(of: " ") {
                    let n1 = String(name.characters.prefix(upTo: n))
                    Discrete.append(n1)
                    let subRange = name.startIndex...n
                    name.removeSubrange(subRange)
                    print("\(Discrete)")
                    name.characters.count // for debug only
                } else {
                    Discrete.append(name)
                    name = ""
                }
            }
        }
        print("\(Discrete)")
        
        for ele in Discrete {
            var ele1 = ele
            ele1.append(ele.characters.first!)
            ele1.append("ay")
            ele1.characters.removeFirst(1)
            name.append(ele1.capitalized + " ")
            print("\(ele1.capitalized)")
        }
        name.characters.removeLast()
        print("\(name)")
return name
    }
    
    var unicornLevel : String {
        
      
        var result: String = ""
        
        for character in self.characters {
            
            if character != " " {
                result.append("🦄")
            }
        }
        
        return result
    }
    

}


extension Int {
    
    mutating func half() -> Int {
        self = self/2
        return Int(self)
    }
    
    func isDivisible(by num: Int) -> Bool {
        if self % num == 0 {
            return true
        }
        return false
    }
    
    var squared: Int {
        
        return (self * self)
    }
    
    var halved : Int {
        
        var n = self
       return n.half()
    
    }
}





            
   
