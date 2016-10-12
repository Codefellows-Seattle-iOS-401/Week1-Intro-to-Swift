
import UIKit

/*
 
 #CODE CHALLENGES
 
 
1)  Write a function that takes in an array of planet names as strings, checks if array contains “Earth”. If it does not, add it. Otherwise, do nothing.
 
 
2)  Using sort and reduce, create string from the above array sorted alphabetically. Example Output: [“Venus”, “Earth”] would produce “Earth Venus”
 
 
3)  Declare a dictionary of string keys and values. Declare a function that takes in a string and searches dictionary for it as a value.
 
 
4)  Write a function that counts repeating words in an array of strings, and prints out the count of each.
 
 */


                //// PROBLEM 1 \\\\

var mutableArray: [String] = ["Mars", "Pluto", "Uranus", "Alaska", "absolute", "because", "Earth", "Earth"]

func arr(array: [String]) {
    //check if array contains "Earth"
    if array.contains("Earth") {
        print(array)
    } else {
        print("array does not contain the string earth")
    }
}
arr(array: mutableArray)


                //// PROBLEM 2 \\\\

var sortedArray = mutableArray.sorted()
print(sortedArray)

var reducedArray = sortedArray.reduce("", {$0 + " " + $1})
print(reducedArray)

//let removeCommasFromArray: [String] -> String = { _ in mutableArray }

//adding sum of Ints using reduce
let numbers = [1, 2, 3, 4]
let add: (Int, Int) -> Int = { x, y in x + y }
let sum = numbers.reduce(4, add) // 4 maeans the inital value is 4 ((sum of array) + 4)
print(sum)


                /// PROBLEM 3 \\\\

let person = ["firstName" : "Jake", "lastName" : "Dobson", "age" : "25"]
let keys = Array(person.keys)
let values = Array(person.values)

func search(aString: String) {
    if person["lastName"] == aString {
        print("success!")
    }
}
search(aString: "loser")


                //// PROBLEM 4 \\\\

func repeatingWordCount(aString: String) -> Int {
    var count = 0
    
    for index in mutableArray {
        if index.contains(aString) {
            count += 1
        }
    }
    print(count)
    return count
}
repeatingWordCount(aString: "Earth")


//    for item in stringsArray {
//        count[item] = (count[item] ?? 0)! + 1
//        if count[item] == stringsArray
//    }





