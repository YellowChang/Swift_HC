//: Playground - noun: a place where people can play

import UIKit

class Person{
    var name : String = "hc" {
        // 属性监听器：选择其中之一即可
        //监听属性将要发生改变
        willSet{
            print("属性将要发生改变")
            print(name)
            print(newValue) //黄畅
        }
        
        //监听属性已经发生改变
        didSet{
            print("属性已经发生改变")
            print(name)
            print(oldValue) //hc
        }
    }
    
}
let p = Person()
p.name = "黄畅"
		