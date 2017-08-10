//: Playground - noun: a place where people can play

import UIKit


protocol CachChoiBong{
    func nhanBong()
    func chuyenBong(soAo:Int)
    func sutBong()
}

class HuanLuyenVien{
    var cauThu:CachChoiBong?
    func choiBong(){
        cauThu?.chuyenBong(soAo: 10)
        cauThu?.nhanBong()
        cauThu?.sutBong()
    }
}

class Messi:CachChoiBong{
    func nhanBong() {
        print("Da nhan bong")
    }
    func chuyenBong(soAo: Int) {
        print("da chuyen bong cho so \(soAo)")
    }
    
    func sutBong() {
        print("da sut bong")
    }
}

class Ronaldo:CachChoiBong{
    func nhanBong() {
        print("R Da nhan bong")
    }
    func chuyenBong(soAo: Int) {
        print("R da chuyen bong cho so \(soAo)")
    }
    
    func sutBong() {
        print("R da sut bong")
    }
}

let MU = HuanLuyenVien()
MU.cauThu = Messi()
MU.choiBong()








