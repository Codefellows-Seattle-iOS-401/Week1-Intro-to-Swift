//
//  Store.swift
//  ToDo
//
//  Created by Jeremy Perez on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation


class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init() {}

    
    typealias Object = ToDo
    var objects = [Object]()
    
}