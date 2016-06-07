//: Playground - noun: a place where people can play

import UIKit


/// Lab Assignment - June 6th \\\



// Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number

func convert(string: String) -> Int? {
    return Int(string)
}

convert("6")
convert("BOOYAH")

// Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func interpolation(code: Int, message: String) -> String {
    return "\(code) \(message)"
}

interpolation(500, message: "Internal Server Error.")



// Write a function that takes in a string, and returns a message: “String contains n characters”

func numberOfCharacters(countedString: String) -> String {
    return "String contains " + "\(countedString.characters.count)" + " characters."
}

numberOfCharacters("Hey")



// Write a function that takes in a string and reverses it. Use a simple for loop

func reverse(input: String) -> String {
    var reversed: String = String()
    for index in input.characters {
        reversed = String(index) + reversed
    }
    return reversed
}
reverse("Hello")



// Bonus \\

// Declare a variable that’s function. Implement function to take in a string (name) and return greeting message

func welcome(name: String) -> String {
    return "Welcome, \(name)!"
}

var varFunc: String -> String = welcome

varFunc("Jake")


