//: Playground - noun: a place where people can play

import UIKit

class Person{
    let name:String
    
    init(name:String) {
        self.name = name
        print("\(name) is being initialized")
    }
    
    // deinit
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

var p1:Person?
var p2:Person?
var p3:Person?

p1 = Person(name: "Nam")
p2 = p1
p3 = p1
/// - > ARC = 3
p1 = nil
p2 = nil
p3 = nil
//print(p2)

// Weak references
class Husband{
    let name:String
    
    init(name:String) {
        self.name = name
    }
    weak var wife:Wife?
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Wife{
    let nameWife:String
    
    init(nameWife:String) {
        self.nameWife = nameWife
    }
    
    weak var husband:Husband?
    
    deinit {
        print("\(nameWife) is being deinitialized")
    }
}

var nam:Husband?
var trang:Wife?
nam = Husband(name: "Nam 2")
trang = Wife(nameWife: "Trang 2")
nam!.wife = trang
trang!.husband = nam
// ARC = 1 . because used weak refereces
nam = nil
trang = nil

// Unowned References
class Customer{
    let name:String
    var card:CreditCard?
    
    init(name:String) {
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}
class CreditCard{
    let number: UInt64
    unowned let customer:Customer
    init(number:UInt64, customer:Customer) {
        self.customer = customer
        self.number = number
    }
    deinit {
         print("Card #\(number) is being deinitialized")
    }
}

var john:Customer?
var card:CreditCard?
john = Customer(name: "John")
john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
john = nil