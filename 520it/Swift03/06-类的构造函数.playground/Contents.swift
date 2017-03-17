//: Playground - noun: a place where people can play

import UIKit

/*
 @interface Persobn : NSObject
 @property (nonautomic, copy)NSString * name;
 @property (nonautomic, assgin)NSInteger age;
 @end
 
 Person *p = [[Person alloc] init];
 Person *p = [[Person alloc] initWithName:@"" age:20];
 */

class Person : NSObject {
    var name : String = ""
    var age : Int = 0
    
    // 在Swift开发，若在对象方法中，用到成员属性，那么self.可以省略
    // 注意：若在函数中，有和成员变量重名的变量，那么self.不可以省略
    
    // 注意：如果有自定义的构造函数，那么会将系统提供的构造函数覆盖掉

    override init() {
        
    }
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    init(dict : [String : Any]) {
        
        // 1> 比较危险
//        let dictName = dict["name"]
//        self.name = dictName as! String
        
        
        // 2> 比较安全，适用于属性较少时
//        if let name = dict["name"] as? String {
//            self.name = name
//        }
//        if let age = dict["age"] as? Int {
//            self.age = age
//        }
        
        // 3> KVC
        /*
         使用KVC的条件
             . 必须继承自NSObject
             . 必须在构造函数中，先调用super.init()
             . 调用setValuesForKeys
             . 如果字典中没有其中一个key对应的值，调用

         */
        super.init()
        setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    override func setNilValueForKey(_ key: String) {
        
    }
    
    
}

let p = Person(dict: ["name" : "黄畅", "age" : 20, "sex" : "女"])
print(p.name, p.age)

		