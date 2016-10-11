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



//Write a function that takes in an array of planet names as strings, checks if array contains “Earth”. If it does not, add it. Otherwise, do nothing.


var planetArray = ["Mars", "Uranus", "...Getit?", "Mars", "Uranus"]

func addEarth (planet: String) -> [String] {
    if !planetArray.contains("Earth") {
        planetArray.append("Earth")
    }
    return planetArray
}

addEarth(planet: "Earth")


//Using sort and reduce, create string from the above array sorted alphabetically. Example Output: [“Venus”, “Earth”] would produce “Earth Venus”

let numbers = [1, 2, 3, 4]
let addTwo: (Int, Int) -> Int = { x, y in x + y }
let numberSum = numbers.reduce(0, addTwo)
// 'numberSum' == 10

let makeString: (String, String) -> String = {planet1, planet2 in planet1 + " " + planet2}
let doTheStuff = planetArray.reduce("", makeString)



//Declare a dictionary of string keys and values. Declare a function that takes in a string and searches dictionary for it as a value.

var myDictionary: [String:String]

myDictionary = ["Aardvark":"Mammal"]

func search (key: String) -> String {
    for key in myDictionary.keys {
        print(key)
    }
    return "We've found this string"
}

search(key:"Aardvark")



//Write a function that counts repeating words in an array of strings, and prints out the count of each


func repeatFunction (planet: String) -> Int {
    var count = 0
    for x in planetArray {
        if x == planet {
            count += 1
        }
    }
    return count
}

repeatFunction(planet: "Mars")








