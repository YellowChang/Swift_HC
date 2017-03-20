//
//  HttpTools.swift
//  01-闭包的使用
//
//  Created by HuangChang on 17/3/20.
//  Copyright © 2017年 黄畅. All rights reserved.
//

import UIKit

class HttpTools {
    // 闭包类型 ：(_ 参数列表) -> (返回值类型)
    // Swift闭包的参数前面必须加_，能够使用下划线进行忽略默认外部參数名
    var finishedCallBack : ((_ jsonData : String) -> ())?
// @escaping ：逃逸的， 在Swift开发中，闭包不是该闭包里回调，而是在另一个闭包里回调就需要加@escaping关键字
    func loadData(finishedCallBack : @escaping ( _ jsonData : String) -> ()) {

        // 1.发送异步网络请求
        DispatchQueue.global().async {
            print("发送异步网络请求 : \(Thread.current)")
            
            // 2.回到主线程
            DispatchQueue.main.async {
                print("回到主线程 : \(Thread.current)")
            }
            
            // 3.进行回调
            self.finishedCallBack = finishedCallBack
            finishedCallBack("json数据")
            
        }
        
    }
}
