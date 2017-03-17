//: Playground - noun: a place where people can play

import UIKit

// 1.注意一：
// 在开发中，优先使用常量let，只有发现标识符需要修改时，再使用变量
// 目的：防止在其他不希望修改的地方，不小心修改了值

// 2.注意二：
// 常量本质：指向的内存地址不可以修改，但可以同内存地址找到对应的对象，之后修改对象内部的属性

/*
 OC中创建对象：
    UIView *view = [[UIView alloc] init];
 Swift中创建对象
     类型()
 */
let view = UIView()
view.backgroundColor = UIColor.red

		