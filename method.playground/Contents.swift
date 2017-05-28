//: Playground - noun: a place where people can play

import UIKit

class Counter{
    var count = 0
    
    func increment() -> Int {
        count += 1
        return count
    }
    func increment(by amount:Int) -> Int{
        count += amount
        return count
    }
    func reset(){
        count = 0
    }
    func dd(_ count:Int){
        self.count += count // self = this in language Java , C# 
    }
}

let counter = Counter()
print(counter.increment())
print(counter.increment(by: 2))
counter.reset()
counter.dd(2)
print(counter.count)



struct Point{
    var x = 0.0 , y = 0.0
    mutating func moveby(_ deltaX:Double, _ deltaY:Double) { // ham bien doi
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x: 2, y: 1)
somePoint.moveby(3, 2)

let fixedPoint = Point(x:3,y:2)
//fixedPoint.moveby(2, 1) // can not change , because fixedPoint is constant






