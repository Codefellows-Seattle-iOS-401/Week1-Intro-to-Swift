
import UIKit


                        ////// Class 3 \\\\\\\
                        ///// 10/12/16 \\\\\\\
                //// Structs, Classes, Protocols \\\\


/*
 NOTES:
 
 
 Structures
 
 - swift will automatically create a default initializer
 - can also create custom initializer
 - by end of init, every value needs to have initial values (unless optional)

    * Self *
        - "instance of that object"
        - self.name = name // instance of name
        - explicitly accessing the current value of named type
        - can help prevent "shadowing"

    * Methods *
        - can have constants and variables
        - can also define functions

    * Extensions *
        - can define methods and properties in extensions
        - can be used to extend types you do not own (String, etc.)
        - can be applied to any type (structs, classes, protocols, enums)
 
** structs as values **
    - gets a copy, NOT a reference
    - Array, Float, Double, Bool, Dictionary, Seat, and String are all Structs
    - the ability to implement core types is unique to Swift (as opposed to c/OBJC)
 
 
 good cnadidates for structs --> geo shapes, point in coordinate system, math
 
 */


struct Person {
    var name: String
    var age: Int?
    
    
    func ageInDogInYears() -> Int {  // instacne mehtod (applies to instances, not type itself)
        let age = self.age ?? 0  // nil coalescing (because self.age is optional, check if exists, else age is 0
        return age * 7
    }
    
    
    //making initializer optional (failable initializer)...
    
//    init?(name: Any, age: Int? = nil) { // assigning Int? to nil allows us to leave the age to be assigned at a later time
//        //type casting by unwrapping optionals (if let, guard let)
//        if let name = name as? String {
//            self.name = name
//        } else {
//            return nil
//        }
//        self.age = age
//    }
}

///// above code would normally be in its own swift file \\\\\\\

extension Person {
    init(name: String) { // #INTERVIEW
        self.init(name: name, age: nil)
    }
    
    static func sayHello() {  //type method (static func)
        // no reference to self (do not exit in this type of func)
        print("Hi")
    }
}




let newPerson = Person(name: "Jake")
let dogAge = newPerson.ageInDogInYears()
Person.sayHello()


//let myPerson = Person(name: "Jake", age: 25) // struct's free initializer
////self from abaove is the same as "myPerson.name"
//
//let name = myPerson.name
//let age = myPerson.age
//
//var otherPerson = myPerson
//
//otherPerson.age
//
//otherPerson.age = 31
//
//otherPerson.age
//myPerson.age // did not change age of myPerson




/*
 NOTES:
 
 
 Classes
 
 - reference types
 - classes do not have memeberwise init "for free"
 - everyting in curly braces is "member" of that class
 - is a mutable reference (data is mutable)
 - stores a pointer to a location in memory that stores the value
 - implicit sharing of objects using pointers
 - lives on the heap (slower memory allocation)
 - useful for representing things
 
 
 
 ** Value vs reference **
 
 - value types can only have one owner (copies)
 
 - reference is an object that points to object in heap
 
 
 ** Stack vs Heap **
 
 - stack is lightweight -> value types
 
 - heap is large memory pool -> reference types
 - system can rewuest and allocate blocks of memory
 - any reference object will know currently how many objects it has pointing at it
 - reference count is equal to amount of pointers
 
 
* Access Control *
 
 "control how data is manipulated through other parts of program"
 
 - Public
    -
 
 - Private
    - only used to THAT file
    - accessor methods (getValue, setValue)
    - mark methods to not allow inheritance
 
 - Internal (Default)
    - sort of a hybrid between public and private
    - method on specific class to only allow developer to have access to (your own module)
 
 - Final
    - diasble a classes ability to subclass
 
 * encapsulation
    -control actual data is operated on by providing methods and properties
 
 ** Inheritance **
    - subclassing
    - single inheritance rule (can only inherit to on class)
    - can conform to infinite protocols
    - class that inherits is known as a subclass
    - subclass inherits from superclass
    - no limit to the depth of subclassing...a workaround for multiple inheritance..
        * Methods w/ Inheritance *
            - subclasses are additive (receive everything inherited by its superclasses)
            - subclasses can override methods defined in their superclass
                - need to call that method at some point!!!
    - to prevent inheritance, use the final keyword (guarantee no subclassing)
    - can mark methods as final to "protect" from being overridden
 
 * Super *
    - similar to self, just will invoke the method in nearest superclass
 
 ** Polymorphism **
    - treating an object differently based on context
    - EXAMPLE: --> parent class referring to child class object

Inheritance and Class Init
    - Initialize all local members first!
    - at the end "self.super.init()" (implement initializer) DESIGNATED INITIALIZER
    - cannot use properties and methods until local members initialize
 
 * convenience init -- forces to call a required initializer (instead of handling init of properties itself)
 
 */


class PersonClass {
    var name: String
    var age: Int?
    
    init(name: String, age: Int? = nil) {
        self.name = name
        self.age = age
    }
    
    func dogYears() -> Int? {
        let age = self.age ?? 0
        return age * 7
    }
}

// helper method for string class (get length of string)
extension String {
    func length() -> Int {
        return self.characters.count
    }
}

let test = "401 iOS Software Development"
let count = test.length()

//extension PersonClass {
//    static func sayHello() {
//        print("Hi")
//    }
//}
//let johnOne = PersonClass(name: "John")
//let johnTwo = johnOne
//
//johnOne.age = 100
//johnTwo.age = 50
//
//johnOne.age
//
//let john = PersonClass(name: "John")
//let john2 = john
//
//if john === john2 { // checking if 2 objects are "identical" to each other
//    print("These objects are identical")
//}



//// subclassing PersonClass \\\\

class Student: PersonClass {
    var studentID: String
    
    init(name: String, age: Int? = nil, id: String) {
        self.studentID = id // must assign first
        
        super.init(name: name, age: age) // must be at the end of method
    }
}
let student = Student(name: "Jake", age: 25, id: "8945834485")
student.dogYears()


/*
 NOTES:
 
 protocol Car {
    var weight: Int { get set }
    func stop()
 }
 
 
            *** Protocols ***

 - Intro
    can define methods, properties in a protocol
    - when defining prop, must explicitly mark them as get and/or set
    - associatedtype - exact type of object is specified by object conforming
        - agnostic, consistent
        - have to specify type when called upon (typealias)
-
 
 ** Protcol-Oriented-Programming **
 
 - empahsizes coding to protocols, instead of classes
 - extension includes actual implementation of a member
 - protocol default behavior has to be written 
 * benefits...
    - can apply code contracts to any type
    - dont need to worry about the specific type or if is class or struct (care about existence of common props/methods)
    - multiple inheritance
    - write decoupled(loosely-coupled) code
    - can decorate a type with traits/mixins to ectende behavior w/OUT inheritance
 
 */



protocol Identity {
    var id: String { get set }
    
    associatedtype Description
    
    func description() -> Description
    
    func optionalMethod()
    func requiredMethod()
}
//give Identity default behavior
extension Identity {
    func description() -> String {
        return String(describing: self)
    }
}

class View: Identity {
    //implement setter and getter
    // default behavior
    // initialize, unless optional
    var id: String
    var backgroundColor = UIColor.blue
    
    init(id: String) {
        self.id = id
    }
    
    typealias Description = String
    
    func requiredMethod() {
        //
    }
    
    func optionalMethod() {
        //
    }
    
    func description() -> String {
        return "\(id), BGColor: \(backgroundColor)"
    }
    
}

let view = View(id: "98234-utu2g")
view.description()







