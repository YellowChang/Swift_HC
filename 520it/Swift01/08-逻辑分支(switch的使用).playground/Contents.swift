//: Playground - noun: a place where people can play

import UIKit

/*
 1.Switch的基本使用
     1> switch()可以省略
     2> case结束时可以不加break
 2.基本使用补充
     1>case可以判断多个条件
     2>如果希望产生case穿透，加上fallthrough
 3.可以判断多种类型
     1>浮点型
     2>字符串
     3>区间类型
 */

// 1.switch的基本使用

/*
 和OC的区别
     1> switch 后面的()可以省略
     2> case语句结束时，可以不加break，系统会默认加上,OC如果不加即使满足条件也会执行下一条语句
 */

let sex = 0
switch sex {
case 0:
    print("male")
//    break
case 0:
    print("female")
//    break
default:
    print("unknown")
}

// 2.基本语法补充
// 1>在swift中，switch语句后面case可以判断多个条件
// 2>如果希望case结束时，产生case穿透，加上fallthrough
switch sex {
case 0,1:
    print("normal")
    fallthrough
default:
    print("unknown")
}

// 3.switch判断其他类型
// 1>判断浮点型
let m = 3.14

switch m {
case 3.14:
    print("=m")
default:
    print("!m")
}

// 2>判断字符串
let a = 10
let b = 20
let oprateStr = "*"
var result = 0

switch oprateStr {
case "+":
    result = a + b
case "-":
    result = a - b
case "*":
    result = a * b
case "/":
    result = a / b
default:
    print("不合理的操作符")
}

// 3>判断区间类型
/*
 区间
     1. 半开半闭区间：0-9 0..<10
     2. 闭区间：0-9 0...9
 */
let score = 88
switch score {
case 0..<60:
    print("不及格")
case 60..<80:
    print("及格")
case 80..<90:
    print("良好")
case 90...100:
    print("优秀")
default:
    print("不合理成绩")
}






