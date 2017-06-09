//
//  Bill.swift
//  MobileManagement
//
//  Created by Nguyen Nam on 6/4/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Bill{
    var billID:Int!
    var billDate:Date
    var customer:Customer
    var staff:Staff
    var mobiles = [Mobile]()
    
    init(billID:Int!, billDate:Date ,customer:Customer, staff:Staff) {
        self.billID = billID
        self.billDate = billDate
        self.customer = customer
        self.staff = staff
    }
    
    // func add new mobile
    
    func addMobile(newMobile:Mobile) -> Bool {
        for item in mobiles{
            if item.mID == newMobile.mID{
                return false
            }
            else{
                mobiles.append(newMobile)
                return true
            }
        }
        return false
    }
    
    func getTotal() -> Double{
        return Double(mobiles.count)
    }
}
