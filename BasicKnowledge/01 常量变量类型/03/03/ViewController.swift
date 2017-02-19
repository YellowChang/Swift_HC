//
//  ViewController.swift
//  03
//
//  Created by carayfire－Develop on 15/12/28.
//  Copyright © 2015年 Huangchang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1.字符
        //在swift中，字符和字符串都用 双引号“”括起来，要想将变量定义成字符型，必须指定类型
        //必须只有一位
        //        let char :Character = "char"
        let char1 :Character = "c"
        let char2 :Character = "1"
        let char3 :Character = "我"
        let str = "str"
        
        //如果赋值语句右边是一个字符类型数据，则变量默认是字符类型
        let char = char3
        
        //2.字符串
        //字符串的初始化
        let string = "string";
        //不能强制字符--》str AND str--》字符
        //        let string:String = char;
        let str2 = String(char2);
        let str3 = String("abc");
        print(char1,str,char,string,str2,str3);
        
        //3.通过for循环来枚举每一个字符
        for c:Character in (str3?.characters)!{
            print("for循环---Print:",c)
            //            NSLog("for循环---NSLog:%C",c)
        }
        
        
        //4.元组类型
        //元组是包含多个值的类型，将多个值组合为单个值
        //元组中的值可以是任意类型,而且每个元组中的类型不必要相同
        /*
         有括号
         (111, 222, "aaa", "ccc")
         (111, 222, "aaa", "ccc")
         */
        let tuples = (111, 222, "aaa", "ccc")
        print(tuples)
        let tupless = tuples;
        print(tupless)
        
        //可以使用下划线 “_” 进行占位
        /*
         没有括号
         222
         */
        let (_, a, _, _) = tupless;
        print(a)
        
        //元组的用法
        /// ("hc", 22)
        let tuples2 = (name:"hc" ,age:22)
        print(tuples2)
        
        //5.可选类型
        //可选类型是用来解决对象变量或常量为空的情况
        //可选类型后加“?”代表允许变量没有值，并设为nil
        
        var hcp: String
        //        let hcpValue = hcp?.hashValue--普通值必须有初始值才能操作
        hcp = "hcp"
        let hcpValue = hcp.hashValue
        print(hcpValue)
        
        var hc : String?
        print("hc is \(hc)") /// hc is nil
        //        print("hc is \(hc!)") //---这句话会崩溃
        
        var hcc : String?
        hcc = "hcc"
        print("hcc is \(hcc)") /// hcc is Optional("hcc")
        print("hcc is \(hcc!)") ///hcc is hcc
        
        
//        let hc1 : String!
//        print("hc is \(hc1)") // hc is nil---并没有操作只是打印所以不会崩溃
        
        
        var hc2 : String!
        hc2 = "hc" //--没有这句话程序会崩溃！
        print("hc is \(hc2!)") // hc is hc
        
        
        //对于一个可选变量，使用前通常做判断
        /**
         *  hc is Optional("hcc")
         */
        hc = "hcc"
        if (hc != nil){
            print("hc is \(hc)")
        }
        //每次使用可选变量前都先判断是否为空，这很麻烦
        //"!"用来确定可选变量一定有值，没有值直接使用会崩溃
        /**
         hc is hcc
         */
        print("hc is \(hc!)")
        
        var c : String?
        c = "123"
        //        c = nil
        
        var d : Int!
        d = Int(c!) //当c为nil时，这里会崩溃
        /**
         d is 123
         */
        print("d is \(d)")
        d! += 1
        /**
         d is 124
         */
        print("d is \(d)")
        
        //6.数值的可读性
        //"_"用来分隔较大的数值
        let num = 10_0000_0000 //更方便看出来是10亿
        print(num)
        
        //7.类型别名(typealias)
        typealias NewInt = Int
        let value:NewInt = 10
        print(value)
        
        //8.基本数据类型转换
        //int转double、float、string
        let intV:Int = 3
        let dV = Double(intV)
        let fV = Float(intV)
        let sV = String(intV)
        /**
         3 3.0 3.0 3
         */
        print(intV,dV,fV,sV)
        
        //string转int、double、float
        let s = "123.4"
        //字符串内容必须是整形才能用此方法
        let ii = Int(s)
        let ns = s as NSString
        let li = ns.integerValue
        let dd = ns.doubleValue
        let ff = ns.floatValue
        let ni = ns.intValue
        /**
         123.4 nil 123.4 123 123.4 123.4 123
         */
        print(s , ii, ns, li, dd, ff, ni)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

