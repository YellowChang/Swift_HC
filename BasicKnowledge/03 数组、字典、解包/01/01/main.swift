//
//  main.swift
//  03-01
//
//  Created by carayfire－Develop on 16/1/4.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation


/*---------------------1.数组-------------------------*/
//数组的创建与初始化
print("------数组--------")

var someInt = [Int]()
/**
 *  []
 */
print(someInt)

var threeDoubles = [Double](repeating: 0.1, count: 3)
/**
 *  [0.1, 0.1, 0.1]
 */
print(threeDoubles)

var teachers = ["Mr.Huang","Mr.Zhang"]

/*-------------数组常见操作-------------*/
// 1.1元素个数
let count = teachers.count
print("数组：\(teachers)有\(count)个元素")

// 1.2判断是否有元素
if (teachers.isEmpty){
    print("Is Empty")
}else{
    print("No Empty")
}

// 1.3添加|插入元素
teachers.append("Mr.Kong")
teachers += ["Mr.Zheng"]
teachers += ["Mr.Hao"]
teachers.insert("Mr.Wang", at: 0)
teachers.insert(contentsOf: ["Mr.Li", "Mr.Yang"], at: 0)
/**
 *  添加元素后：["Mr.Li", "Mr.Yang", "Mr.Wang", "Mr.Huang", "Mr.Zhang", "Mr.Kong", "Mr.Zheng", "Mr.Hao"]
 */
print("添加元素后：\(teachers)")

// 1.4删除元素
//1.移除指定元素，并返回移除的元素
var fisrtItem = teachers.remove(at: 0)//如果超出索引范围则崩溃
fisrtItem = teachers.first!
var lastItem = teachers.last
/**
 * 第一个元素+最后一个元素：Mr.LiMr.Hao
 */
print("第一个元素+最后一个元素：\(fisrtItem + lastItem!)")
/**
 *  删除后数组：["Mr.Yang", "Mr.Wang", "Mr.Huang", "Mr.Zhang", "Mr.Kong", "Mr.Zheng", "Mr .Hao"]
 */
print("删除后数组：\(teachers)")
//2.移除所有元素,并保留空间，默认不保留
//teachers.removeAll(keepCapacity: true)
//print(teachers)
//Bool的默认值为false
print(Bool.init())
//teachers.removeAll()
//print(teachers)

//3.移除第一个元素，并返回
let firstObj = teachers.removeFirst()
print(firstObj)

//4.移除前面的几个元素
teachers.removeFirst(2)
print(teachers)

//5.移除最后一个元素
//teachers.removeLast()

//6.移除一定范围的元素
//Range--半开区间,移除索引为1和2的元素
//teachers.removeRange(Range(start: 1, end: 3))
//print(teachers)

// 1.5更改元素
var item = teachers[0]
item = "Bob"
teachers[1...3] = ["Jay"];//注意，这也是可行的，需要注意防止数组越界
print("更改后数组：\(teachers)")

print("--------------")

// 1.6遍历数组
for item in teachers{
    print(item)
}
print("--------------")
for (index,item) in teachers.enumerated(){
    print("\(index):\(item)")
}

print("------字典--------")

/*---------------------字典-------------------------*/
//字典的创建和初始化
//var some_dic = [:] //空字典
//print(some_dic)

var myDic:Dictionary = ["one":"hc","two":"HC"];
print(myDic["one"])

/*------字典的常见操作------*/
var language = ["English":"en", "Chinese":"Cn"];
print(language)
print("有\(language.count)种语言")
//1.修改数据
//1.1
language["French"] = "fre"; //没有则添加
language["French"] = "fr"; //有则修改
//1.2
let fr = language.updateValue("Fr", forKey: "French")
print("更改\(fr)之后字典：\(language)")//如果有值则返回修改前的值
let ge = language.updateValue("Ge", forKey: "German")
print(ge)//没有则返回空---nil

//2.移除数据
language["English"] = nil
print("移除元素后字典:\(language)")
let removeItem = language.removeValue(forKey: "Chinese")
print(removeItem)//如果有值则返回移除前的值，没有的话返回空--注意与数组不同

//3.遍历字典
print("------------item-------------")
for (key,value) in language{
    print("\(key):\(value)")
}
print("------------key-------------")
for key in language.keys{
    print(key)
}
print("------------Value-------------")
for (value) in language.values{
    print(value)
}
print("------------obj-------------")
for objc in language{
    print(objc)
    print(objc.0,objc.1)
}

//其实数组是一个特殊的字典，数组的key就是其下标，只不过这个下标是由系统分配好的
var myDog = [
    0:"小黄",
    1:"二黄",
    2:"大黄"
];
print(myDog[0]) //Optional("小黄")字典元素是一个可选类型，数组也是如此
print(myDog[3]) //nil--因为是可选类型，所以不会崩溃





