//
//  Customer.swift
//  MobileManagement
//
//  Created by Nguyen Nam on 6/1/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Customer : Person{
    var customerId:Int!
    init(_ customerID:Int, _ fullname:String, _ phone:String, _ address:String) {
        super.init(fullname,phone, address)
        self.customerId = customerID
    }
}
