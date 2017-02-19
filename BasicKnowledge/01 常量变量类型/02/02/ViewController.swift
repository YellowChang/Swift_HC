//
//  ViewController.swift
//  Swift-01-02
//
//  Created by carayfire－Develop on 15/12/30.
//  Copyright © 2015年 Huangchang. All rights reserved.
//

import UIKit

//给浮点型写一个延展
extension Double {
    //转换
    func format(_ f: String) -> NSString {
        return NSString(format: "%\(f)f" as NSString, self)
    }
}
extension Float {
    func format(_ f:String) ->NSString {
        return NSString(format: "%\(f)f" as NSString, self)
    }
}
//为整型类型写一个延展
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1、变量和常量
        
        //常量(let)---特殊的变量，设置一次值就不允许修改
        let a = 10
        //        a++   //error
        //        a = 20;
        print(a)
        
        //变量
        //如果没有指定变量的类型，编译器会根据变量初始化时右侧表达式推导出当前变量类型-----此时，变量必须要进行初始化
        //        var count1  //error 必须初始化
        var count1 = 10
        //        println(count1)
        print(count1)
        
        //通过 ':' 指定变量的类型
        var count2 : Int  //合法
        //        let countL2 : Int //注意，如果是常量,必须初始化
        count2 = 20   //即使在声明时合法了，但是在使用的时候一定要初始化
        //        println(count2)
        print(count2)
        
        //1.advancedBy(n)---在本身的基础上加n--本身数值不会变
        let data1 = count2.advanced(by: 10)
        print(data1) //30
        print(count2) //20
        
        //2.advancedBy(n, limit: l)--在本身的基础上加n,但不能超过l,否则默认l
//        let data2 = count2.advancedBy(100, limit: 100)
//        print(data2) //100
//        let data3 = count2.advancedBy(100, limit: 130)
//        print(data3) //120
        
        /*
         3.数据存储是以字节为单位的，存储的字节序不一样结果就不同:
         如果我们将0x1234abcd写入到以0x0000开始的内存中，则结果为
         big-endian     little-endian
         0x0000     0x12              0xcd
         0x0001     0x34              0xab
         0x0002     0xab              0x34
         0x0003     0xcd              0x12
         */
        let data4 = count2.bigEndian
        print(data4) //1441151880758558720
        let data5 = count2.littleEndian
        print(data5) //20
        
        //4.在原来的基础减一
        let data6 = (count2 - 1)
        print(data6) //19
        print((data6 - 1)) //18
        
        //5.在原来的基础上加1
        let data7 = (count2 + 1)
        print(data7)
        
        //6.小编不知道这个有什么毛用啊，不过猜想应该把Int数值的类型改成IntMax类型即Int64型
        let data8 = count2.toIntMax()
        print(data8) //20
        
        let count3:Int16 = 10
        print(count3.toIntMax())
        
        //7.Opaque Value--这是个什么东东
//        print(count3.value)
        
        //注意：不管是变量还是常量，一旦确定了数据类型，后期是不可以改变的
        
        //整型
        let maxIntValue1 = INT64_MAX;
        let maxIntValue2 = Int64.max;
        let maxIntValue3 = IntMax();
        let maxIntValue4 = INTMAX_MAX;
        /**
         *  max1******%dmax2******%dmax3******%dmax4******%d 9223372036854775807 9223372036854775807 0 9223372036854775807
         */
        print("max1******%dmax2******%dmax3******%dmax4******%d",maxIntValue1,maxIntValue2,maxIntValue3,maxIntValue4);
        
        
        
        let minIntValue1 = INT8_MIN;
        let minIntValue2 = Int8.min;
        /**
         *  min1******min2****** -128 -128
         */
        print("min1******min2******",minIntValue1,minIntValue2);
        /**
         *  min1****** -128 min2****** -128
         */
        print("min1******",minIntValue1,"min2******",minIntValue2);
        
        
        //浮点型
        let f1:Float = 3.222222;
        let f2:Double = M_PI;
        
        /**
         *  Float_NSLog---3.222
         Float延展---- 3.1415926536
         直接打印f1: 3.22222
         直接打印f2: 3.14159265358979
         */
        NSLog("Float_NSLog---%.3f", f1);
        print("Float延展----",f2.format(".10"));
        print("直接打印f1:",f1);
        print("直接打印f2:",f2);
        
        
        //布尔类型
        let b1:Bool = true;
        let b2:Bool = false;
        /**
         *  true false
         true false
         假： false 真：true
         */
        print(b1,b2);
        print(b1,"\(b2)")
        print("假：",b2,"真：\(b1)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

