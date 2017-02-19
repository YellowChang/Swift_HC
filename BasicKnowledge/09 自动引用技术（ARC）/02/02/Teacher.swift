
//
//  Teacher.swift
//  02
//
//  Created by carayfire－Develop on 16/2/20.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation

class Teacher: NSObject {
    var tName: String
    var tStudent: Student? //学生对象，初始值为nil
    init(name: String) {
        tName = name
        print("\(tName)初始化完成")
    }
    func getName() ->String{
        return tName
    }
    deinit{
        print("\(tName)反初始化完成")
    }
}
