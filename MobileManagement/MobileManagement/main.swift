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
                    print("Input mobile id :")
                    mobile.mID = readLine()!
                    print("Input mobile model :")
                    mobile.mModel = readLine()!
                    print("Input manufacture :")
                    mobile.mManufacture = readLine()!
                    print("Input size :")
                    mobile.size = readLine()!
                    print("Input configuration :")
                    mobile.configuration = readLine()!
                    print("Input price :")
                    mobile.price = Double(readLine()!)!
                    print("Input amount :")
                    mobile.amount = Int(readLine()!)!
                    
                    if mobileBL.addMobile(newMobile: mobile){
                        print("Mobile was added....")
                    }
                       
                    
                    
                default : break
                }
            }while(choice2 < 6 && choice2 > 0)
        
        
        case 2:
            print("2.1 Add bill")
    default : break
    }
}while(choice < 3 && choice > 0)






