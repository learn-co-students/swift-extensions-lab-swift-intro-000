//
//  Extensions.swift
//  
//
//  Created by NeoTron on 4/28/19.
//

import Foundation

extension String
{
    func whisper()
    {
        self.lowercased()
    }
    
    func shout()
    {
        self.uppercased()
    }
    
    var piglatin: String
    {
        let firstLetter = self.first
        let last = "\(self)\(firstLetter)ay"
        
    }
    
    var points: Int
    {
        var counter = 0
        
        if self.isEmpty
        {
            return 0
        }
        
        for charSwitch in self
        {
            if charSwitch.isNumber || charSwitch == " "
            {
                counter += 0
            }
            else
            {
                switch charSwitch
                {
                case "a", "e", "i", "o", "u":
                    counter += 2
                default:
                    counter += 1
                }
            }
            
        }
    }
}

extension Int
{
    mutating func half()
    {
        self /= 2
    }
    
    func isDivisible(by number: Int) -> Bool
    {
        if (self % number) > 0
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    var squared: Int
    {
        return self * self
    }
    
    var halved: Int
    {
        return half()
    }
}
