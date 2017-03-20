
//: Playground - noun: a place where people can play

import UIKit

/*
 总结：
     1> 协议的定义
     2> 如何让类遵守协议
     3> 协议在代理设计模式中的使用 :class weak
     4> 协议中的方法可选 @objc protocol   @objc optional
 */

// 1.协议的定义
protocol SportProtocol{
    // 默认情况下，协议中的方法是必须实现的
    func playBasketball()
    func playFootball()
}

// 2.定义类，并遵守协议
class Teacher : SportProtocol{
    func playBasketball(){
        print("playBasketball")
    }
    func playFootball(){
        print("playFootball")
    }
}

class Student : NSObject, SportProtocol{
    func playBasketball(){
        print("playBasketball")
    }
    func playFootball(){
        print("playFootball")
    }
}

// 3.代理在代理设计模式中的使用
// 一般协议可以被枚举和结构体遵守，后面:class说明协议只能被类遵守
protocol BuyTicketProtocol : class {
    func buyTicket()
}
class Person {
    // 定义代理属性 --weak防止循环引用
    weak var delegate : BuyTicketProtocol?
    
    func goToBeijing() {
        delegate?.buyTicket()
    }
}

// 4.如何让协议中的方法是可选的
// optional属于OC 特性，如果实现协议的方法是可选的，就需要在protocol加上@objc,在可选的方法前加上@objc optional
@objc protocol TestProtocol{
    @objc optional func test()
}
class Dog : TestProtocol{
    
}

