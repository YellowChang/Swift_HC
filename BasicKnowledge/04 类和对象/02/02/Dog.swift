//
//  Dog.swift
//  04-02
//
//  Created by carayfire－Develop on 16/1/5.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation

class Dog: NSObject {

    //方法就是定义在类中的函数,分为实例方法和类方法
    //1.实例方法
    func _printName(){
        print("Name is 黄畅") //无参数
    }
    func _printOneName(_ str:String){
        print("Name is \(str)") //一个参数
    }
    func _printTwoName(_ str1:String,str2:String){
        print("Name is \(str1 + str2)") //两个参数
    }
    func _returnSum(_ a:Int,b:Int)->String{
        return String(a + b)  //两个参数和一个返回值
    }
    
    //2.类方法
    //带两个参数，返回一个元组类型
    class func _returntuple(_ age:Int,year:Int,name:String)->(Int,Int,String) {
        return (age,year - age,"黄畅")
    }
    
    //3.下标脚本
    //下标脚本允许你通过在实例后面的方括号中传入一个或者多个的索引值来对实例进行访问和赋值
    var num:[Int] = Array(repeating: 0, count: 10)
    subscript(index:Int)->Int{
        get{
            return num[index]
        }
        set{
           num[index] = newValue
        }
    }
}







