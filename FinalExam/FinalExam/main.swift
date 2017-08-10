//
//  main.swift
//  FinalExam
//
//  Created by Nguyen Nam on 7/11/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

// declare array Person

var persons:Array<Person> = Array<Person>()


func printMenu(){
    print("----------------")
    print("1. add student")
    print("2. add professor")
    print("3. show information of student and professor")
}

var choice:Int

repeat{
    printMenu()
    print("Input your choice :")
    choice = Int(readLine()!)!
    switch choice{
        case 1:
            var student:Student = Student()
            print("Input the name : ")
            student.name = readLine()!
            print("Input the phone number: ")
            student.phoneNumber = readLine()!
            print("Input the email :")
            student.emailAddress = readLine()!
            print("Input the student number :")
            student.studentNumber = Int(readLine()!)!
            print("Input the average mark :")
            student.averageMark = Double(readLine()!)!
            
            //add to array
            persons.append(student)
        case 2:
            var profess:Professor = Professor()
            print("Input the name : ")
            profess.name = readLine()!
            print("Input the phone number: ")
            profess.phoneNumber = readLine()!
            print("Input the email :")
            profess.emailAddress = readLine()!
            print("Input the salary :")
            profess.salary = Double(readLine()!)!
            
            //add to array
            persons.append(profess)
        case 3:
            for item in persons{
                
            }
            default:
        break
    }
    
}while(choice < 3 && choice > 0)




