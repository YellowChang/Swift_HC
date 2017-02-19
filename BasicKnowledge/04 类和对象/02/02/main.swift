//
//  main.swift
//  04-02
//
//  Created by carayfire－Develop on 16/1/5.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation

var dog = Dog()

//实例方法
dog._printName()
dog._printOneName("黄畅")
dog._printTwoName("黄畅", str2: "黄乐")
dog._returnSum(22, b: 1994)

//类方法
var(age,birth,name) = Dog._returntuple(22, year: 2016, name: "黄畅")
print("\(name)的年龄是\(age),\(birth)出生")

//下标脚本
dog[0] = 10
dog[9] = 1
print(dog[0])
print(dog[9])