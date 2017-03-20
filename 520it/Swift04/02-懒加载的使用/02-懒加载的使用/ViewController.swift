//
//  ViewController.swift
//  02-懒加载的使用
//
//  Created by HuangChang on 17/3/20.
//  Copyright © 2017年 黄畅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /*
     懒加载：
     1> 在真正使用时再创建放在内存中，多次使用只会加载一次
     2> Swift使用关键字lazy，OC是重写set方法
     */
    
    // 1.懒加载属性
    lazy var names : [String] = {
        let names = ["1"]
        print("----names----")
        return names
    }()
    
    // 2.懒加载控件
    lazy var btn : UIButton = {
        let btn = UIButton()
        btn.setTitle("btn", for: .normal)
        btn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        print("----btn----")
        return btn
    }()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(names,btn)
    }
}

