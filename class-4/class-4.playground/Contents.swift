//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum Weather: String {
    case reallyHot
    case rainy
    case cold
    case snowy
    
    func getWeather() -> String {
        return self.rawValue
    }
}

let currentWeather = Weather.rainy

currentWeather.getWeather()



enum Identification {
    case social (Int)
    case email (String)
    case other(Int, Int, Int)
}

let myID = Identification.email("johnshaff@gmail.com")

Identification.email


var myEmail : String

switch myID {
case .email(let email):
    myEmail = email
case .social:
    print("this is social")
case .other(let num1, let num2, let num3):
    print("here's your numbers")
}

var count = 10


//This is an example of a computed property. It could also be written as a function, but it's a cool functionality to be able to create a computed property. 

var halfCount : Int {
    return count / 2
}



//the first time we access the Singleton it is created, which is considered lazily. Singleton's are available from the heap to the entire application so we don't get into issues of classes being stored in different controllers.

class Singleton {
    var objects = [String]()
    
    static let shared = Singleton() // <--- one single instance of its type within its type. This is the singleton.
    private init(){}
    
    func add(string: String){
        objects.append(string)
    }
}


struct lazyStruct {
    lazy var lazyVar = [String]()
}

// If you want to set a property or method available to occur once, and be available to be changed by any future instance, then mark it as static. So a static array created at the type level, will exist there in heap, and a reference to that array will be created with every new instance, but when you change it from that instance, youre only changing the original type array, the new instance doesn't get a new copy of that array because its static


enum VehicleError: Error {
    case noFuel
    case EngineTrouble
}

class Vehicle {
    var gasMeter = 0
    
    func go() throws {
        if self.gasMeter > 0 {
            print("Going")
        } else {
            throw VehicleError.noFuel
        }
    }
}

let myCar = Vehicle()
myCar.gasMeter = 0

// the catch will only take a throw that originated from the do block.
do {
    try myCar.go()
    print("We are driving")
    
} catch let error {
    print("There was an error: \(error)")
}

//This is an optional try, it basically give this is a try if it works great, if not nil
try? myCar.go()


//This is a workaround, that uses an internal function that points to the properties within the Struct, to change the Struct, but it's really just creating a copy and replacing the origin.
struct MyStruct {
    var something: String
    
    mutating func doSomething(string: String) {
        self.something = string
    }
}

var test = MyStruct(something: "string")

test.doSomething(string: "other string")

test.something





////HOMEWORK\\\\


//Declare Enum that conforms to Error. Your enum should have at least 5 cases and should use Associated Values.

enum formFiller: Error {
    case noFirst
    case noLast
    case noAge
    case noBirthPlace
    case noLanguage
}


//Declare a Person class with 3 member properties. Declare a Student subclass that inherits from Person.

//Both Your Student and Person class should have a variety of meaningful Type and Instance Methods. Be creative.

//In either of these 2 classes, demonstrate a computed property and implement a property observer.



class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

enum gradDates: String {
    case freshmen = "4 years left"
    case sophomore = "3 years lfet"
    case junior = "2 years left"
    case senior = "It's your last year!"
}


class Student: Person {
    
    var gradeLevel: String
    var studentID: String {                                 // <-- PROPERTY OBSERVER
        willSet (ID) {
            print("About to set ID to: \(ID)")
        }
        didSet {
            var idCount : Int {                             // <-- COMPUTED PROPERTY
                return studentID.characters.count
            }
            print("Your ID is \(idCount) characters long.")
        }
    }
    
    
    init(name: String, age: Int, id: String, gradeLevel: String) {
        self.studentID = id
        self.gradeLevel = gradeLevel
        super.init(name: name, age: age)
    }
    
    func graduation() -> String {                           // <-- MEANINGFUL METHOD
        var statement = String()
        
        if self.gradeLevel == gradDates.freshmen.rawValue {
            statement = gradDates.freshmen.rawValue
        } else if self.gradeLevel == gradDates.sophomore.rawValue {
            statement = gradDates.sophomore.rawValue
        } else if self.gradeLevel == gradDates.junior.rawValue {
            statement = gradDates.junior.rawValue
        } else {
            statement = gradDates.senior.rawValue
        }
        return statement
    }
}

let student = Student(name: "John", age: 35, id: "iasdokfbadlba", gradeLevel: "Senior")
student.studentID = "ljgkjk"
student.graduation()


//Create a Classroom class that is a true singleton and has an array of Students.

class Classroom {
    var students = [String]()
    
    static let shared = Classroom()
    private init(){}
    
    func add(string: String) {
        students.append(string)
    }
    
    func remove(string: String) {
        students.filter {$0 == string}
    }
}


//Add accessor methods to Classroom to add and remove from the array.
