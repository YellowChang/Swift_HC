//
//  main.swift
//  06-02
//
//  Created by carayfire－Develop on 16/1/13.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
/*
******************AnyObject***************
*/

//AnyObject  相当于    id 类型
var myObject:AnyObject = NSMutableDictionary()
myObject = Date() as AnyObject //如果没有AnyObject会报错---每个变量在创建的时候类型就已确定

//print(myObject.count)//运行崩溃，对象没有这个方法--但将AnyObject类型换成NSMutableDictionary就自然没有错误了

//只有到运行时才知道myObject的类型，所以有可能写出不安全的代码
//当AnyObject对象调用一个方法时，可以通过optional特性决定对象是否调用该方法
if let count = myObject.count {
    print(count)
}

//as 强制转换
//这样写没有问题Date是一个可选类型
let date = myObject as? Date
print(date) //Optional(2016-01-13 09:44:39 +0000)

//这样写没有问题Datee是一个强制拆包的可选类型
let datee = myObject as! Date
print(datee) //2016-01-13 09:44:39 +0000

let futureDate = (myObject as! Date).addingTimeInterval(-60)
print(futureDate) //2016-01-13 09:44:54 +0000

//这样写是错误的，因为使用as？转换类型则代表为一个可选类型，而可选类型是不能直接操作的
//let futureDate = (myObject as? NSDate).dateByAddingTimeInterval(-60)
//print(futureDate)


//as?-----as!
let dic = NSDictionary(object: 12, forKey: "SomeKey" as NSCopying)
print(dic.object(forKey: "SomeKey")) //dic.objectForKey是一个AnyObject类型

//as?---使用as?转换类型，如果不能转换为指定类型，会赋值nil，而不会崩溃
var optionalStr:String?
let value = dic.object(forKey: "SomeKey") as? String
print("optionalStr is \(optionalStr)") // optionalStr is nil

//as!---使用as！转换类型，如果不能转换为指定类型，程序会崩溃
//optionalStr = dic.objectForKey("SomeKey") as! String //程序崩溃
//print("optionalStr is \(optionalStr)")

//optionalStr = dic.objectForKey("SomeKey") as! String? //程序崩溃，原因同上
//print("optionalStr is \(optionalStr)")

optionalStr = dic.object(forKey: "SomeKey") as? String! // 虽然有！，但这个！是用于一个类型，而不是强制拆包，所以这里不会崩溃
print("optionalStr is \(optionalStr)")  // optionalStr is nil

//optionalStr = dic.objectForKey("SomeKey") as? String!
//print("optionalStr is \(optionalStr!)")  // 程序崩溃，因为optionalStr为nil

//对于Swift中的强制类型转换，从AnyObject类型的对象转换成明确类型并不会保证成功，所以会返回一个可选值，需要通过检测该值类确定是否转换成功
let userDefaults = UserDefaults.standard
let userdate = userDefaults.object(forKey: "date")
//如果能确定这个对象类型，并且确定不是nil，可以使用as!操作符进行强制调用
if let strDate = userdate as? Date{
    print(strDate)
}

/*
******************nil***************
*/

//nil表示值不存在，如果需要表示一个缺失的值，可以使用Optional

//let test: String = nil    //错误

var testStr: String?    //如果没有赋值，则自动设为nil

print(testStr)

//注意：nil在Swift中可以用在基本数据类型中，并不像OC那样表示指针
var a: Int? = nil   //＝nil可以省略
print(a)

