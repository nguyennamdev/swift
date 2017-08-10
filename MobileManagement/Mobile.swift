//
//  Mobile.swift
//  MobileManagement
//
//  Created by Nguyen Nam on 6/4/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Mobile{
    var mID:String
    var mModel:String
    var mManufacture:String
    var size:String
    var configuration:String
    var price:Double
    var amount:Int
    
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
        self.mID = ""
        self.mModel = ""
        self.mManufacture = ""
        self.size = ""
        self.configuration = ""
        self.price = 0
        self.amount = 0
    }
}

// Used Collection Set
/*
extension Mobile: Equatable {
    static func ==(lhs: Mobile, rhs: Mobile) -> Bool {
        return lhs.mID == rhs.mID
    }
}

extension Mobile: Hashable{
    var hashValue: Int {
        get{
            return mID.hashValue
        }
    }
}*/
