
/// Homework - June 8th \\\

import UIKit

// Reading \\
// Structs, Classes, Protocols, Protocol Oriented Programming


// Problem \\

// --Using Playgrounds…
// --Declare Identity protocol with id function
// --Declare a ToDo class that conforms to Identity protocol… Define your own model scheme (variable it contains, etc)
// --Define ObjectStoreProtocol with these functions: add:, remove:, objectAtIndex:, count, allObjects.
// Extend ObjectStoreProtocol to provide basic implementation for functions
// Create Store singleton that will conform to ObjectStoreProtocol and implement requirements
// Demonstrate adding / removing of ToDo items.


// Begin

protocol Identity {
    var id: String { get set }
}

class ToDo: Identity {
    var task: String
    var status: String
    var date: NSDate
    var id: String
    
    init(task: String, status: String) {
        self.task = task
        self.status = status
        self.date = NSDate()
        self.id = NSUUID().UUIDString
    }
    func createTask() -> String {
        return "\(self.task), \(self.status), \(self.date): \(self.id)"
    }
    
}

protocol ObjectStoreProtocol {
    associatedtype Object: Identity
    
    func addObject(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
}

class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init() {}
    typealias Object = ToDo
    private var dates = [Object]()
    
    func addObject(object: Object) {
        self.dates.append(object)
    }
    func remove(object: Object) {
        self.dates = self.dates.filter({ (existingObject) -> Bool in
            return object.id != existingObject.id
        })
    }
    func objectAtIndex(index: Int) -> Object {
        return self.dates[index]
    }
    func count() -> Int {
        return self.dates.count
    }
    func allObjects() -> [Object] {
        return self.dates
    }
}

let taskOne = ToDo(task: "Get Beer!", status: "empty")




