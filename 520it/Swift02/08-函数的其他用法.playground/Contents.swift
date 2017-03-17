//: Playground - noun: a place where people can play

import UIKit
/*
 0. 函数的介绍：
     1> 函数相当于OC中的方法
     2> 函数的格式：
         func 函数名(参数列表) -> 返回类型 {
             代码块
             return 返回值
         }
     3> func 是关键字，多个参数列表之间可以用逗号(,)分隔，也可以没有参数
     4> 使用箭头"->"指向返回类型
     5> 若函数没有返回值，返回值为Void，并且"-> 返回值类型"部分可以省略
 */

// 1.没有参数，没有返回值的函数
func about() -> Void {
    print("iPhone8")
}
about()

func about1() {
    print("iPhone8")
}
about1()

// 2.有参数，没有返回值的函数
func callPhone(phoneNum: String){
    print("call \(phoneNum)")
}
callPhone(phoneNum: "17710846692")
// 3.没有参数，有返回值的函数
func readMsg() -> String{
    return "吃饭了吗"
}
let msg = readMsg()
print(msg)

// 4.有参数，有返回值的函数
func sum(num1 : Int, num2: Int) -> Int{
    return num1 + num2
}
let result = sum(num1: 10, num2: 10)
print(result)
		