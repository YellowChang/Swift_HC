//: Playground - noun: a place where people can play

import UIKit
/*
 OC中while循环
     int a = 0
     while (0 < 10){
         a++
     }
     while (a){
     }
 Swift中while循环和OC的区别:
     1> while循环后面的()可以省略
     2> 没有非0(nil)即真 Bool(true/false)
 */

var m = 0
while m < 10 {
//    m++  注意Swift3之后++和--都舍弃
    m += 1
    print(m)
}

/*
 OC中do..while循环
     do {
         m-=1
     }while m > 0
 */
repeat {
    m-=1
    print(m)
}while m > 0











