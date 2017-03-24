//
//  Extensions.swift
//  
//
//  Created by Brendt Bly on 3/22/17.
//
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
        /*
         Create a String extension computed property for the String class called pigLatin
         Takes the first letter of a word and moves it to the end
         Adds the letters "ay" to the end of the word
         Should be able to handle sentences
         If it's a single letter, it should return the character
         */
        let wordsArray = self.components(separatedBy: " ")
        // let vowels = ["a", "e", "i", "o", "u"]
        var pigLatinArray: [String] = []
        
        //if single character return that char
        if self.characters.count == 1 {
            return self
        }
        //for loop 1. stores each word in a varaible.  1.5 lowercase 2. Store first letter in a var 3. delete first letter.  4. Add first letter to end of word . 5. add "ay" to end of word with append  5.5 How to handle "." 6. Add the word to a pigLatinArray 7. convert the array to a sentence String 8. capitalize the first word
        
        //if first letter is a vowel, still move it to the end (according to instructions)
        
        for word in wordsArray {
            
            var word2 = word.replacingOccurrences(of: ".", with: "")
            word2 = word2.lowercased()
            let firstLetter = word2[word2.startIndex]
            word2.remove(at: word2.startIndex)
            word2.append(firstLetter)
            word2 += "ay"
            pigLatinArray.append(word2)
        }
        var sentence = pigLatinArray.joined(separator: " ")
        sentence += "."
        sentence.replaceSubrange(sentence.startIndex...sentence.startIndex, with: String(sentence[sentence.startIndex]).capitalized)
        print(sentence)
        return sentence
    }
    
    /*
     Create an Int extension computed property for the String class called points
     Should calculate the amount of points a given string has
     1 point for consonants and 2 points for vowels
     Ignores spaces and numbers, returns zero for empty strings
     Hint - This is still an extension on the String class
     Note - Y is to be taken as a consonant even though it frequently carries a vowel sound. See Jim for more info
 */
    var points: Int {
        var points: Int = 0
        let vowels: [Character] = ["a", "e", "i", "o", "u"]
        let consonants: [Character] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        let word = Array(self.characters)
        for i in word {
            if vowels.contains(i) {
                points += 2
            }
            else if consonants.contains(i) {
                points += 1
            }
        }
        return points
    }
    /*
     1.Create a computed extension property on String called unicornLevel
     Calculates one unicorn for each character in the recipient String
     Use this totes adorbs unicorn emoji 🦄 directly in your code. For example:
     let unicornPhrase = "My 🦄 is awesome"
     print(unicornPhrase)
     Console output: My 🦄 is awesome
     2.You probably haven't interacted with UIView much or maybe not at all, but let's get our unicorn status to be displayed in the simulator. Don't worry too much about how it's doing it just yet. You'll get into that later on!
     In the ViewController.swift:
     You'll see that we've added something called an IBOutlet to the top called unicornLevelLabel. This represents the object we're going to display our text in.
     unicornLevelLabel has a property text set the value of the property to your name object's unicornLevel property
     Run the program and see your unicorn level displayed in the simulator!
     */
    
    var unicornLevel: String {
        let level: Int = self.characters.count
        var unicorn: String = ""
        for _ in 1...level {
            unicorn += "🦄"
        }
        return unicorn
    }
    
}

extension Int {
    func half() -> Int {
       return self / 2
    }
    
    func isDivisible(number: Int) -> Bool {
        guard self % number == 0 else {return false}
        return true
    }
    
    func squared() -> Int {
        return self * self
    }
    
    func halved() -> Int {
       return self.half()
    }
    
    
    
    /*
 Create an extension function for the Int class called half()
 Halves itself
 Create an extension function for the Int class called isDivisible(by:) with the name of the argument being number.
 To find out if the recipient Int is divisible by the argument
 Takes in an Int argument
 Returns a bool
 Create an extension computed property for the Int class called squared
 Squares itself
 Create an extension computed property for the Int class called halved
 Halves itself by calling a function
 */
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
