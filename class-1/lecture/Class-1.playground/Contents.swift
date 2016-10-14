//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let number: Int = 10

let myString : String = "\(number)"

let float : Float = Float(number)


var myTuple : (String, Int)

myTuple.0 = "Something else"





let planet = "Mars"


if planet == "Mars"{
    
} else {
}

planet == "Earth" ? print("Equal") : print("Not Equal")


let age = 30

switch age{
case 0...3:
    print("toddler")
case 4...12:
    print("got your hands full")
case 13..<18:
    print("Teen")
case 18, 21, 30:
    print("real bad")
default:
    print("This wasnt what I expected")
}

let numbers = [0,1,2,3,4,5]

for number in numbers{
    print(number)
}

for number in stride(from: 0, to: numbers.count, by: 10){
    let numberAtIndex = numbers[number]
}

var count = 100

repeat {
    print(count)
    count += 1
} while count < 10



func square(number: Int) -> Int {
    
    let test = 100

    
    return number * number
}


func number(myString: String = "0") -> Int?{
    
    return Int(myString)
    
}

let result = number()


square(number: 10)

let mySquareFunc = square(number: 10)


let addTwoNumber: (Int, Int) -> () = {(numberOne, numberTwo) in
    print(numberOne + numberTwo)
}

addTwoNumber(10, 20)











var optionalString : String?

let counter = 1000

if counter < 100 {
    optionalString = "Under One Hundo"
}

print(optionalString)


if let optionalString = optionalString{
    print(optionalString)
}

for num in 1...100{
    guard let optionalString = optionalString else { break }
    print(num)
}








