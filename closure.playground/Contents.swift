//: Playground - noun: a place where people can play

import UIKit

let names = ["Duc","Nam","Anh","Binh"]

// function normal 

func backward(_ s1:String , _ s2:String) -> Bool{
    return s1>s2
}
var reverseNames = names.sorted(by: backward)

// closure
let reverseName = names.sorted(by: {(s1:String,s2:String) -> Bool in
    return s1>s2
})


// Or
let ss = names.sorted(by: {s1,s2 in return s1>s2})
let s = names.sorted(by: {$0 > $1})

let myNumber = {(number) -> Int in
    return number + 10
}
print(myNumber(2))
//
({(name:String) -> Void in
    print(name)
}) ("Nam") // (String)

var number:(Int,Int) -> (Int) = {
    return $0 + $1
}

number(2, 3)

let sort = { (array:[Int]) -> (min:Int , max:Int) in
    var min = array[0]
    var max = array[0]
    for item in array{
        if item < min{
            min = item
        }
        else if item > max{
            max = item
        }
    }
    return (min, max)
}
sort([9,2,3,4,5])
let numbers = [16,58, 510]






