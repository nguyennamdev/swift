//: Playground - noun: a place where people can play

import UIKit

var person:String = "Nam DZ"

// function has parameter is String and return String
func greet(_ s:String) -> String{
    let greeting = "Hello !, "  + s + " ,"
    return greeting
}

print(greet("Hsad"))

// function not parameter
func sayHello() -> String{
    return "Hello World"
}
print(sayHello())

// function max min with return values is tuple

func minMax(array:[Int]) -> (min:Int, max:Int){
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array{
        if value < currentMin{
                currentMin = value // because min,max = first item in array
        }
        else if value > currentMax{
            currentMax = value;
        }
    }
    
    
    return (currentMin, currentMax)
}

let money:[Int] = [9,2,4,14,5,15,1,3]
print("Min is \(minMax(array: money).min)" + " , Max is \(minMax(array: money).max)")


//function variadic parameter (bien the tham so)
func arithmeticMean(_ numbers:Double...) -> Double{
    var total:Double = 0
    for number in numbers{
        total += number
    }
    return total/Double(numbers.count)
}


arithmeticMean(1,2,3)


// Early Exit 

func greet(person:[String:String]){
    guard let name = person["name"] else {
        return
    }
    print("Hello ! \(name)")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you." )
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name":"Nam"])
greet(person: ["name":"Tuan","location":"Ha noi"])

// In-out parameter
func swapTwoInts(_ a: inout Int , _ b: inout Int){
    let temporary = a
    a = b
    b = temporary
}

var someInt = 3
var anotherInt = 7
swap(&someInt, &anotherInt)
print("someInt is now \(someInt) , and another is now \(anotherInt)")


// Nested function

func chooseStepFunction(backward:Bool) -> (Int) -> Int{
    func stepForward(input:Int) -> Int{
        return input + 1
    }
    func stepBackward(input:Int) -> Int {
        return input - 1
    }
    return backward ? stepForward : stepBackward
}
var currentValue = 4
let moveToZero = chooseStepFunction(backward: currentValue < 0)
print("\(moveToZero(currentValue))")
while currentValue != 0 {
    print("\(currentValue)....")
    currentValue = moveToZero(currentValue)
}
print("zero!")


func ptb2(a:Double, b:Double, c:Double) -> String {
    var result:String = String()
    let delta:Double = (b*b) - (4*a*c)
    if a == 0{
        if b==0{
            if c == 0{
                result = "phuong trinh vo so nghiem"
            }
            else{
                result = "phuong trinh vo nghiem"
            }
        }
        else{
            result = "phuong trinh co nghiem \(-b/c)"
        }
    }
    else{
        if delta == 0{
            result = "phuong trinh co 1 nghiem kep : \(-c/(2*a))"
        }
        else if delta > 0{
            result = "phuong trinh co 2 nghiem : \n x1:\((-b + sqrt(delta))/(2*a)) \n x2:\((-b - sqrt(delta))/(2*a))"
        }
        else{
            result = "phuong trinh vo nghiem"
        }
    }
    return result
}
print(ptb2(a: 2, b: 3, c: -5))


func dayofmonth(month:Int, year:Int) -> Int{
    let thang2:Int
    
    if (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0){
        thang2 = 29
    }
    else{
        thang2 = 28
    }
    
    switch month {
    case 1,3,5,7,8,10,12:
        return 31
    case 4,6,9,11:
        return 30
    case 2:
        return thang2
    default:
        return 0
    }
    return 0
}
dayofmonth(month: 2, year:1900)




