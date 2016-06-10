//
//  ObjectStoreProtocol.swift
//  ToDo
//
//  Created by Jacob Dobson on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


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
    private init() {}   //modify init {} to unarchive first. If nil, initalize objects array
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
    func saveObjects() -> [Object] {
        return []
    }
}