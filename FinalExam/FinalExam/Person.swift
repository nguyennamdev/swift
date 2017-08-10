//
//  Person.swift
//  FinalExam
//
//  Created by Nguyen Nam on 7/11/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Person {
    var name:String = ""
    var phoneNumber:String = ""
    var emailAddress:String = ""
    
    init(_ name:String,_ phoneNumber:String,_ email:String) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.emailAddress = email
    }
    
    init() {
    }
}
