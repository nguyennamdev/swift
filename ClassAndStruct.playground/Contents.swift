//: Playground - noun: a place where people can play

import UIKit
import Foundation


struct Resolution{
    var wight = 0;
    var height = 0;
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var framRate = 0.0
    var name:String?
}

let hd = Resolution(wight: 1920, height: 1080) // create a object of Re..

let video = VideoMode()
video.resolution = hd
video.interlaced = true
video.framRate = 25.0
video.name = "DDDDDDD"

let a =  video;
a.framRate = 30.0;   // valiable a changed framRate of video
print(video.framRate)
///////////////////////////////// Properties ///////////////////////////////////

class DataInporter{
    var filename = "data.txt"
}
class DataManager{
    lazy var inport = DataInporter() // lazy property
    var data = [String]()
}
let manager = DataManager()
manager.data.append("Hello")
print(manager.inport.filename)


