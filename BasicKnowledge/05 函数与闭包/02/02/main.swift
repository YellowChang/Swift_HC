//
//  main.swift
//  05-02
//
//  Created by carayfire－Develop on 16/1/14.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
/* 闭包（Closures）
 * 闭包是自包含的功能代码块，可以在代码中使用或者用来作为参数传值。
 * 在Swift中的闭包与C、OC中的blocks和其它编程语言（如Python）中的lambdas类似。
 * 闭包可以捕获和存储上下文中定义的的任何常量和变量的引用。这就是所谓的变量和变量的自封闭，
 * 因此命名为”闭包“("Closures）").Swift还会处理所有捕获的引用的内存管理。
 *J
 * 【全局函数和嵌套函数其实就是特殊的闭包。】
 * 闭包的形式有：
 * （1）全局函数都是闭包，有名字但不能捕获任何值。
 * （2）嵌套函数都是闭包，且有名字，也能捕获封闭函数内的值。
 * （3）闭包表达式都是无名闭包，使用轻量级语法，可以根据上下文环境捕获值。
 *
 * Swift中的闭包有很多优化的地方:
 * (1)根据上下文推断参数和返回值类型
 * (2)从单行表达式闭包中隐式返回（也就是闭包体只有一行代码，可以省略return）
 * (3)可以使用简化参数名，如$0,  (从0开始，表示第i个参数...)
 * (4)提供了尾随闭包语法(Trailing closure syntax)
 */

// 下面用Swift标准库中的sort方法来一步步简化闭包写法
// sort函数需要两个参数
// 参数一：数组
// 参数二：一个闭包：带有两个参数，这两个参数类型与数组中的元素类型相同，返回值是Bool
var names = ["Swift","C","Phyon","Html","Java"]

//第一种方式使用函数
func backwards(_ string1:String,string2:String)->Bool{
    return string1 > string2 //降序排序
}

var reversed = names.sorted(by: backwards)
print(reversed)  //["Swift", "Phyon", "Java", "Html", "C"]

// 第二种方式：使用闭包方式
// 完整闭包写法是在花括号内有参数列表和返回值，用关键字in表明闭包体的开始
// (fir: String, sec: String) 闭包参数列表
// -> Bool 指明闭包返回值类型是Bool
// in关键字表明闭包体的开始
reversed = names.sorted(by: {(fir:String,sec:String) -> Bool in
    return fir > sec
})
print(reversed)

// 这里可以进一步简化写法，因为闭包代码比较短，可以写到一行上
reversed = names.sorted(by: { (fir: String, sec: String) -> Bool in return fir > sec})
print(reversed)

// 下面再进一步简化写法 ：根据环境上下文自动推断出类型
// 参数列表都没有指明类型，也没有指明返回值类型，这是因为swift可以根据上下文推测出
// firstString和secondString的类型会是names数组元素的类型，而返回值类型会根据return语句结果得到
reversed = names.sorted(by: {(fir,sec) -> Bool in return fir > sec})
print(reversed)

// 再进一步简化：隐式返回（单行语句闭包）
// 因为闭包体只有一行代码，可以省略return
reversed = names.sorted(by: {(fir,sec) -> Bool in fir > sec})
print(reversed)


// 再进一步简化：使用简化参数名（$i,i=0,1,2...从0开始的）
// Swift会推断出闭包需要两个参数，类型与names数组元素相同
reversed = names.sorted(by: {$0 > $1})
print(reversed)

// 最简单的一种写法：使用操作符
//reversed: [Arial, Donary, Soga, Swift]
reversed = names.sorted(by: <)     //升序
print(reversed)

/*
 * 尾随闭包（Trailing Closures）
 * 如果函数需要一个闭包参数作为参数，且这个参数是最后一个参数，而这个闭包表达式又很长时，
 * 使用尾随闭包是很有用的。尾随闭包可以放在函数参数列表外，也就是括号外。如果函数只有一个参数，
 * 那么可以把括号()省略掉，后面直接跟着闭包。
 */

// Array的方法map()就需要一个闭包作为参数
let strings = names.map{(str:String) ->String in
    return str + "hehe"
};
print(strings);

//函数名（参数名 参数变量名：参数变量类型）->（返回值）
func intrument(numm num:Int) -> (()->Int){
    var total = 0
    func subIntrument() -> Int{
        total += num
        return total
    }
    return subIntrument
}

//函数名（参数变量名：参数变量类型）->（返回值）
//注意：这种参数写法的区别在于上面那种方法在调用函数时可以提示参数名，而这种不提示，其他的完全一样
func intrumentSZ(_ numSZ:Int)->(()->Int){
    var total = 0
    func sunIntrumentSZ()->Int{
        total += numSZ
        return total
    }
    //返回的该函数的返回值即INT
    //    return sunIntrumentSZ()
    //返回的是一个函数
    return sunIntrumentSZ
}

// 闭包是引用类型，所以incrementByTen声明为常量也可以修改total
let intrumentTen = intrument(numm: 10)
let intrumentTemSZ = intrumentSZ(10)
/**
 incrementByTen是一个闭包
 // 这里是没有改变对increment的引用，所以会保存之前的值
 10
 20
 30
 */
print(intrumentTen())
print(intrumentTen())
print(intrumentTen())

let intrumentOne = intrument(numm: 1)
/**
 1
 2
 3
 */
print(intrumentOne())
print(intrumentOne())
print(intrumentOne())
//40
print(intrumentTen())


