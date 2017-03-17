//: Playground - noun: a place where people can play

import UIKit

/*
 析构函数的介绍:
  1> 想当于OC中的dealloc方法
  2> Swift通过ARC处理实例的内存管理，当ARC为0时，系统会自动调用析构函数(不可以手动调用)
  3> 通常在析构函数中释放一些资源(如移出通知等事件)
  4> 析构函数的写法
         deinit {
             // 执行析构过程
         }
 */

class Person {
    var name : String = ""
    var age : Int = 0

    // 重写析构函数，监听对象的销毁
    deinit {
        print("Person -- deinit")
    }
}

// 注意定义为var，否则常量无法设为nil
var p : Person? = Person()
p = nil








