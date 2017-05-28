
import UIKit;


var a:Double = 0
var b:Double = 2
var c:Double  = -4

let delta:Double = (b*b) - (4*a*c)

if a==0{
    if b==0{
        if c==0{
            print("Phuong trinh vo so nghiem")
        }
        else{
            print("phuong trinh vo nghiem")
        }
    }
    else{
        print("phuong trinh co nghiem \(-c/b)")
    }
}
else{
    if delta==0{
        print("phuong trinh co 1 nghiem kep : \(-c/(2*a))")
    }
    else if delta > 0{
        print("phuong trinh co 2 nghiem :")
        print("x1 : \((-b+sqrt(delta))/(2*a))")
        print("x2 : \((-b-sqrt(delta))/(2*a))")
    }
    else{
        print("phuong trinh vo nghiem")
    }
}

func ptb2(a:Double, b:Double, c:Double) -> (){
}
