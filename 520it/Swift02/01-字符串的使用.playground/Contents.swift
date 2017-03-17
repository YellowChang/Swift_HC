//: Playground - noun: a place where people can play

import UIKit

/*
 0.字符串的介绍
     1> String是一个结构体，性能更高
     2> NSString是一个OC对象，性能略差
     3> String 支持直接遍历
     4> Swift 提供了String和NSString之间的无缝转换
 1.字符串的定义
     1> 可变字符串的定义
     2> 不可变字符串的定义
 2.获取字符串的长度
 3.字符串的拼接
     1> 字符串之间的拼接
     2> 字符串和其他标识符之间拼接 "\(标识符)"
     3> 字符串拼接过程中的格式化: String(format: "%d:%02d", 参数1,参数2)]
 4.字符串的截取
     1> 方式一：将String类型转换成NSString类型，再进行截取
     2> 方式二：直接使用String类型方法，进行截取 String.Index
 */

// 1.定义字符串
// 1> 定义不可变字符串：使用let修饰
let str1: String = "hello"
let str2 = "hello swift"

// 2> 定义可变字符串：使用var修饰
var strM = "hello world"
strM = "hello hc"


// 2.获取字符串的长度
let length = str1.characters.count

// 3.字符串的拼接
// 1> 字符串之间的拼接
// OC中拼接方式： [NSString stringwithFormat:@"%@%@",str1, str2]
let str3 = str1 + str2

// 2> 字符串和其他标识符之间拼接
let name = "黄畅"
let age = 10
let height = "160cm"

let infoStr = "my name is \(name), age is \(age), height is \(height)"

// 3> 字符串拼接过程中的格式化: 03:04
let min = 3
let second = 4

let timeStr = String(format: "%02d:%02d", min,second)

// 4.字符串的截取
let urlStr = "www.520it.com"

// 1> 方式一：
// 将String类型转换成NSString类型，再进行截取： as NSString
let header1 = (urlStr as NSString).substring(to: 3)
let middle1 = (urlStr as NSString).substring(with: NSRange(location: 4, length: 5))
let footer1 = (urlStr as NSString).substring(from: 10)

// 2> 方式二：
// 直接使用String类型方法，进行截取
let headerIndex = urlStr.index(urlStr.startIndex, offsetBy: 3)
let header2 = urlStr.substring(to: headerIndex)

let startIndex = urlStr.index(headerIndex, offsetBy: 1)
let endIndex = urlStr.index(urlStr.startIndex, offsetBy: 9)
let middle2 = urlStr.substring(with: Range(startIndex ..< endIndex))

let footerIndex = urlStr.index(urlStr.endIndex, offsetBy: -3)
let footer2 = urlStr.substring(from: footerIndex)















