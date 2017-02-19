//
//  Person.swift
//  04-01
//
//  Created by carayfire－Develop on 16/1/5.
//  Copyright © 2016年 Huangchang. All rights reserved.
//
import Foundation
/*
 用class定义一个类
 一个类通常由【属性、下标脚本、方法】构成
 */
class Person: NSObject {
    //属性一般分为 存储属性、计算属性、类型属性
    
    //存储属性---存储特定类中的一个常量或者变量
    //注意：定义的时候必须有初始值
    //常量存储属性
    let a:Int = 1
    //变量存储属性
    var n:String?
    
    //计算属性
    //计算属性不存储值，仅仅只是提供一个getter和setter来获取值和设置其他属性
    var name:String{
        get{
            return "HuangChang"
        }
        set{
            n = newValue  //newValue是默认形参，可省略
            //会造成死循环
            //            self.name = newValue
        }
    }
    
    //类型属性---不需要对类进行实例化就可以使用的属性
    //类型属性用class关键字定义，并且一定是变量，不能是常量
    class var ClassTime: Int {
        get{
            return 2015
        }
        set{
            
        }
    }
    
    //属性监视器---监控属性值的改变
    //每次属性被修改的时候，都会调用
    var age:Int? {
        willSet(newAge){
            print("newAge is \(newAge)")
        }
        didSet(oldAge){
            if let sure = oldAge {
                print("oldAge is \(sure)")
            }else{
                print("oldAge is nil")
            }
        }
    }
    
    
    
}
