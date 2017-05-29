//: Playground - noun: a place where people can play

import UIKit

class Triagle{
    var a:Int
    var b:Int
    var c:Int
    init?() {
        self.a = 0
        self.b = 0
        self.c = 0
        return nil
    }

    init?(a:Int, b:Int, c:Int) {
        if a <= 0 || b <= 0 || c <= 0 || a + b < c || a + c < b || b + c < a{
            return nil
        }
        self.a = a
        self.b = b
        self.c = c
    }
   }

let aTriagle = Triagle(a:0, b:1, c:1)
if aTriagle == nil{
    print("didn't make a triagle")
}

else {
    print("maked a triagle")
}
