//
//  ViewController.swift
//  02-01
//
//  Created by carayfire－Develop on 15/12/30.
//  Copyright © 2015年 Huangchang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1.赋值运算符
        let a = 10
        var b = 20
        b = a
        if a == b {
            print("a == b")
        }
        
        //2.数值运算
        let c1 = a + b
        let c2 = a - b
        let c3 = a * b
        let c4 = a / b
        
        print(c1, c2, c3, c4)
        
        //“+”可用于字符串的拼接
        let str1 = "h"
        let str2 = "c"
        let str3 = str1 + str2
        print(str3)
        
        //3.求余运算
        let y1 = c3 % c4
        let y2 = Double(c1 / 3).truncatingRemainder(dividingBy: Double(c4))
        let y3 = Int(c3) % Int(c4)
        let y4 = Double(a).truncatingRemainder(dividingBy: (Double(b)+1.3))
        let y5 = (Double(b)+1.3).truncatingRemainder(dividingBy: Double(a))
        /*
         【不同类型的两个数进行（基本）运算系统会报错】
         原因是：
         如果运算，系统就会把类型转换成相同的，但是不管是变量还是常量，一旦类型确定之后是不能更改的
         */
        //        let y6 = Double(c1 / 3) % Float(c3)
        //        let y7 = Double(c1 / 3) * Float(c3)
        /**
         0 0.0 0 10.0 1.3
         */
        print(y1, y2, y3, y4, y5)
        
        //4.自增、自减
        var z1 = 10.3;
        z1 += 1
//        var z2 = z1++ + 10
        z1 -= 1
        //z1先运算后减，z2先减后运算
//        let z3 = z1-- - --z2
        /**
         10.3 20.3 -9.0
         */
//        print(z1, z2, z3)
        
        //5.复合赋值
        var f = 1.5
        f += 10
        //报错
        //        f += Int(10)
        print(f)
        
        
        //6.三目运算符
        var m = f == 10 ? 10 : 11.5
        print(m)
        
        //7.区间运算符
        for index in 1...10{
            print(index)
        }
        
        for index in 1..<10{
            print(index)
        }
        
        //8.逻辑运算
        let y = true
        let n = false
//        if y && !n || m++ == 0{
//            print("Yes")
//        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

