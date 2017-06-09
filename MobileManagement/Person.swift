//
//  Person.swift
//  MobileManagement
//
//  Created by Nguyen Nam on 6/1/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Person{
    var fullName:String!
    var phone:String!
    var address:String!
    
    init(_ fullname:String, _ phone:String, _ address:String) {
        self.fullName = fullname
        self.address = address
        self.phone = phone
    }
}
