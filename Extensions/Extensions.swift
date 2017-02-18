//
//  Extensions.swift
//  Extensions
//
//  Created by othman safarini on 2/18/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    
    func whisper() {
       print(self.lowercased())
    }
    
    func shout() {
        print(self.uppercased())
    }
    
    var pigLatin: String {
        guard self.characters.count > 1 else { return self }
        return self
    }
    
    var points: Int {
        var count = 0
        
        for (_,word) in self.characters.enumerated() {
            if word == "a" || word == "A" || word == "o" || word == "O" || word == "u" || word == "U" || word == "w" || word == "W" ||     word == "e" || word == "E" {
                count += 2
            } else if (word == " ") || (word > "0" ) {
                count += 0
            } else  {
                count += 1
            }
        }
        return count
    }
    
   
}
