//: Playground - noun: a place where people can play

import UIKit

/*
 0.元组的介绍
     1> 元组是Swift中特有的 OC中并没有该类型
     2> 它是一种数据结构，类似数组和字典
     3> 可以用于定义一组数据
     4> 组成元组类型的数据可称为“元素”
 */

// 1.使用数组保存数据
let infoArr : [Any] = ["hc", 20, 1.6]
//let name_arr = infoArr[0] // 目前是Any类型
let name_arr = infoArr[0] as! String // 转换String类型


// 2.使用字典保存数据
let infoDict : [String : Any] = ["name" : "hc", "age" : 10]
//let name_dict = infoDict["name"] // 目前是Any类型
let name_dict = infoDict["name"] as! String // 转换String类型


// 3.使用元组保存数据
// 1> 写法一
let infoTuple1 = ("hc", 20, 1.6)
let name_tuple = infoTuple1.0 // 目前已经是String类型

infoTuple1.0
infoTuple1.1
infoTuple1.2

// 2> 写法二
let infoTuple2 = (name : "hc", age : 10)

infoTuple2.name
infoTuple2.age

// 3> 写法三
let (name, age) = ("hc", 10)
name
age



		