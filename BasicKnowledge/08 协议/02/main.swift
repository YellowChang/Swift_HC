//
//  main.swift
//  02
//
//  Created by carayfire－Develop on 16/2/20.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
//定义一个协议，要求遵循者实现certificate()方法
@objc protocol CertificateProtocol{
    func certificate() -> String
    optional func optionalful()
}

class CertificateClass: CertificateProtocol{
    var publickey:String = "UUID:"
    var privatekey = "ED4FRDT"
    @objc func certificate() -> String{
        return publickey + privatekey
    }
}

let certificate = CertificateClass()
print(certificate.certificate())

//在方法或者函数内部改变实例类型的方法称为突变方法
//在值类型中的函数前缀加上mutating关键字表示该函数允许改变实例和其属性的类型
//注意： mutating关键字只用于结构体和枚举
protocol MutatingProtocol {
    mutating func turn()
}

enum LightState: MutatingProtocol{
    case off,on
    mutating func turn() {
        switch self{
        case on:
            self = off
        case off:
            self = on
        }
    }
}
/*
off
on
*/
var light = LightState.off
print(light)
light.turn()
print(light)


// 把协议作为类型使用
protocol RandomNumberGenerator{
    func random() -> Double
}


//线性同余生成器---蒙特卡罗算法
class LinearCongruentialGenerator: RandomNumberGenerator{
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom / m
    }
}

class Dice {
    let slide: Int
    let generator: RandomNumberGenerator //代理对象
    init(slide: Int, generator:RandomNumberGenerator){
        self.slide = slide
        self.generator = generator
    }
    func roll() -> Int{
        return Int(generator.random() * Double(slide)) + 1
    }
}

var dice = Dice(slide: 10, generator: LinearCongruentialGenerator())
for _ in 1...100{
    print(dice.roll())
}















