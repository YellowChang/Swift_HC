//: Playground - noun: a place where people can play

import UIKit

/*
 0. 可选类型的介绍
     1> 在OC开发中，若一个变量暂不使用，可以赋值为0（基本类型），或赋值为空(对象类型)
     2> 在Swift开发中，nil也是一个特殊类型，因为和真实类型不匹配是不能赋值为nil的（Swift是强类型语言）
     3> 但在开发中赋值nil在所难免，因此推出了可选类型
     4> 可选类型的取值
         . 空值
         . 有值

 1. 总结：
     1> 定义可选类型
         . Optional<String>
         . String？
     2> 给可选类型赋值
         . Optional("why")
         . "why"
     3> 从可选类型中取值
         . name! --->强制解包  
           注意：强制解包非常危险，所以先判断再解包
         . 可选绑定
             if let name = name {
             print(name)
             }
         . ?? 运算符
 */

class Person{
    // 如果属性不是可选类型，那么必须初始化，否则报错
    var name:String = ""
}

// nil是一个特殊类型，跟String、Int一样,所以不能将一个Int类型设置为nil
// let age : Int = nil ---错误写法

// 在Swift开发中只有可选类型才能赋值为nil，其他类型不能
// 1.定义一个可选类型 --泛型集合
// 1> 方式一：
var name : Optional<String> = nil
// 2> 方式二：
var age: Int? = nil

// 2.给可选类型赋值
// 1> 方式一：
name = Optional("why")
// 2> 方式二：
name = "hc"

// 3.取出可选类型中的值
print(name)
// 3.1可选类型 + ! ---->强制解包
// 注意：强制解包非常危险，如果可选类型为nil，强制解包会导致程序崩溃
print(name!)
// 3.2可选绑定（固定格式）：该语法用于可选类型，使我们使用可选类型起来更加方便
// 1> 判断name是否有值，若没有，则直接不执行
// 2> 若有值，那么系统会自动对可选类型进行解包，并且将解包后的值赋值给前面的tempName
if let tempName = name{
    print(tempName)
}
if let name = name {
    print(name)
}
// 3.3 ?? 运算符可以用于判断变量/常量 的数值是否为nil，不为nil，则取变量/常量本身的值，若为nil，则使用后面的default值代替
print(name ?? "0")











