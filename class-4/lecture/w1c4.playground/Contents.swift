//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct MyStruct{
    
        
    mutating func doSomethingElse(string: String){
        self.something = string
    }
    
}

var test = MyStruct(something: "This is the first thing.")

test.doSomethingElse(string: "second thing.")

test.something






enum Weather{
    case reallyHot
    case rainy
    case reallyCold
    case snowing
    
    func whatsTheWeather() -> Weather{
        return self
    }
}


let currentWeather = Weather.rainy

currentWeather.whatsTheWeather()





enum Identification{
    case social(Int)
    case email(String)
    case other(Int, Int, Int)
}

let myId = Identification.other(714, 609, 8889)



var myEmail : String

switch myId {
case .email(let email):
    myEmail = email
case .social:
    print("ID is social security number")
    
case .other(let num1, let num2,let num3):
    print("Phone #:\(num1)-\(num2)-\(num3)")
    
}






var counter = 100

var halfCount : Int {
    return counter / 2
}


func half(count: Int) -> Int{
    return count / 2
}

halfCount

half(count: 100)




class Store{
    
    var objects = [String]()
    
    static let sharedStore = Store()
    
    func add(string: String){
        objects.append(string)
    }
    
}

enum VehicleError: Error{
    case NoFuel
    case EngineTrouble
}



class Vehicle{
    var gasMeter = 0
    
    func go() throws -> Int?{
        if self.gasMeter > 0{
            print("GOING!!")
        } else if gasMeter == 0 {
            throw VehicleError.NoFuel
        } else{
            throw VehicleError.EngineTrouble
        }
        
      return nil
    }
    
}





let myCar = Vehicle()

//myCar.gasMeter = 100


try? myCar.go()























