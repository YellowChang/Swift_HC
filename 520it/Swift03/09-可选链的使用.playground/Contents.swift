//: Playground - noun: a place where people can play

import UIKit

/*
 可选链的介绍：
     多个可选对象组成的一个链叫做可选链，如果任何一个节点为空(nil),则整个链失败
 
 总结：
     1> 可选链取值
     2> 可选链赋值
     3> 可选链调用方法
 */

// 1.创建类
class Person {
    var name : String = ""
    var dog : Dog?
}

class Dog {
    var weight : Double = 0.0
    var toy : Toy?
}

class Toy {
    var price : Double = 0.0
    func fly() {
        print("飞机玩具在飞...")
    }
}

// 2.创建类的对象
let toy = Toy()
toy.price = 100

let dog = Dog()
dog.toy = toy

let person = Person()
person.dog = dog

// 3.获取到人的狗的玩具的价格
//// 方式一：太危险
//let d = person.dog!
//let t = d.toy!
//let p = t.price

//// 方式二: 太麻烦
//if let dog = person.dog{
//    if let toy = dog.toy {
//        let price = toy.price
//    }
//}

// 方式三：可选链 --  安全方便快捷
/* ?. 就是可选链，系统会自动判断该可选类型是否有值
     如果有值，则解包，没值，则赋值为nil
     注意：可选链获取的值一定是可选类型
 */
let price = person.dog?.toy?.price

// 4. 可选链赋值
// 如果可选链中有一个没有值，则语句直接不执行
person.dog?.toy?.price = 120

// 5.可选链调用方法
person.dog?.toy?.fly()






		