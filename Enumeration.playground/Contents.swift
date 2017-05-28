//: Playground - noun: a place where people can play

import UIKit

enum CompasPoint{
    case north
    case south
    case west
    case east
}

var direc = CompasPoint.south
direc = .west
switch direc {
case .north :
    print("Lots of planets have a north")
case .south :
    print("Lots of planets have a south")
case .west :
    print("Lots of planets have a west")
case .east :
    print("Lots of planers have a east")
}


////////////////////////////////////////////

enum Barcode{
    case upc(Int, Int , Int,Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 42142, 22222, 3)
productBarcode = .qrCode("ABCDEFGHTQEUWRQQ")

switch productBarcode {
case let .upc(numberSystem, manufacture, product, check):
    print("UPC : \(numberSystem), \(manufacture), \(product), \(check)")
case let .qrCode(code) :
    print("QR : \(code)")
}

//////////////////        Raw value              //////////////////////////

enum ASCIIControlCharacter:Character{
    case tap = "\t"
    case lineFeed = "\n"
    case carrigeReturn = "\r"
}

////////////////       Implicitly Assigned         ////////////////////////////

enum Planet :Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let earthOrder = Planet.earth.rawValue
print(earthOrder)


////////////////       Recursive Enumerations         ////////////////////////////


enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let four = ArithmeticExpression.number(4)
let five = ArithmeticExpression.number(5)

let sum = ArithmeticExpression.addition(four, five)

let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int{
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right) :
        return evaluate(left) * evaluate(right)
    default:
        print("Empty")
    }
}

print(evaluate(product))





















