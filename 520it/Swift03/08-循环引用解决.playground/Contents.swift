//: Playground - noun: a place where people can play

import UIKit

/*
 0.ARC
     1> 当有一个强引用指向某一个对象时，该对象的引用计数会自动 +1
     2> 当该引用消失时，引用计数会自动 -1
     3> 当引用计数为0时，该对象会被销毁
 1.循环引用
     1> Student对Book对象有一个强引用
     2> 而Book对Student有一个强引用
     3> 在两个对象都指向nil时，依然不会销毁，就形成了循环引用

 */

// 1.创建类
class Student {
    var name : String = ""
    var book : Book?
    
    deinit {
        print(" Student deinit")
    }
}

class Book {
    var price : Double = 0.0
    
    /*
     OC中表示弱引用
         __weak/__unsafe_unretained(野指针错误)
     Swift中表示弱引用
         weak/unowned(野指针错误)
     */
//    weak var student : Student?
    
    // unowned 不能用于修饰可选类型
    unowned var student : Student = Student()

    deinit {
        print(" Book deinit")
    }
}

// 2.创建两个对象
var s : Student?  = Student()
var b : Book? = Book()

b?.price = 20.0
s?.book = b
b?.student = s!

s = nil
b = nil




