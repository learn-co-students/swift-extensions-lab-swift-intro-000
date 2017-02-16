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

//STRING
//Create an extension function for the String class called whisper()
//Returns a String in lowerscase to create a whispering effect
//Create a String extension function for the String class called shout()
//Returns a String in upperscase to create a shouting effect
//Create a String extension computed property for the String class called pigLatin
//Takes the first letter of a word and moves it to the end
//Adds the letters "ay" to the end of the word
//Should be able to handle sentences
//If it's a single letter, it should return the character
//Create an Int extension computed property for the String class called points
//Should calculate the amount of points a given string has
//1 point for consonants and 2 points for vowels
//Ignores spaces and numbers, returns zero for empty strings
//Hint - This is still an extension on the String class
//Note - Y is to be taken as a consonant even though it frequently carries a vowel sound. See Jim for more info

extension String {
    
    func whisper() -> String {
        return "\(self.lowercased())"
    }
    
    func shout() -> String {
        return "\(self.uppercased())"
    }
    
    var pigLatin: String {
        guard self.characters.count > 1 else {return self}
        
        var newSentence: String = ""
        let allWords = self.components(separatedBy: " ")
        
        var countWords = 0
        
        for word in allWords {
            countWords += 1
                var newWord = word
                let igLatinpay = newWord.characters.popFirst()
            
            newWord.characters.append(igLatinpay!)
            newWord += "ay"
            newSentence += newWord
            
            if countWords == allWords.count {
                } else {
            newSentence += " "
            }
        }
        return newSentence.capitalized
    }
    
    var points: Int {
        guard !self.isEmpty else {return 0}
        
        let consonants = "bcdfghjklmnpqrstvxyz"
        let vowels = "aeiou"
        var points = 0
        
        
        for consonant in consonants.characters {
            for letter in self.characters {
                if letter == consonant {
                    points += 1
                }
            }
        }
        for vowel in vowels.characters {
            for letter in self.characters {
                if letter == vowel {
                    points += 2
                }
            }
        }
        return points
    }
}

//Create an extension function for the Int class called half()
//Halves itself
//Create an extension function for the Int class called isDivisible(by:) with the name of the argument being number.
//To find out if the recipient Int is divisible by the argument
//Takes in an Int argument
//Returns a bool
//Create an extension computed property for the Int class called squared
//Squares itself
//Create an extension computed property for the Int class called halved
//Halves itself by calling a function

//1.Create a computed extension property on String called unicornLevel
//Calculates one unicorn for each character in the recipient String
//Use this totes adorbs unicorn emoji 🦄 directly in your code. For example:
//let unicornPhrase = "My 🦄 is awesome"
//print(unicornPhrase)
//Console output: My 🦄 is awesome
//2.You probably haven't interacted with UIView much or maybe not at all, but let's get our unicorn status to be displayed in the simulator. Don't worry too much about how it's doing it just yet. You'll get into that later on!
//In the ViewController.swift:
//You'll see that we've added something called an IBOutlet to the top called unicornLevelLabel. This represents the object we're going to display our text in.
//unicornLevelLabel has a property text set the value of the property to your name object's unicornLevel property

extension Int {
    func half() -> Int {
        var newNumber = self
        
        newNumber /= 2
        return newNumber
    }
}

extension Int {
    func isDivisible(by number: Int) -> Bool {
        return self % number == 0
    }
}

extension Int {
    var squared: Int {
    return self * self
    }
}

extension Int {
    var halved: Int {
        let number = self.half()
        return number
    }
}

extension String {
    var unicornLevel: String {
    let newSentence = self.components(separatedBy: "")
    var unicornSentence = ""
    
    for word in newSentence {
        for letter in word.characters {
            if letter != " " {
                unicornSentence += "🦄"
            } else {
                unicornSentence += " "
                }
           
            }
        }
        return unicornSentence
    }
}
