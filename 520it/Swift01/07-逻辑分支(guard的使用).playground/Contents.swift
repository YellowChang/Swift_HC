//: Playground - noun: a place where people can play

import UIKit

// 年龄20，判断该人是否可以上网
let age = 20

// Swift方法(函数)
/*
func online(age : Int, haveMoney : Bool) {
    if age >= 18 {
        if haveMoney {
            print("可以上网")
        }else{
            print("回家拿钱去")
        }
    }else{
        print("回家去")
    }
}
 */

func online(age : Int, haveMoney : Bool){
    
    /*
     1> guard是Swift2.0新增的语法
     2> 它与if语句非常类似，它设计的目的是提高程序的可读性（如下例子：多个条件if需要嵌套多层，而使用guard语句不需要嵌套）
     3> guard语句必须带有else语句，它的语法如下：
        . 当条件表达式为true时跳过else语句中的内容，执行语句组内容
        . 条件表达式为false时执行else语句中的内容，跳转语句一般是return、break、continue和throw
     4> guard 条件表达式 else {
        return
        }
        语句组
     
    */
    
    // 1.判断年龄是否>=18
    guard age >= 18 else {
        print("回家去")
        return
    }
    
    // 2.判断是否带钱
    guard haveMoney else {
        print("回家拿钱去")
        return
    }
    
    print("可以上网")
    
}

online(age: age, haveMoney: true)