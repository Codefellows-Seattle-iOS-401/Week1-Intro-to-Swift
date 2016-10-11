//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var person = ["first":"John", "last":"Shaff", "language":"English"]
person.count

for (key, value) in person {
    print(key, value)
}

for key in person.keys {
    print(key)
}

for (_,value) in person {
    print (value)
}


//var something = names.filter({$0 != "Adam"})


let keys = Array(person.keys)


let setA : Set = [1,2,6,7,8,9]
let setB : Set = [0,1,2,3,4,5]

let unionSet = setA.union(setB)
let intersection = setA.intersection(setB)
let subtract = setA.subtracting(setB)
let symetic = setA.symmetricDifference(setB)


