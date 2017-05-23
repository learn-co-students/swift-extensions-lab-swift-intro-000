//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

}


extension String {
    
    func whisper() -> String {
        return self.lowercased();
    }
    
    func shout() -> String {
        return self.uppercased();
    }
    
    var pigLatin: String {
        
        if self.characters.count == 1 {
            return self;
        }
        else if self.contains(" ") {
            
            var firstChar: Character = "c";
            var firstCharSet = false;
            var capatiliseNextChar = false;
            var pigLatinCharArray: [Character] = [];
            
            charLoop: for char in self.lowercased().characters {
                
                if !firstCharSet {
                    firstChar = char;
                    firstCharSet = true;
                    capatiliseNextChar = true;  
                    continue charLoop;
                }
                
                if char != " " {
                    
                    if capatiliseNextChar {
                        pigLatinCharArray.append(Character(char.description.uppercased()))
                        capatiliseNextChar = false;
                    } else {
                        pigLatinCharArray.append(char);
                    }
                    
                    continue charLoop;
                }
                
                pigLatinCharArray.append(firstChar);
                pigLatinCharArray.append("a");
                pigLatinCharArray.append("y");
                pigLatinCharArray.append(" ");
                
                firstCharSet = false;
            }
            
            return String(pigLatinCharArray);
        }
        else {
            
            var pigLatinCharArray = self.characters;
            
            pigLatinCharArray.append(pigLatinCharArray.first!);
            pigLatinCharArray.append("a");
            pigLatinCharArray.append("y");
            
            return String(pigLatinCharArray);
        }
    }
    
    var points: Int {
        var totalPoints = 0;
        
        for char in self.lowercased().characters {
            
            switch char {
                case "a", "e", "i", "o", "u", "y":
                    totalPoints += 2;
                default:
                    totalPoints += 1;
            }
        }
        
        return totalPoints;
    }
    
    var unicornLevel: String {
        
        var unicornArray: [Character] = [];
        
        for char in self.characters {
            
            switch char {
                case " ":
                    unicornArray.append(char)
                    break;
                default:
                    unicornArray.append("🦄");
            }
        }
        
        return String(unicornArray);
    }
}

extension Int {
    
    func half() -> Int {
        return self / 2;
    }
    
    func isDivisible(by argument: Int) -> Bool {
        return (self % argument == 0)
    }
    
    var squared: Int {
        return self * self;
    }
    
    var halved: Int {
        return self.half();
    }
}


