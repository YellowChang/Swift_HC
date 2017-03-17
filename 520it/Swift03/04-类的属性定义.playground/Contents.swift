//: Playground - noun: a place where people can play

import UIKit

// 1.创建类
class Student{
    // 类的属性定义
    // 1> 存储属性：用于存储实例的常量&变量
    var name : String = "黄畅"
    var age : Int = 0
    var mathScore : Double = 0.0
    var chineseScore : Double = 0.0
    
//    // 给类扩充函数
//    在OC中写的没有参数的方法，在Swift中可以写成计算属性
//    func getAverageScore() -> Double {
//        return (chineseScore + mathScore) * 0.5
//    }
    
    // 2> 计算属性：通过某种方式计算得来的属性
    var averageScore : Double {
        return (chineseScore + mathScore) * 0.5
    }
    

    // 3> 类属性：和整个类相关的属性，并且通过类名进行访问
    static var courseCount : Int = 0

    
}

// 2.创建类的对象
let stu = Student()
stu.age = 20
stu.chineseScore = 90
stu.mathScore = 100
print(stu.averageScore)

Student.courseCount = 2


