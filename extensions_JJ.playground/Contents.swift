//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

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
*/


var name = "Joseph Gingle Heimer Schmitt"

//var name = "Cualquier otra mierda creo que podria funcionar con lo que quiera que le ponga"


var Discrete : [String] = []

for i in name.characters.indices {

if name.characters.count > 0 {
    if let n = name.characters.index(of: " ") {
let n1 = String(name.characters.prefix(upTo: n))
Discrete.append(n1)
let subRange = name.startIndex...n
name.removeSubrange(subRange)
print("\(Discrete)")
name.characters.count
    } else {
        Discrete.append(name)
        name = ""
    }
}
}
print("\(Discrete)")

for ele in Discrete {
 var ele1 = ele
ele1.append(ele.characters.first!)
ele1.append("ay")
ele1.characters.removeFirst(1)
name.append(ele1.capitalized + " ")
print("\(ele1.capitalized)")
}
print("\(name)")


