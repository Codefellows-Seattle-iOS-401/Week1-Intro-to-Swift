import UIKit
/*
                        Class 1 Homework/Lab
                            10/10/16

 
 #CODECHALLENGES
 
 1) Write a function that takes in a string, checks if it can be converted to a number, and returns a optional number
 
 2) Write a function that takes in a tuple (Int, Int) and returns the sum of the 2 values as Int
 
 3) Write a function that take in a string, and returns a message: “String contains n characters”
 
 4) Write a function that takes in a string and reverses it. Use a simple for loop
 
 */



                //// Problem 1 \\\\

func stringFunc(aString: String) -> Int? {
    return Int(aString)
}
stringFunc(aString: "hello")
stringFunc(aString: "10")
//stringFunc(aString: 20) // cannot do because input is not a string



                //// Problem 2 \\\\

//let tuple : (a: Int, b: Int)

func tupleAdder(a: Int, b: Int) -> Int {
    return a + b
}
tupleAdder(a: 30, b: 41)
tupleAdder(a: 56, b: 93)



                //// Problem 3 \\\\

func stringTaker(bString: String) -> String {
    //print(bString)
    let chars = bString.characters.count
    //print(chars)
    return "String contains \(chars) characters"
}
stringTaker(bString: "Hello")



                //// Problem 4 \\\\

//my solution

func reverse(theString: String) -> String {
    var stringReversal = ""
    for letter in theString.characters {
        stringReversal.insert(letter, at: stringReversal.startIndex)
    }
    return stringReversal
}
reverse(theString: "reverse")
reverse(theString: "This sentence will be reversed.")


// other solution

func letsReverse(string: String) -> String {
    var result = ""
    
    for character in string.characters {
        result = String(character) + result
    }
    return result
}

letsReverse(string: "My oh my!")
letsReverse(string: "Hockey starts tomorrow.")






