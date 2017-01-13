//: Playground - noun: a place where people can play

import UIKit
import Pods_Extensions


var str = "Hello, playground"

var test: String = "cualquier otra cosa"

print("\(test.characters.count)")

test.startIndex
//test.append("ANY")
test.append(test.characters.first!)
test.append("ay")
test.characters.removeFirst(1)
//test.remove(at: test.startIndex)

var temp: String = "Animalisimo"

temp.append(temp.characters.first!)
temp.append("ay")
temp.characters.removeFirst()


var num : Int = 10

num/2



var name = "Joseph Gingle Heimer Schmitt"
name.characters.dropFirst(10)
print("\(name)")


var ror : [String] = []

//for i in name.characters.indices {
   
   // if name.characters.count > 0 {
         let n = name.characters.index(of: " ")!
let n1 = String(name.characters.prefix(upTo: n))
ror.append(n1)
//let subRange = name.startIndex...n
//name.removeSubrange(subRange)
 print("\(ror)")
 //   }

//}







