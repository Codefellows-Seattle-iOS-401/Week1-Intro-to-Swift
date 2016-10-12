

//// Class 2 \\\\

/// Arrays, Dictonaris, Sets \\\

import UIKit


/*
 
NOTES:
 
 
Arrays
 - ordered list of elements
 - zero-indexed
 
 * declarations
 
    let stringsArray = [String]()
        -> initialized
 
    let planetArray = ["Mars", "Jupiter"]
        -> initialized with values
 
    var intArray = [Int](repeating: 0, count: 5)
 
 * subscript
    
    let myArray = ["a", "b", "c"]
    let value = myArray[2]
 
*/


var intArray = [Int](repeating: 1, count: 3)
intArray


var arr = [1, 2, 3, 4, 5, 0]
let arrCount = arr.count // number of elements in array

if arr.isEmpty {
    // checks if array is empty or not
    print("Array is empty.")
}

let arrFirst = arr.first //first value of array
let arrLast = arr.last // last value of array

let newArr = arr[3...5] // new array of index 3-5 from "arr"
let otherArr = arr[arr.first!...5] // force-wrapping to take first 6 elements in "arr"

let max = arr.max() // max value of arr
let min = arr.min() // min value of arr

let newArray = [3..<arr.count] // new array with values from index 3 of arr to the count of the arr - 1

arr.insert(100, at: 2) // insert 100 at index 2 (pushes all indexes 3 or higher up one index)



var names = ["Felix", "Kershaw", "Cruz"]
let sortedNames = names.sorted()


for (index, name) in names.enumerated() { // enumerated used to access index as well
    print("\(name): \(index)")
}

let greetingArray = names.map({"Hi, \($0)"}) // execute .map for each element in array (applies "Hi ," before each element)

let greetingsArray = names.filter({!$0.contains("Felix")}) // store all elements not named "Adam" into greetingsArray
greetingsArray



/*
 
 NOTES:
 
 Dictionaries
 
 - unoredered collection of pairs
 - each  pair is comprised of a key and a value <key, value>
 - same key cannot appear twice
 - useful for looking up id's
 - keys must be the same type as all other keys
 - values must be the same tyoes of all other values
 - accessing key, not value
 - for-in-loop uses tuple to iterate
 
 
 * declaration:
 
    var dict1 = [String : String]()
    var dict2 = ["name" : "Mars"]
    dict2 = [:] // empty out dict2
 
 
 *** great for json ***
 
 
 */

var person = ["firstName" : "Jake", "lastName" : "Dobson", "favoriteLanguage" : "Swift"]
person.count
//person[2]

for (k, v) in person { // tuple needed to iterate through dictionary (must be key, value) always key first, then value is given
    print(k)
    print(v)
    
}

let keys = Array(person.keys) // storing keys in an array
let values = Array(person.values) // storing values in an array

// iterate through keys of person dict
for key in person.keys {
    print(key)
}

//iterate through values of person dict
for value in person.values {
    print(value)
}

// hash values

let jake = "Jake"
jake.hash
jake.hashValue

let jacob = "Jacob"
jacob.hash
jacob.hashValue

let jacobo = "jake"
jacobo.hash
jacobo.hashValue


/*
 
 NOTES:
 
 Sets
 
 ** swift cannot infer a set!! **
 
 - unordered collection
 - can use .first and .last, but is inconsistent because is unordered
 
 *** common operations ***
 
 union(_:)
    - creates new set with all values of 2 sets
    - no multiples
 
 intersection(_:)
    - new set with only values in both sets
 
 subtract(_:)
    - new set by removing values that appear in the second set
 
 symmetric(_:)
    - union, but no duplicates
 
 */



let setA: Set = [1, 2, 6, 7, 8, 9]
let setB: Set = [0, 1, 2, 3, 4, 5]

// union
let unionSet = setA.union(setB)

// intersection
let intersectionSet = setA.intersection(setB)

// subtract
let subtractSet = setA.subtracting(setB)

// symmetric
//let symmetricSet = setA.symmetric(setB)









