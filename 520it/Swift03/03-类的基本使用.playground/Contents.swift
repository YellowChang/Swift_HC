//: Playground - noun: a place where people can play

import UIKit

/*
 0. 类的介绍
     1> Swift也是一门面向对象的语言，面向对象的基础是类，类产生了对象
     2> 使用class关键字定义类
         class 类名 : SuperClass {
             // 定义属性和函数
         }
     3> 定义的类，可以没有父类，那么该类是rootClass
     4> 通常类继承于NSObject
     5> 继承于NSObject可以获取其属性和函数，例如KVC，不继承的话，属于轻量级的类，内存占用少
 1. OC类的定义
     @interface Person : NSObject
     @end
     @implement
     @end
 */

// 1.定义类
class Person{
    // 属性必须初始化，一般值类型则初始化为空值 | 如果对象类型则初始化nil
    var name : String = "" // 值类型-struct
    var age : Int = 0 // 值类型-struct
    var view : UIView? // 对象-class 可选类型默认nil，不需要我们手动初始化
}

// 2.创建类的对象
let view = UIView()
let p = Person()
p.name = "黄畅"
p.age  = 20
p.view = view


















