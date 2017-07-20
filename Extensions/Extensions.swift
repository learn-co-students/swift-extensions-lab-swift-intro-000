//
//  Extensions.swift
//  Extensions
//
//  Created by Admin on 7/20/17.
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
        var returnString = self
        if returnString.characters.count == 1 {
            return returnString
        } else if returnString.characters.count > 1 {
            
        }

        return returnString
    }
    
}

extension Int {
    func half() -> Int {
        return self / 2
    }
    
    func isDivisible(by number: Int) -> Bool {
        if self % number == 0 {
            return true
        } else {
            return false
        }
    }
    
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
        return self.half()
    }
    
    
}
