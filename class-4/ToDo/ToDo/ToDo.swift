//
//  ToDo.swift
//  ToDo
//
//  Created by Jacob Dobson on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


class ToDo: Identity {    // Conform your Model class to NSCoding protocol and implement required methods
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