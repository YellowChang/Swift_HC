//
//  ViewController.swift
//  02-03
//
//  Created by carayfire－Develop on 15/12/31.
//  Copyright © 2015年 Huangchang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        /**
         
         一、共用体是一种多变量共享存储空间的构造类型，它允许几种不同的变量共用同一存储空间。共用体和结构体的区别：1.结构体每一位成员都用来表示一种具体事务的属性，共用体成员可以表示多种属性（同一存储空间可以存储不同类型的数据）。
         
         2.结构体总空间大小，等于各成员总长度，共用体空间等于最大成员占据的空间。
         
         3.共用体不能赋初值。
         
         
         二、枚举类型是指变量的值可以全部列出，定义一个枚举变量后，变量的值确定在定义之中。它和结构体、共用体的区别在于，枚举元素是常量，只能在定义阶段赋值。
         
         */
        
        //1.定义枚举
        enum MapDirection{
            
            
            case north
            case south
            case east
            case west
            
            
            func simpleDirection()->String{
                switch self {
                case .north:
                    return "North"
                case .south:
                    return "South"
                case .east:
                    return "East"
                case .west:
                    return "West"
                }
            }
            
        }
        
        let d1:MapDirection = MapDirection.east
        print(d1)
        var d2:MapDirection = MapDirection.west
        print(d2.simpleDirection())
        d2 = .south
        print(d2.simpleDirection())
        
        var d3 = MapDirection.north
        d3 = .west
        print(d3)
        
        //        var d4:MapDirection = .
        
        //2.定义结构体
        struct Student {
            var snum : Int
            var sname: String
            var grade: Int
            var like: String
            
            func sum()->Int{
                return snum + grade
            }
            
            func sumStr()->String{
                return sname + like
            }
        }
        
        //创建一个结构体
        let stu = Student(snum: 100, sname: "hc", grade: 6, like: "basketball");
        let sum = stu.sum();
        print(sum)
        print(stu.sumStr())
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

