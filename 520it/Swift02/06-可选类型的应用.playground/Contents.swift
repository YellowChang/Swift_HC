
//: Playground - noun: a place where people can play

import UIKit

// 只有一个类型可能为nil，那么这个标识符的类型一定是一个可选类型

// 1.将字符串转换成Int类型
let m: Double = 2.14
let n = Int(m)  // 目前类型是Int类型

let str: String = "321"
// num是Int？类型，是一个可选类型，因为字符串包含其他字符转换不成功
let num = Int(str)   // 123/nil

// 2.根据文件名称：123.plist，获取文件中的路径 path是String?类型
let path = Bundle.main.path(forResource: "123.plist", ofType: nil) //string/nil

// 3.将字符串转换成URL  url是URL?类型
// 如果字符串包含中文，则转换不成功，返回结果为nil
let url  = URL(string: "http://www.520it.com")  // URL/nil

// 4.从字典取出元素
let dic: [String : Any] = ["name" : "hc", "age" : 10]
// value是Any?类型
let value = dic["name"]  // Any/nil

		