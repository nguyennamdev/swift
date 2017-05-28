//: Playground - noun: a place where people can play

import UIKit

// foreach in array 

let names = ["Nam","Hung", "Quang Anh", "Binh"]

for name in names{
    print("Hello !, \(name)")
}


// foreach in dictionary 
let numberOfLeg = ["dog" : 4,"Crab" : 8, "people" : 2]

for (animalName, legCount) in numberOfLeg{
    print("\(animalName) has leg is \(legCount)")
}

// for stride (Buoc di)

let minutes = 60;
for tickMark in stride(from: 0, to: minutes, by: 5){
    print("\(tickMark)")
}

for item in 1...5{
    print(item)
}
