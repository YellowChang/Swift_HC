//
//  ViewController.swift
//  MySwift-01
//
//  Created by carayfire－Develop on 15/12/24.
//  Copyright © 2015年 黄畅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("那么久的雾霾天，终于见到阳光了");
        
        /// 跟其他语言不太一样的是，Swift的多行注释可以【嵌套多行注释】
        
        /**
         语法须知
         2个不需要
         1.不需要编写main函数：全局作用域中的代码会被自动当做程序的入口点（从上往下执行）
         2.不需要在每一条语句后面加上分号
         */
        
        //[标识符]
        //开发过程中给变量、常量、方法、函数、枚举、结构体、类、协议等指定的名字。
        //标识符区需要有一定的规范、分大小写！
        //由大小写字母A-Z、下划线_、Unicode、数字、中文组成，首字符不能是数字
        
        /// 用let来声明常量
        let a = "哈哈"
        let b = 2.5
        
        
        /**
         有一种情况必须加分号：同一行代码上有多条语句时
         */
        let c = 0; let d = 20
        print(c)
        
        
        /**
         用var来声明变量
         */
        let haha = "嘿嘿";
        let age = 21;
        print(haha, age)
        
        /**
         1.常量和变量的命名
         基本上可以用任何你喜欢的字符作为常量和变量名
         2.常量和变量名的注意点
         不能包含数学符号（比如 + 和 * ）
         不能包含箭头（比如↑、↓、←、→）
         不能包含非法无效的Unicode字符（比如⚽ 、♠）
         不能是关键字（比如let、var）
         不能包含横线–、 制表符（比如my–name）
         不能以数字开头（比如 123go）
         不能是单独一个下划线_ （比如var _ =10）
         */
        
        let π = 3.14159
        let 网址 = "http://ios.itcast.cn"
        
        print( π, 网址)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

