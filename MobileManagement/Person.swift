//
//  Person.swift
//  MobileManagement
//
//  Created by Nguyen Nam on 5/31/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Person{
    public var fullName:String!
    public var phone:String!
    public var address:String!
    
    init(_ fullName:String, _ phone:String, _ address:String) {
        self.fullName = fullName
        self.address = address
        self.phone = phone
    }
}
