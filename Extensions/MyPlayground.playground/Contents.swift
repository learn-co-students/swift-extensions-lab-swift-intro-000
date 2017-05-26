//: Playground - noun: a place where people can play

import UIKit

extension String {
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin: String {
        return ""
    }
}

var str = "I am good boy"

//str.pigLatin
//
//var newWordArray = [String]()
//var wordArray = str.components(separatedBy: " ")
//
//for word in wordArray {
//    var letters = Array(word.characters)
//    let first_letter = String(letters.removeFirst()).lowercased()
//    let second_letter = String(letters.prefix(1)).uppercased()
//    let remainder = String(letters.dropLast())
//    
////    print(first_letter)
////    print(second_letter)
////    print(remainder)
//    
//    var newWord = second_letter + remainder + first_letter
//    newWord += "ay "
//    newWordArray.append(newWord)
//    print(newWordArray)
//}
//
//let result = String(newWordArray.joined().characters.dropLast())
//
//print(result)

//var newWordArray = [String]()
//var wordArray = str.components(separatedBy: " ")
//
//for word in wordArray {
//    var letters = Array(word.characters)
//    var first_letter = String(letters.removeFirst()).lowercased()
//    var second_letter = String(letters.prefix(1)).capitalized
//    var remainder = String(letters.dropFirst())
//    
//    
//    var newWord = second_letter + remainder + first_letter
//    newWord += "ay "
//    
//    newWordArray.append(newWord)
//}
//
//let result = String(newWordArray.joined().characters.dropLast())
//
//
//

var points: Int =  0
var vowelPoints: Int

let inputs = "aeiouy"
let vowels = "aeiou"

for input in inputs.characters {
    switch input {
    case "a", "e", "i", "o", "u", "y":
        points += 2
    default:
        points += 1
    }
}

points






























