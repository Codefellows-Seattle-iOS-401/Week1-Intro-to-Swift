
import UIKit

                        ////// Class 4 \\\\\\
                        ////  10/13/16   \\\\


/*
 NOTES:
 
 
        *** Enums ***
 
 - list of related values that define a common type
 - alternative to old-fashioned int values
 - can handle responses, store states, hold data, encapsulate value
 - can only satisfy one case at a time
 - associated values
    - each enum case has an associated value
 - cannot have Stored Properties!!
 
 */


enum Weather: String { // specify string type in order to force rawValue to stringify the case
    case hot
    case rainy
    case cold
    case snowy
    case windy
    
    func whatsTheWeather() -> String {
        return self.rawValue  // returning case as a string!
    }
}
let currentWeather = Weather.rainy // rawValue returns rainy as a string!
currentWeather.whatsTheWeather()

enum Identification {
    case social(Int)
    case email(String)
    case other(Int, Int, Int)
}
let myID = Identification.email("jake.dobson@gmail.com")
let myNumber = Identification.other(815, 557, 0928)
var myEmail: String


switch myID { // must handle every case in switch statements **
case Identification.email(let email):
    myEmail = email
case .social:
    print("ID is social security number")
case .other(let n1, let n2, let n3):
    print("Phone #: (\(n1))-\(n2)-\(n3)")
}

enum Whether: Int {
    case hot
    case rainy
    case cold
    case snowy
    case windy
}
let currentWhether = Whether.rainy.rawValue // rawValue now returns rainy as an Int!



/*
 NOTES:
 
 
        *** Properties ***
 
 - variables and constants that comprise the attributees of a named type
 - "static" keyword marks a type property that's universal to all instances of a particular type
 
 * Computed Properties
    - return a calculated value
    - calculates every time referenced
    - available in structs, classes, and enums
 
 * Stored Property
    - available only in structs and classes
 
 * Singleton
    - one, single global instance of a class
    - must have a constant type property
    - must be declared as private (true singleton)
    - must be a reference-type(not value, because values create copies)
    - singletons are not thread-safe
 
        class Manager {
            static let shared = Manager()
            private init() {}
        }
 
 * Property Observers
    - way to listen to property changes
    - willSet and didSet are only called when you assign a new value to a full-initialized instance
        
        var name: String {
            didSet { // fires off after assignment
                print("Name is set.")
            }
        }
 
 * Lazy Properties
    - won't be created in memory until it is accessed the first time
    - good for property that take time to calculate
    - must be a variable!!
    - when you initialize the class, the property effectively has no value
 
 
 
 */

// computed property
var count = 10
var halfCount: Int {
    return count/2
}
halfCount


// singleton
class Store {
    
    var objects = [String]()
    
    static let shared = Store() // creating a singleton (w/out private init (not yet a true singleton!!))
    private init(){} // establishing that no one can make a new instance of Store()
    // singleton gets created the first time you access it, only then, and stays until your app dies
    
    func add(string: String) {
        objects.append(string)
    }
}
Store.shared.add(string: "add")
Store.shared.objects



/*
 NOTES:
 
 
        *** Methods ***
 - functions that reside inside of a named type (class, struct, etc)
 - "mutating" keyword marks a method that changes a structure's value
 - structs require you to mark methods as mutating when you change the instance
 - able to live on the stack while being mutated
 - Methods don't need to be marked inside of a class
 
 * a method can access the value of an instance by using the keyword self
 
 * initializers are methods that aid in the creation of a new instance
 
 * Type Methods *
    -

 
    *** Error Handling ***
 - use the Error protocol
 - program "throws" the error
 - need to implement a way to "catch" the error
 - can handle errors immediately
 - can create enum that conforms to the error protocol
 - function must be marked with throws directly after parameters(if any)
 
        enum ResponseError: Error {
            case NotFound
            case Invalid
        }
 
 
 */


enum VehicleError: Error {
    case NoFuel
    case EngineTrouble
}

class Vehicle {
    var gasMeter = 0
    
    func go() throws{ // setting up implementation(need a "catch" later in the code)
        if self.gasMeter > 0 {
            print("GOING")
        } else {
            throw VehicleError.NoFuel
        }
    }
}
let myCar = Vehicle()
myCar.gasMeter = 0

do {
    // first line should always be try, anything after will execute if try is successful
    try myCar.go() // if thrown, line below is not executed
    print("We are driving...")
} catch let error {
    print("There was an error. Error: \(error)")
}





///// Mutating Struct \\\\

struct MyStruct {
    var something: String
    
    mutating func doSomethingElse(string: String) {
        self.something = string
    }
}
var test = MyStruct(something: "This is the first thing.")
test.something
test.doSomethingElse(string: "second thing")
test.something






