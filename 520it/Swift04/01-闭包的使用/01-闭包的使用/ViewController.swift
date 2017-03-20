//
//  ViewController.swift
//  01-闭包的使用
//
//  Created by HuangChang on 17/3/19.
//  Copyright © 2017年 黄畅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var httpTools : HttpTools?
    
    // 在Siwft开发中，开发者自己创建的类使用时不需要导入
    // 在Swift开发中，只有对父类的方法进行重新，必须在该方法前加override
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        httpTools = HttpTools()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("----------")
        // 解决循环引用方案一：
//        // weak的特点--当对象销毁时，将对象指向nil,所以weak修饰的对象必须是可选类型
//        weak var weakSelf : ViewController? = self
//        /*
//         self.一般是可以省略，以下情况不可以省略
//         1> 有局部变量名与此相同
//         2> 闭包中使用
//         */
//        httpTools?.loadData(finishedCallBack: { (jsondata) in
//            print("通过回调获取数据 ：\(jsondata)")
//            weakSelf?.view.backgroundColor = UIColor.red
//        })
        
//        // 解决循环引用方案二：方案一的简便方法
//        httpTools?.loadData(finishedCallBack: {[weak self] (jsondata) in
//            print("通过回调获取数据 ：\(jsondata)")
//            self?.view.backgroundColor = UIColor.red
//        })
        
        // 解决循环引用方案三
        // unowned --> OC 中的unsafe_unretained(对象销毁时会有野指针)
        httpTools?.loadData(finishedCallBack: {[unowned self] (jsondata) in
                print("通过回调获取数据 ：\(jsondata)")
                self.view.backgroundColor = UIColor.red
            })
    }

    deinit {
        print("ViewController dead")
    }
}

