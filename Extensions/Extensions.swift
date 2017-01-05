//
//  Extensions.swift
//  Extensions
//
//  Created by chenzhang he on 2017/1/5.
//  Copyright © 2017年 Flatiron School. All rights reserved.
//

import Foundation

extension Character {
    func isAlpha() -> Bool {
        if (self >= "a" && self <= "z") {
            return true;
        }
        
        if (self >= "A" && self <= "Z") {
            return true;
        }
        
        return false;
    }
    
    func isVowel() -> Bool {
        if (self == "a" || self == "o" || self == "e" || self == "i" || self == "u" || self == "y" ||
            self == "A" || self == "O" || self == "E" || self == "I" || self == "U" || self == "Y") {
            return true;
        }
        
        return false;
    }
};

extension String {
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin : String {
        get {
            var ret = "";
            var ch : Character? = nil;
            
            for c in self.characters {
                if (!c.isAlpha()) {
                    if (ch != nil) {
                        ret.append(ch!);
                        ret.append("ay")
                        ch = nil
                    }
                    
                    ret.append(c);
                    firstChar = true;
                }
                else {
                    if (ch == nil) {
                        ch = c;
                    }
                    else {
                        ret.append(c);
                    }
                }
            }
            
            if (ch != nil) {
                ret.append(ch!);
                ret.append("ay")
                ch = nil
            }
            
            return ret.lowercased().capitalized;
        }
    }
    
    var points : Int {
        get {
            var ret = 0;
            for c in self.characters {
                if (c.isAlpha()) {
                    if (c.isVowel()) {
                        ret += 2;
                    }
                    else {
                        ret += 1;
                    }
                }
            }
            
            return ret;
        }
    }
    
    var unicornLevel : String {
        get {
            var ret = ""
            for c in self.characters {
                if (c.isAlpha()) {
                    ret.append("🦄")
                }
            }
            
            return ret;
        }
    }
};

extension Int {
    mutating func half() -> Int {
        self = self / 2;
        return self;
    }
    
    func isDivisible(by: Int) -> Bool {
        if (by == 0) {
            return false
        }
        
        return (self % by) == 0
    }
    
    var squared : Int {
        get {
            return self*self
        }
    }
    
    var halved : Int {
        get {
            return self/2;
        }
    }
};




