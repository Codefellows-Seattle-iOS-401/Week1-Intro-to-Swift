//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Write a function that takes in a string, checks if it can be converted to a number, and returns a optional number



func numberFunction (string: String) -> Int? {
    return Int(string)
}


//testing
let intOptional: Int? = Int("42")
intOptional

var myString: String?

if str == "Hello playground"{
    myString = "YAY!!"
}

numberFunction(string: "aaaaa")

let some: String = "a1b2"

numberFunction(string: some)



// Write a function that takes in a tuple (Int, Int) and returns the sum of the 2 values as Int


func tupleFunc (first: Int, second: Int) -> Int {
    return first + second
}

tupleFunc(first: 1,second: 1)

func betterTupleFunc (tuple:(a: Int, b: Int)) -> Int {
    return tuple.a + tuple.b
}

betterTupleFunc(tuple: (a: 1, b: 1))

let taple = (10, 10)



// Write a function that takes in a string, and returns a message: “String contains n characters”

func stringFunc (_ string: String) -> String {
    return "String contains " + string +  " characters"
}

stringFunc("10")



// Write a function that takes in a string and reverses it. Use a simple for loop


var hold = ""
for character in "hello".characters {
    hold = String(character) + hold
}
hold

let answer = (true && 1 != 2) || (4 > 3 && 100 < 1)



//testing
String("This is a test string.".characters.reversed())

func reverseString (string: String) -> String {
    return String(string.characters.reversed())
}



var thisString = reverseString(string: "hello")
var reversedArray = Array("hello".characters)


//func complicatedReversal (_ string: String) -> Array<Any> {
//    var hold = Array(thisString.characters)
//    for String in hold {
//        
//    }
//    return Array(string.characters)
//}
//
//complicatedReversal(thisString)

reversedArray.count

var finalArray = [String]()

for index in reversedArray {
    
}




