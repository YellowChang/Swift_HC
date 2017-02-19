//
//  main.swift
//  02
//
//  Created by carayfire－Develop on 16/1/21.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation

/****************扩展*************/
//概念：向已有类、结构体、枚举添加新功能

extension Double{
    func printMyDouble(){
        print(self + 1.0)
    }
}

var d:Double = 1.0
d.printMyDouble()

//扩展属性
extension Double{
    //    var d1:Double = 1.0   //注意：不能添加存储属性(没有属性观察器)
    var d2:Double{
        return self + 2.0
    }
    var d3:Double{
        return self + 3.0
    }
    var d4:Double{
        return self
    }
}

print("\(d.d2,d.d3,d.d4)")

//扩展构造器
struct Point{
    var x = 100.0
    var y = 200.0
}
struct Size {
    var width = 10.0
    var height = 20.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}

//默认构造器
let defaultRect = Rect()
print(defaultRect)

//成员构造器
let memberRect = Rect(origin: Point(x: 20.0, y: 30.0), size: Size(width: 100.0, height: 20.0))
print(memberRect)
print(memberRect.origin.x)

//向整型数据扩展一个求立方的方法
extension Int{
    func cubeMethod() ->Int{
        return self * self * self
    }
}
print(2.cubeMethod())

//修改实例方法
//通过扩展添加的实例方法也可以修改实例方法本省
//注意：结构体和枚举中修改self或其属性方法必须使用关键字mutating标记实例方法
extension Int{
    mutating func square(){
        self = self * self
    }
}

var a = 200
print(a.square())

//扩展下标脚本
//使用sbuscript关键字添加新下标

//通过下标寻找数字从右到左的第n个数字
extension Int{
    subscript(index:Int)->Int{
        var decimal = 1
        if index > 0{
            for _ in 1...index{
                decimal *= 10
            }
        }
        return self / decimal % 10
    }
}

let intTest:Int = 123456789
print(intTest[0])


//扩展嵌套类型
extension String{
    enum TypeEnum{
        case plants, animals, unknow
    }
    var typeEnum: TypeEnum{
        switch String(self).lowercased(){
        case "flower","tree","grade":
            return .plants
        case "dog","cat","panda":
            return .animals
        default:
            return .unknow
        }
    }
}

//将枚举类型和String值联合使用
func returnStringWord(_ word:String)->String{
    switch word.typeEnum{
    case .animals:
        return "Animal"
    case .plants:
        return "Plant"
    case .unknow:
        return "Unkonw"
    }
}

let str:String = returnStringWord("dog")
print(str)


