//
//  main.swift
//  01
//
//  Created by carayfire－Develop on 16/2/20.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
//协议是为一些方法、属性和其特定任务或功能定义了一套要求，它只是描述了实现会是什么样子，并不提供这些要求的实现。
//协议能够被类、枚举、结构体实现。

//定义一个协议,要求实现类必须实现读写属性readAndWite和只读属性onlyRead
protocol ReadAndWriteProtocal{
    var readAndWrite:Int{
        get
        set
    }
    var onlyRead:Int{
        get
    }
}

//定义一个协议,要求实现类必须实现只读静态属性classValue
protocol OnlyReadProtocal{
    static var OnlyRead:Int{
        get
    }
}

//定义一个结构体，遵循定义的协议
struct SomeStruct:ReadAndWriteProtocal{
    var selfValue:Int = 0
    var readAndWrite:Int{
        get{
            return selfValue
        }
        set{
            selfValue = newValue
        }
    }
    var onlyRead:Int{
        get{
            return selfValue
        }
    }
    static var structValue:Int{
        get{
            return 2016
        }
    }
}


//定义一个类，遵循定义的协议
class SomeClass:NSObject,OnlyReadProtocal{
    class var OnlyRead: Int {
        get{
            return 1000
        }
    }
}
/*
100
100
100
999
999
999
2016
1000
*/
var someStruct = SomeStruct(selfValue: 100)
print(someStruct.selfValue)
print(someStruct.readAndWrite)
print(someStruct.onlyRead)
someStruct.readAndWrite = 999
print(someStruct.selfValue)
print(someStruct.readAndWrite)
print(someStruct.onlyRead)

print(SomeStruct.structValue)
print(SomeClass.OnlyRead)







