//: Playground - noun: a place where people can play

import UIKit
// 1.as
let str = "www.520it.com"
(str as NSString).substring(from: 4)

// 2.as! & as? -> 将Any类型转换成具体类型
let dict: [String : Any] = ["name" : "黄畅", "age" : 20, "height" : 1.60]

// 2.1 as? 的用法
// 通过as?转换成具体的类型
// as? : 转换的类型是一个可选类型，系统会自动判断tempName是否可以转换成String，若可以则获取字符串，反之返回nil
let tempName = dict["name"]
let name = tempName as? String
if let name = name { //可选绑定
    print(name)
}

if let name = dict["name"] as? String {
    print(name)
}

// 2.2 as! 的用法
// 通过as!转换成具体的类型
// 注意：如果转换不成功，程序会直接崩溃
// 建议：当确定可以转换成功再as!,平时不建议
let tempName1 = dict["name"]
let name1 = tempName as! String









