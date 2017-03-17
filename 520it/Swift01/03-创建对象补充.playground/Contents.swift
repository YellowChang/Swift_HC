//: Playground - noun: a place where people can play

import UIKit

// 需求: 创建UIView对象。并添加UIButton对象

// 1.创建UIView对象
// OC : [[UIView alloc] initWithFrame: ];
let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
let view = UIView(frame: rect)
view.backgroundColor = UIColor.red

// 2.创建UIButton对象
let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
btn.backgroundColor = UIColor.orange

// 3.设置btn的文字
// Swift枚举类型：
// 方式一： 可以通过上下文推断出该枚举的类型可以直接 .具体类型
// 方式二： 不可以通过上下文推断出该枚举的类型, 枚举类型.具体类型
btn.setTitle("按钮", for: .normal)
btn.setTitle("按钮", for: UIControlState.normal)


// 4.添加button到View上
// 在swift中调用方法，统一使用 .点语法
view.addSubview(btn)


