//: Playground - noun: a place where people can play

import UIKit

let m = 20
let n = 10.5

//let result = m + n  OC中是可以的，因为有隐式转换，可以将int->double,在Swift是错误的

let result1 = Double(m) + n
let result2 = m + Int(n)


let a: Double = 2.44
let b: Float = 3.14

//let result = a + b 即使都是浮点型，也不能进行运算，因为Swift中没有隐式转换，必须是相同类型才可以进行基本运算







		