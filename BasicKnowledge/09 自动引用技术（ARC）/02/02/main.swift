
//
//  main.swift
//  02
//
//  Created by carayfire－Develop on 16/2/20.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
var teacher:Teacher? = Teacher(name: "张老师")  //初始化T -> ARC + 1 = 1
var student:Student? = Student(name: "刘同学", teacher: teacher!)  //初始化S -> ARC + 1 = 1 & T -> ARC + 1 = 2
teacher!.tStudent = student  //S -> ARC + 1 = 2
teacher = nil  // T -> ARC - 1 = 1 -> 内存泄露
student = nil  // S -> ARC - 1 = 1 -> 内存泄露
/*解决方法：
将Teacher中的student对象设成弱引用，或者将Student中的teacher对象设成弱引用
或者设为无主引用！使用关键字unowned
*/


