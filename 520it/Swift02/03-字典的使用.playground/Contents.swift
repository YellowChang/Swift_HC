//: Playground - noun: a place where people can play

import UIKit

/*
 1.定义字典 --是一个泛型集合
     1.1 定义不可变字典  let
     2.2 定义可变字典    var
 2.对可变字典的基本操作（增删改查)
 3.遍历字典
     3.1 遍历字典中的所有key值
     3.2 遍历字典中的所有value值
     3.3 遍历字典中的所有key/value
 4.字典合并
 */

// 1.定义字典
// 1.1 定义不可变字典 let
// Dictionary<String, Any> ---> [String : Any]
let dict1 : Dictionary<String, Any> = ["name" : "黄畅", "age": 10]
let dict2 : [String : Any] = ["name" : "黄畅", "age": 10]
let dict3 = ["name" : "黄畅", "age": 10] as [String: Any] //元素类型不同需要进行转换
let dict4 = ["name" : "黄畅", "age": "10"] //元素类型相同，不需要进行转换

// 2.2 定义可变字典 var
var dictM = [String : Any]()

// 2.对可变字典的基本操作（增删改查）
// 2.1 添加元素
dictM["name"] = "黄畅"
dictM["age"] = 10
dictM

// 2.2删除元素
dictM.removeValue(forKey: "age")
dictM

// 2.3修改元素
dictM["name"] = "畅"
dictM.updateValue("10", forKey: "age")
dictM

// 2.4查找元素
dictM["age"]

// 3.遍历字典
// 3.1 遍历字典中的所有key值
for key in dictM.keys{
    print(key)
}

// 3.2 遍历字典中的所有value值
for value in dictM.values{
    print(value)
}

// 3.3 遍历字典中的所有key/value
for (key,value) in dictM{
    print(key,value)
}

// 4.字典合并
var dictA : [String : Any] = ["name" : "黄畅", "age": "10"]
let dictB : [String : Any] = ["height" : "20", "phoneNum": "17710846692"]
//let resultDict = dictA + dictB   //即使是相同类型也不能直接合并

for key in dictB.keys {
    dictA[key] = dictB[key]
}
dictA

