//
//  Address.swift
//  FinalExam
//
//  Created by Nguyen Nam on 7/11/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Address {
    var street:String
    var city:String
    var state:String
    var postalCode:String
    var country:String
    
    init(street:String,city:String,state:String, code:String,country:String) {
        self.street = street
        self.city = city
        self.state = state
        self.postalCode = code
        self.country = country
    }
    
    init?() {
        return nil
    }
    
    @discardableResult func validate(address:Address) -> Bool{
        if (address.city == "") || (address.country == "") || (address.postalCode == "") {
            return false
        }
        else{
            return true
        }
        return false
    }
    
}
