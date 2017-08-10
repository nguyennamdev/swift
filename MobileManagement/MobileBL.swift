//
//  MobileBL.swift
//  MobileManagement
//
//  Created by Nguyen Nam on 6/4/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class MobileBL{
    private var mobiles:[Mobile] = [Mobile]()
//    private var mobie:Set<Mobile> = Set<Mobile>()
    
    @discardableResult public func addMobile(newMobile:Mobile) -> Bool {
        for item in mobiles {
            if newMobile.mID == item.mID{
                return false
            }
            else{
                mobiles.append(newMobile)
                return true
            }
        }
        return true
    }
    
   @discardableResult func updateMobile(newMobile:Mobile) -> Bool {
        for item in mobiles {
            if item.mID == newMobile.mID{
                item.mModel = newMobile.mModel
                item.configuration = newMobile.configuration
                item.amount = newMobile.amount
                item.mManufacture = newMobile.mManufacture
                item.price = newMobile.price
                item.size = newMobile.size
                return true
            }
            else{
                return false
            }
        }
        return false
    }
    
    @discardableResult func searchMobileById(mobileId:String) -> Mobile?{
        var mobile:Mobile? = Mobile()
        for item in mobiles {
            if mobileId == item.mID{
                mobile = item
            }
            else{
               mobile = nil
            }
        }
        return mobile
    }

   @discardableResult func deleteMobile(mobileId:String) -> Bool{
        for (index,item) in mobiles.enumerated() {
            if mobileId == item.mID{
                mobiles.remove(at: index)
                return true
            }
        }
        return false
    }
    
   @discardableResult func getAll() -> [Mobile] {
        var lstMobile = [Mobile]()
        for item in mobiles {
            lstMobile.append(item)
        }
        return lstMobile
    }
    
}
