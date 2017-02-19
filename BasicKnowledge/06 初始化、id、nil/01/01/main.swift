//
//  main.swift
//  06-01
//
//  Created by carayfire－Develop on 16/1/13.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
//初始化是类、结构体、枚举类型实例化的准备阶段
//Swift的构造器没有返回值

//存储属性的初始化---》存储属性【不能为不确定状态】
struct Person{
    //标准写法
    var name:String
    init(){
        name = "Jack"
    }
    //简洁写法
//    var name = "Jack"
}

struct Dog {
    var name = "Jack", age = 20
    init (name:String,age:Int){
        self.name = name
        self.age = age
    }
}

var ps = Person()
print(ps.name)

var dog = Dog(name: "南哥", age: 24)
print("\(dog.name)的年龄为\(dog.age)")

/*
base,6
Base--deinit
SubClass deinit
Base--deinit
otherBase,16
*/
//类的继承和初始化
var base = Base(name: "base")

//注意初始化的顺序
var subClass = SubClass(name: base.name!, age: 6)
print("\(subClass.name!),\(subClass.age!)")

base = Base(name: "otherBase")

subClass = SubClass(name: base.name!, age: 16)
print("\(subClass.name!),\(subClass.age!)")














