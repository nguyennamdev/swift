//
//  main.swift
//  MobileManagement
//
//  Created by Nguyen Nam on 6/1/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

var choice:Int!
var mobileBL = MobileBL()
var mobile = Mobile()


func printMenu(){
    print("-------- Mobile Management Apps ---------")
    print("-----------------------------------------")
    print("1. Mobile Management")
    print("2. Bill Management")
}

func printSubMenu(){
    print("1.1 Add mobile")
    print("1.2 Update mobile")
    print("1.3 Delete mobile")
    print("1.4 Search by id")
    print("1.5 Display all mobile")
    print("1.6 Back...")
}

func setMobile() -> Mobile{
    let m = Mobile()
    print("Input mobile id :")
    m.mID = readLine()!
    print("Input mobile model :")
    m.mModel = readLine()!
    print("Input manufacture :")
    m.mManufacture = readLine()!
    print("Input size :")
    m.size = readLine()!
    print("Input configuration :")
    m.configuration = readLine()!
    print("Input price :")
    m.price = Double(readLine()!)!
    print("Input amount :")
    m.amount = Int(readLine()!)!
    return m
}





repeat {
    printMenu()
    print("Your choice :")
    choice = Int(readLine()!)!
    switch choice{
    case 1:
        var choice2:Int!
        repeat{
            printSubMenu()
            print("Your choice :")
            choice2 = Int(readLine()!)!
            switch choice2{
            case 1 :
                var mobile = Mobile()
                mobile = setMobile()
                if mobileBL.addMobile(newMobile: mobile){
                    print("Mobile added....")
                }
            case 2 :
                print("")
            

            default : break
        }
    }while(choice2 < 6 && choice2 > 0)
    case 2:
    print("2.1 Add bill")
    default : break
}
}while(choice < 3 && choice > 0)






