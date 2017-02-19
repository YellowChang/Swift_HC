//
//  main.swift
//  04-01
//
//  Created by carayfire－Develop on 16/1/5.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
//实例化对象
var ps = Person()
let a = ps.a
var a1 = ps.a
var n = ps.n
let n1 = ps.n
print("a:\(a)--\(a1); b:\(n)--\(n1)")


ps.name = "Rose"
//搞清楚下面的输出
/**
 nil
 Optional("Rose")
 Rose
 HuangChang
 */
print(n)
print(ps.n)
print(ps.n!)
print(ps.name)

//调用类型属性
/**
 2015
 2016
 */
print(+Person.ClassTime)
//print(++Person.ClassTime)

//属性监视器
ps.age = 100
ps.age = 101




