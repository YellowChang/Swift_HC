//: Playground - noun: a place where people can play

import UIKit

/*
 OC的for循环
     for(int i = 0; i < 10; i++){
         NSLog(@"%d",i);
     }
 */

/*
  Swift2.0+写法
     for(var i = 0; i < 10; i++){
         print(i);
     }
 */

// Swift中循环使用只支持区间遍历 0..<10 0...9
for i in 0..<10{
    print(i)
}
for i in 0...10{
    print(i)
}

// 打印10次Helloworld
// 在Swift开发中，如果一个变量/常量不使用就可以用_来代替，以节省内存
for _ in 0...9{
    print("Helloworld")
}




