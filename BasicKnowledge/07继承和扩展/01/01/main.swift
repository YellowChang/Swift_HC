//
//  main.swift
//  01
//
//  Created by carayfire－Develop on 16/1/21.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
//父类
class Base{
    var baseName:String
    var baseTag:Int
    func getBaseName() ->String{
        return baseName
    }
    //初始化方法一定要写的，否则会报错
    init(){
        baseName = "颖宝~"
        baseTag = 0
    }
}

//子类
class SubBase:Base{
    //重写属性--必须有override，否则报错
    override var baseName:String{
        get{
            return super.baseName + "SubBBBB"
        }
        set{
            super.baseName = newValue
        }
    }
    //重写方法--必须有override，否则报错
    override func getBaseName() -> String {
        //不能self.getBaseName()--否则会崩溃
        return super.getBaseName() + "Sub"
    }
}

//简单类的使用
var base = Base()
/**
 *  baseName---颖宝~,baseTag---0,GetBaseName---颖宝~
 *  baseName---颖宝~SubBBBB,baseTag---0,GetBaseName---颖宝~SubBBBBSub
 */
print("baseName---\(base.baseName),baseTag---\(base.baseTag),GetBaseName---\(base.getBaseName())")
var subBase = SubBase()
print("baseName---\(subBase.baseName),baseTag---\(subBase.baseTag),GetBaseName---\(subBase.getBaseName())")

base.baseName = "G.E.M"
base.baseTag = 1
/**
 * baseName---G.E.M,baseTag---1,GetBaseName---G.E.M
 * baseName---颖宝~SubBBBB,baseTag---0,GetBaseName---颖宝~SubBBBBSub
 */
print("baseName---\(base.baseName),baseTag---\(base.baseTag),GetBaseName---\(base.getBaseName())")
print("baseName---\(subBase.baseName),baseTag---\(subBase.baseTag),GetBaseName---\(subBase.getBaseName())")

subBase.baseName = "孙燕姿"
subBase.baseTag = 2
/**
 *  baseName---G.E.M,baseTag---1,GetBaseName---G.E.M
 *  baseName---孙燕姿SubBBBB,baseTag---2,GetBaseName---孙燕姿SubBBBBSub
 */
print("baseName---\(base.baseName),baseTag---\(base.baseTag),GetBaseName---\(base.getBaseName())")
print("baseName---\(subBase.baseName),baseTag---\(subBase.baseTag),GetBaseName---\(subBase.getBaseName())")











