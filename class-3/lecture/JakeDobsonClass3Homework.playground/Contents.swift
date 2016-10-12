
import UIKit


                    ////// Class 4 Homework \\\\\\
                    //////     10/12/16      \\\\\\

/*
 #CODECHALLENGES
 
 1) Declare Identity protocol with id String
 
 2) Declare a ToDo class that has a text member of type String, and conforms to Identity protocol
 
 3) Define ObjectStore protocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.
 
 4) Create Store class that will conform to ObjectStore protocol and implement required methods
 
 5) Demonstrate adding / removing of ToDo items.
 
 */


                //// PROBLEM 1 \\\\

protocol Identity {
    var id: String { get set }
}

                ////PROBLEM 2 \\\\

class ToDo: Identity {
    internal var id: String = "" // required to "officially" conform, to the protocol!

    var text: String = ""
}

                //// PROBLEM 3 \\\\

protocol ObjectStore {
    func add()
    func remove()
    func objectAtIndex()
    func count()
    func allObjects()
}

                //// PROBLEM 4 \\\\
                //// PROBLEM 5 \\\\

class Store: ObjectStore {
    internal func add() {
        //
    }
    
    internal func remove() {
        //
    }
    
    internal func objectAtIndex() {
        //
    }
    
    internal func count() {
        //
    }
    
    internal func allObjects() {
        //
    }
}








