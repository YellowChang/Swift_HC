//
//  main.swift
//  03-02
//
//  Created by carayfire－Develop on 16/1/4.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
/*
 一个变量， 要么存在并且赋值，要么不存在
 */

/*
 可选类型类似于Objective-C中指针的nil值，但是nil只对类(class)有用，指对象不存在，而Swift 的 nil 不是指针，它代表特定类型的值不存在。任何类型的可选类型都能赋值为 nil，而不仅限于对象类型。并且更安全。
 */

/*
 1.Swift里面nil 不能用于非可选类型
 2.如果代码中的常量或者变量需要适配值不存在的情况, 务必将它声明为恰当的可选类型("?")
 3.如果定义的可选类型的对象不提供默认值, 该对象将自动设为nil
 */

var str:String? = "1222"
//str = nil
var isEmpty = str?.hashValue
//一般不直接这样用当str = nil时就会崩溃
isEmpty = str!.hashValue
//一般这样做个安全判断或者str?.hashValue
if (str != nil){
    print(str!.hashValue)
}
//isEmpty = str.hashValue //错误，可选类型不能直接操作

var b:String! = "hehe"
b = nil

//一般也不能这样操作，因为String!也可以设为nil，这时程序就会崩溃
let bisEmpty = b.hashValue  //b后面也可以加！因为它是一个一定有值的可选类型
//一般这样做个安全判断或者b？.hashValue
if (b != nil){
    print(b.hashValue)
}
print(bisEmpty)




/*
 总结 ? 的使用场景
 1.声明Optional变量
 2.用在Optional值操作中,用来判断是否响应后面的操作
 */

//print(str!)
print(str)
//print(str?)
print("str is \(str)")
print("str is \(str!)")
//print("str is \(str?)")
print(isEmpty)



/*
 1222
 Optional("1222")
 1222
 */
//使用！时，如果值为nil则会崩溃
var str1:String!
str1 = String(str!)
print(str1)
var str2:String
str2 = String(describing: str)
print(str2)
var str3:String
str3 = String(str!)
print(str3)

//解包
/*
 如果确定一个可选类型的对象的值【一定存在】，那么我们使用 ！进行解包获取它的值，或者使用Optional Binding。
 */

//强制解包
//我们确定a一定有值,不需要每次都验证他的值是否存在
let sureIsEmpty = str!.hashValue
print(sureIsEmpty)
//隐式解包
if let sure = str{
    print(sure.hashValue)
}

/*
 总结-----解包
 1.强制对 可选量 进行解包使用（!）
 2.隐式解包的可选类型的时候, 一般用于类中的属性
 */




