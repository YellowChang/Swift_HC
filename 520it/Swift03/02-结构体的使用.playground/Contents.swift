
//: Playground - noun: a place where people can play

import UIKit
/*
 0.介绍
     1> 结构体是由一系列具有相同类型或者不同类型的数据构成的数据集合
     2> 结构体指的是一种数据结构
     3> 结构体是值类型，在方法中传递时是值传递
     4> 在OC中结构体只能拥有属性，在Swift还可以拥有函数
 1.格式
     struct 结构体名称 {
         //属性和函数
     }
 2.总结
     1> 定义结构体
     2> 创建结构体对应的值
     3> 系统结构体的创建方式
     4> 给结构体扩充方法
     5> 给结构体扩充构造函数
 */

// 1.定义结构体
struct Location {
    // 属性
    var x : Double
    var y : Double
    
    // 函数
    // 普通函数
    func test() {
        print("结构体的test函数")
    }
    // 改变成员属性
    // 如果在函数中修改了成员属性，前面必须加上mutating
    mutating func moveH(distance : Double)  {
        self.x = distance
    }
    
    // 给结构体扩充构造函数
    // 1> 默认情况下，系统会为每一个结构体提供一个默认的构造函数，并且构造函数，要求给每一个成员属性进行复制 ： Location(x: Double, y: Double)
    // 2> 构造函数都是以init开头，并且构造函数不需要返回值
    // 3> 在构造函数结束时，必须保证所有的成员属性被初始化
    init(a : Double, b : Double) {
        self.x = a
        self.y = b
    }
    
    init(xyStr : String) {
        let arr = xyStr.components(separatedBy: ",")
        let item1 = arr[0]
        let item2 = arr[1]
        
        self.x = Double(item1) ?? 0
        self.y = Double(item2) ?? 0
    }
}

// 2.创建结构体对应的值
var center = Location(a: 1.5, b: 2.3)


// 3.系统结构体的创建方式
let rect = CGRect(x: 0, y: 0, width: 0, height: 0)
let size = CGSize(width: 0, height: 0)
let point = CGPoint(x: 0, y: 0)
let range = NSRange(location: 0, length: 0)

// 4.给结构体扩充方法
center.test()
// 因为结构体是一个值类型，若修改成员则创建时使用var修饰
center.moveH(distance: 20)
print(center.x)

// 5.给结构体扩充构造函数
Location(a: 0, b: 0)
let l = Location(xyStr: "30,40")
print(l.x,l.y)
