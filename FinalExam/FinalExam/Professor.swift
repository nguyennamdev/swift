//
//  Professor.swift
//  FinalExam
//
//  Created by Nguyen Nam on 7/11/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Professor: Person {
    var salary:Double = 0
    
    init(_ name: String, _ phoneNumber: String, _ email: String, salary:Double) {
        self.salary = salary
        super.init(name, phoneNumber, email)
    }
    
    override init() {
        super.init()
    }
    
}
