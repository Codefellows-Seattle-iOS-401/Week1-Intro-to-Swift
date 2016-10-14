
import UIKit


                        ////// CLASS 4 HOMEWORK \\\\\\
                        //////     10/13/16      \\\\\\


/*
 #CODECHALLENGES
 
 1) Declare Enum that conforms to Error. Your enum should have at least 5 cases and should use Associated Values.
 
 2) Declare a Person class with 3 member properties. Declare a Student subclass that inherits from Person.
        -> Both Your Student and Person class should have a variety of meaningful Type and Instance Methods. Be creative.
        -> In either of these 2 classes, demonstrate a computed property and implement a property observer.
 
 3) Create a Classroom class that is a true singleton and has an array of Students.
        -> Add accessor methods to Classroom to add and remove from the array.
 
 */


                //// PROBLEM 1 \\\\

//declare enum that conforms to Error protocol
enum Sports: Error {
    //enum should have 5 cases using associated values
    case Hockey(String) // associated value --> (String)
    case Basbeall(String)
    case Football(String)
    case Soccer(String)
    case Rugby(String)
}

                //// PROBLEM 2 \\\\

//declare Person class
class Person {
    var people = [String]()
    //3 member properties of Person class
    var firstName: String
    var lastName: String
    var age: Int
    
    static let person = Person(firstName: "Jake", lastName: "Dobson", age: 25)
    
    //initialize the properties...
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    
}
//declare a student subclass that inherits from Person
class Student: Person {
    var studentID: String
    var halfLife: Int {
        willSet(newAge) {
            print("your half-life is \(newAge)")
        }
        didSet {
            for _ in Person.person.people[0...people.count] {
                let age = Person.person.age
                print("Your half-life is \(age/2)")
            }
            print("age has been retreived")
        }
    }
    
    override init(firstName: String, lastName: String, age: Int) {
        self.studentID = lastName + firstName
        self.halfLife = Person.person.age/2
        
        super.init(firstName: firstName, lastName: lastName, age: age)
    }
    //instance method
    func canDrinkAlcohol(age: Int) -> Any {
        if age >= 21 {
            print("PARTY!")
            return true
        } else {
            print("Womp Womp!")
            return false
        }
    }
    //type method
    class func live(student: Person) -> String {
        if student.age >= 0 {
            print("woo!")
        } else {
            print("dead")
        }
        return "It's alive"
    }
    
    
}

                //// PROBLEM 3 \\\\

//create a Classroom class that is a true singleton and has an array of students
//privatize students array, accessor methods to manipulate the data
class Classroom {
    private var arr = [String]()
    
    static let shared = Classroom()
    private init(){}
    
    func add(string: String) {
        arr.append(string)
    }
    func remove(string: String) {
        arr.remove(at: 0)
    }
}
Classroom.shared.add(string: "Jake")
Classroom.shared.remove(string: "Jake")









