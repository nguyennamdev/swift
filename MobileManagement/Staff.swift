//
//  Staff.swift
//  MobileManagement
//
//  Created by Nguyen Nam on 6/4/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Staff: Person {
    var staffId:String?
    var staffPass:String?
    
    init(_ staffId:String, _ staffPass:String ,_ fullname: String, _ phone: String, _ address: String) {
        super.init(fullname, phone, address)
        self.staffId = staffId
        self.staffPass = staffPass
    }
    
}
