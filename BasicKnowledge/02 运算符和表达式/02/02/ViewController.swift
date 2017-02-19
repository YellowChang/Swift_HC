//
//  ViewController.swift
//  02-02
//
//  Created by carayfire－Develop on 15/12/30.
//  Copyright © 2015年 Huangchang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1.99乘法表
        for i in 1...9{
            for j in 1...i{
                //               print(i,"*",j,"=",i * j,"  ",terminator: "")
                //                print("\(i) * \(j) = \(i * j)  ", separator: "  ", terminator: "")
                print("\(i) * \(j) = \(i * j)  ", terminator: "")
            }
            print("")
        }
        
        
        /*
         while循环与repeat-while循环的区别:
         repeat至少执行一次循环体
         while最少一次都不执行
         */
        //2.while循环
        var index = 0
        while index < 0{
            print("while----\(index)")
            index += 1
        }
        print("")
        
        //3.repeat-while循环
        index = 0
        repeat {
            print("repeat-while----\(index)")
            index += 1
        } while (index < 0)
        
        index = 10
        repeat {
            print("repeat----\(index)")
            index += 1
        } while (index < 0)
        
        //4.if语句
        var f = true
        if f{
            print(f)
            f = !f
        }else {
            print(f)
        }
        
        //5.switch语句
        /*
         fallthrough与break的区别：
         fallthrough会继续往下判断
         break不会再继续向下执行
         */
        var value = 1_000
        switch value{
        case 1_000:
            print(value)
            value = 5_000
            fallthrough
        case 5_000:
            print(value)
            fallthrough
        case 1_000...6_000:
            print("5_000 too")
            break
        default:
            print("default----")
            break
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

