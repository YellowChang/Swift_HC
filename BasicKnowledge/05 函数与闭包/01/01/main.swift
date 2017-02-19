//
//  main.swift
//  05-01
//
//  Created by carayfire－Develop on 16/1/5.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
//func  函数名（ 参数变量：类型 ，参数变量：类型...）｛｝

//一个简单的求和函数
//1.函数类型(int, int)->(int)
//如果没有指定形参是否可变，则默认是常量,下面a是变量，b是常量
func add(_ a:Int, b:Int)->Int{
    var a = a
    a = 1
    return (a + b)
}
func minus (_ a:Int, b:Int)->Int{
    return (a - b)
}

//函数类型(int, int, int)->(int), a,b,c为常量
func add1(_ a:Int,b:Int,c:Int)->Int{
    return (a+b+c)
}

//2.参数添加默认值---无法调用
func printString(_ str:String = "haha"){
    print(str)
}

//3.参数可变
func printString (_ strs:String...){
    for str:String in strs{
        print(str)
    }
}

//4.函数类型做参数
func add(_ addFun:(Int, Int, Int)->Int, a:Int, b:Int){
    print(addFun(a, b, 5))
}

//5.函数类型做返回值
enum EnumType{
    case add
    case minius
}

func chooseFunc(_ enumType:EnumType)->(Int, Int)->Int{
    return enumType == EnumType.add ? add : minus
}

//6.函数的嵌套
func mainFunction(_ input:Int)->Int{
    func innerFuction(_ input:Int)->Int{
        return input - 1
    }
    return innerFuction(input - 1)
}

//函数的调用
var a = 5, b = 10;
print(add(a , b: b))
print(add1(a , b: b, c: 15))
add(add1, a: 4, b: 8)

printString()
printString("ya","yi")

let fun = chooseFunc(EnumType.add)
print(fun(a,b))

