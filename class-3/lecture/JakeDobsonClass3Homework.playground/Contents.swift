
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
// declare Identity protocol with id string
protocol Identity {
    var id: String { get set }
    var text: String { get set }
}

                ////PROBLEM 2 \\\\
// declare text member of type string and conform to Identity protocol
class ToDo: Identity {
    var id: String = "" // required to "officially" conform, to the protocol!
    var text: String = ""
    
    init(id: String, text: String? = nil) {
        self.id = id
        self.text = text!
    }
}

                //// PROBLEM 3 \\\\
//define object store with functions
protocol ObjectStore {
    func add(string: String) -> [String]
    func remove(int: Int) -> [String]
    func objectAtIndex(index: Int) -> String
    func count(array: [String]) -> Int
    func allObjects(objects: [String]) -> [String]
}

                //// PROBLEM 4 \\\\
//implement methods from ObjectStore
class Store: ObjectStore {
    var arr: [String] = ["Hockey", "Soccer", "Baseball", "Football"]

    func add(string: String) -> [String] {
        arr.insert(string, at: 0)
        return arr
    }

    func remove(int: Int) -> [String] {
        arr.remove(at: int)
        return arr
    }
    
    func objectAtIndex(index: Int) -> String {
        return arr[index]
    }
    
    func count(array: [String]) -> Int {
        return arr.count
    }
    
    func allObjects(objects: [String]) -> [String] {
        return arr
    }
}

                //// PROBLEM 5 \\\\
// demonstrate add/remove
let addItem = ToDo(id: "&*HGIPI", text: "Get some shit done!")
let text = addItem.text
print(text)
let store = Store()
store.add(string: text)
print(Store().arr)
Store().remove(int: 1)
print(Store().arr)











