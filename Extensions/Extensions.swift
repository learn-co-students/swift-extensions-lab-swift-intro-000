//
//  Extensions.swift
//  Extensions
//
//  Created by Surendar S on 01/11/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


extension String {

    func whisper() -> String{
        return self.lowercased()
    }
    
    func shout()->String{
        return self.uppercased()
    }
    
    var pigLatin:String {
    
       let fArray = self.components(separatedBy: " ")
        var flg = 0
        if fArray.count == 1 {
        
            flg = 1
        
        }
        
        var outString:String = ""
        for item in fArray {
            
            var characters  = Array(item.lowercased().characters)
          
            if characters.count > 1 {
                
                let fc = characters.remove(at: 0)
                characters.append(fc)
                characters.append("a")
                characters.append("y")
                    var tempOut = ""
                for citems in characters {
                   tempOut = "\(tempOut)\(citems)"
                }
                
                if outString == "" {
                    outString = "\(tempOut)"
                }else {
                    outString = "\(outString) \(tempOut)"
                }
                
                
            }else {
            
                
                if flg==1 {
                    return item
                }else {
                    
                    outString = "\(outString) \(item)"
                
                }
                
                
            
            }
            
            
            
        }
        
        return outString.capitalized
        
        
    }
    
    
    var points:Int {
    
        let characters  = Array(self.lowercased().characters)
        var point = 0
        for char in characters {
        
            if char == " " || Int(String(char)) != nil {
                
                // do nothing
                
            }else if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"  || char == "y"{
            
                point += 2
            
            }else {
                point += 1
            }
        
        
        }
        
        
        return point
    }
    
    
    
    var unicornLevel:String {
        
        let characters  = Array(self.lowercased().characters)
        var outString = ""
        for _ in characters {
            outString = "\(outString)🦄"
        }
        return outString
    }
    

}


extension Int {

    func half()->Int{
        return self / 2
    }
    
    func isDivisible(by number:Int)->Bool{
    return self%number == 0
    }
    
    
    var squared:Int{
        return self * self
    }
    
    var halved:Int {
        return self.half()
    }

}

