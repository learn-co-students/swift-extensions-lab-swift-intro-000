//
//  Extensions.swift
//  Extensions
//
//  Created by 迦南 on 5/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

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
//    Ignores spaces and numbers, returns zero for empty strings
//        Hint - This is still an extension on the String class
//Note - Y is to be taken as a consonant even though it frequently carries a vowel sound. See Jim for more info
extension String {
    func whisper() -> String {
        return self.lowercased()
    }
    func shout() -> String {
        return self.uppercased()
    }
    var pigLatin: String {
        if self.characters.count == 0 {
            return self
        } else {
            var newWordArray = [String]()
            let wordArray = self.components(separatedBy: " ")
            for word in wordArray {
                //get first word
                var letters = Array(word.characters)
                let firstLetter = String(letters.removeFirst()).lowercased()
                let secondLetter = String(letters.prefix(1)).capitalized
                let remainder = String(letters.dropFirst())
                var newWord = secondLetter + remainder + firstLetter
                newWord += "ay "
                newWordArray.append(newWord)
            }
            let trimEnd = String(newWordArray.joined().characters.dropLast())
            return trimEnd
        }
    }
    var points: Int {
        var score = 0
        if self.isEmpty {
            return score
        } else {
            let vowels = ["a", "e", "i", "o", "u"]
            let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
            let letters = self.characters
            for letter in letters {
                if vowels.contains(String(letter).lowercased()) {
                    score += 2
                } else if consonants.contains(String(letter).lowercased()) {
                    score += 1
                }
            }
        }
        return score
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

extension Int {
    func half() -> Int {
        return self/2
    }
    func isDivisible(by number: Int) -> Bool {
        return self%number == 0
    }
    var squared: Int {
        return self*self
    }
    var halved: Int {
        return self.half()
    }
}

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
//Run the program and see your unicorn level displayed in the simulator!

extension String {
    var unicornLevel: String {
        var wordString = ""
        let letterCount = self.characters.count
        let words = self.components(separatedBy: " ")
        for word in words {
            let letterCount = word.characters.count
            let unicornString = String(repeating: "🦄", count: letterCount)
            wordString += unicornString + " "
            
        }
        wordString.remove(at: wordString.index(before: wordString.endIndex))
        
        return wordString
    }
}
