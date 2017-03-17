
//: Playground - noun: a place where people can play

import UIKit

/*
 0.介绍
     1> 在OC/C中枚举指定相关名称为一组整型值
     2> Swift中的枚举更加灵活，不必给每个枚举成员提供一个值，也可以提供一个值为字符串，一个字符，或是一个整型或浮点值
 1.总结：
     1> 枚举类型的常见定义方式
     2> 创建枚举具体的值
     3> 给枚举类型绑定值
     4> 枚举类型的另外一种定义方式
 */

// 1.枚举类型的定义
enum MethodType : String{
    case get = "get"
    case post = "post"
    case put = "put"
    case delete = "delete"
}

// 2.创建枚举具体的值
let type1 : MethodType = .get  //可以推断出类型可以直接使用“.”
let type2 = MethodType.delete

//nil 使用此函数获取的结果是一个MethodType?类型
let type3 = MethodType(rawValue: "123")
let str = type2.rawValue //"delete"->String
let index = type2.hashValue // 3



// 3.给枚举类型进行赋值
enum Direction : Int {
    case west = 0
    case east = 1
    case south = 2
    case north = 3
}
let d : Direction = .east
let dStr = d.rawValue //1-->Int
let d2 = Direction(rawValue: 4) //nil -->Direction?
let d3 = Direction(rawValue: 0) //west

// 4.枚举类型定义方式二
enum Type : Int {
    case get = 0, post, put, delete
}
let t1 = Type.post.rawValue // 1 --自动加1，适用于Int类型

// 没有指明值的类型，那么不能赋值,没有rawValue，有hashValue->Int类型
enum Type1  {
    case get, post, put, delete
}
let t2 = Type1.post.hashValue

