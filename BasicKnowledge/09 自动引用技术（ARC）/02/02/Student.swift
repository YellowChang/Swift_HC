//
//  Student.swift
//  02
//
//  Created by carayfire－Develop on 16/2/20.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation

class Student: NSObject {
    var sName: String
//    weak var sTeacher: Teacher? //弱引用，老师对象，初始值为nil
    unowned var sTeacher: Teacher //无主引用-不能为可选类型，老师对象，初始值为nil
    init(name: String, teacher:Teacher) {
        sName = name
        self.sTeacher = teacher
        print("\(sName)初始化完成")
    }
    func getName() -> String{
        return sName
    }
    deinit{
        print("\(sName)反初始化完成")
    }
}
