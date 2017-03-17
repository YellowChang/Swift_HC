//: Playground - noun: a place where people can play

import UIKit

/*
 类型推导：
     1> 如果在定义一个标识符时，直接赋值时，那么可以将标识符后面的类型省略掉
     2> 编辑器会根据我们后面赋值的类型，推导出前面标识符的类型，这个过程叫做类型推导
     3> 可以通过option + 鼠标左键 来查看标识符的类型
 */

let a = 20   //默认Int类型(相当于OC中的NSInteger类型)
var b = 3.14 //默认Double类型（64位浮点型， Float32位浮点型）

let view = UIView()
		