//
//  Mobile.swift
//  MobileManagement
//
//  Created by Nguyen Nam on 6/4/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Mobile{
    var mID:String = ""
    var mModel:String = ""
    var mManufacture:String = ""
    var size:String = ""
    var configuration:String = ""
    var price:Double = 0
    var amount:Int = 0
    
    init(mID:String!, model:String!, manu:String, size:String, confi:String, price:Double!, amount:Int!) {
        self.mID = mID
        self.mModel = model
        self.mManufacture = manu
        self.size = size
        self.configuration = confi
        self.price = price
        self.amount = amount
    }
    
    init() {
        
    }
}
