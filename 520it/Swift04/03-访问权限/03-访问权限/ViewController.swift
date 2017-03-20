//
//  ViewController.swift
//  03-访问权限
//
//  Created by HuangChang on 17/3/20.
//  Copyright © 2017年 黄畅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
     1> internal : 内部的 
         a. 默认情况下属性&函数&类的访问权限都是internal
         b. 在本模块(项目/包/target)中可以访问
     2> private : 私有的
         a. 只有在本类中可以使用
     3> open : 公开的
         a. 可以跨模块(项目/包/target)中访问
     4> fileprivate ： Swift3.0
         a. 只要是在本文件中都是可以进行访问的
     */
    var name : String = ""
    private var age : Int = 10
    fileprivate var height : Double = 1.6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = "hc"
        age = 20
        height = 1.61
        
        // 可以跨模块访问：UIView这个类使用open修饰，backgroundColor属性也是open修饰的
        let view = UIView()
        view.backgroundColor = UIColor.brown
    }
}

class Person {
    func test() {
        let vc = ViewController()
        vc.name = "hc..."
//        vc.age  --无法访问
        vc.height = 1.62
    }
}

















