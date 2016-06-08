//: Playground - noun: a place where people can play

import UIKit

/// Homework - June 7th \\\



// Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

func arrayOfStrings(inout array: [String]) -> [String] {
    if array.contains("Earth") == false {
        array.append("Earth")
    }
    return array
}
var arr = ["Venus", "Mars"]
arrayOfStrings(&arr)
arr


// Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”

var reduction: String = arr.reduce("", combine: {$0 + $1 + ", "})
let newReduction = reduction.endIndex.advancedBy(-2)..<reduction.endIndex
reduction.removeRange(newReduction)

// Declare and implement a dictionary that can contain as values Strings, Ints, etc

var dict = [String : Double]()
dict["penny"] = 0.01
dict


// Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter

var valueDict = ["coin" : "penny"]
var filteredArray = valueDict.filter { (key, value) -> Bool in
    return value == "penny"
}


// Write examples for union, intersect, subtract, exclusive Or set operations

var aSet: Set = [0, 1, 1, 2, 3, 4, 4, 4, 9, 9, 7, 7, 7, 7, 7]
var bSet: Set = [1, 3, 5, 6, 7, 8, 9]
var cSet: Set = [0, 1, 1, 2, 3, 4, 4, 4, 9, 9, 7, 7, 7, 7, 7]
var dSet: Set = [1, 3, 5, 6, 7, 8, 9]
var eSet: Set = [0, 1, 1, 2, 3, 4, 4, 4, 9, 9, 7, 7, 7, 7, 7]
var fSet: Set = [1, 3, 5, 6, 7, 8, 9]
var gSet: Set = [0, 1, 1, 2, 3, 4, 4, 4, 9, 9, 7, 7, 7, 7, 7]
var hSet: Set = [1, 3, 5, 6, 7, 8, 9]

let union = aSet.union(bSet)

let intersect = cSet.intersect(dSet)

let subtract = eSet.subtract(fSet)

let exclusive = gSet.exclusiveOr(hSet)


// Write a function that counts repeating words and prints out the count of each

arr.append("Earth")
var count: [String : Int] = [:]

for word in arr {
    count[word] = (count[word] ?? 0) + 1
}


// Add two numbers without using “+”

var firstNumber = 15
var secondNumber = 20
for _ in 1...firstNumber {
    secondNumber += 1
}


