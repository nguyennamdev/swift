//
//  Student.swift
//  FinalExam
//
//  Created by Nguyen Nam on 7/11/17.
//  Copyright © 2017 Nguyen Nam. All rights reserved.
//

import Foundation

class Student: Person {
    var studentNumber:Int = 0
    var averageMark:Double = 0
    
    init(_ name: String, _ phoneNumber: String, _ email: String, studentNumber:Int, mark:Double) {
        super.init(name, phoneNumber, email)
        self.studentNumber = studentNumber
        self.averageMark = mark
    }
    
    override init() {
        super.init()
    }
    
    func isEligibleToEnroll(student:Student) -> Bool {
        if student.name != "" && student.studentNumber != 0 && student.averageMark != 0{
            return true
        }
        else{
            return false
        }
    }
    
    func getSeminarsTaken() -> String{
        return "Name : \(super.name)" + " number : \(studentNumber)" + "mark :\(averageMark)"
    }
    
    
}
