//
//  SubClass.swift
//  06-01
//
//  Created by carayfire－Develop on 16/1/13.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
class SubClass: Base {
    
    var age:Int?
    
    init(name:String,age:Int){
        super.init(name: name)
        self.age = age
    }
    
    //反初始化---》实例在被释放之前，反初始化函数立即调用
    deinit{
        print("SubClass deinit")
    }
}