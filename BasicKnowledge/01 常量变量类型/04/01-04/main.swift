//
//  main.swift
//  01-04
//
//  Created by carayfire－Develop on 16/1/25.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation

/*-----------1.使用Int自带的迭代器函数----------------------*/
//用stride(through: Int, by: Distance)方法获取的迭代器,Int--迭代到through该索引（包括该索引）,所以该数最大为要迭代的容器总元素个数-1，否则会越界崩溃;by--指每几个元素迭代一次;哪个数调用的该函数就从哪个索引开始迭代
let ge:StrideThrough = 0.stride(through: 3, by: 2)
//将该object的所有信息打印出来
/**
  ▿
- from: 0
- through: 2
- by: 1
*/
dump(ge)
var generator1 = ge.generate()
let xs = ["A", "B", "C","D"]
while let i = generator1.next() {
    /**
    Index 0 is A
    Index 2 is C
    */
    print("Index \(i) is \(xs[i])")
}
//用stride(to: Int, by: Distance)方法获取的迭代器,Int--迭代到to该索引（不包括该索引）,所以该数最大为要迭代的容器总元素个数，否则会越界崩溃,by-同上,哪个数调用的该函数就从哪个索引开始迭代
var generator2 = 1.stride(to: 3, by: 1).generate()
while let i = generator2.next(){
    /**
    Index 1 is B
    Index 2 is C
    */
    print("Index \(i) is \(xs[i])")
}



/*-----------2.自定义迭代器----------------------*/
/**
*  GeneratorType与SequenceType都绑定一个迭代器,都是一个协议
*/

//2.1.倒序的迭代器类型---GeneratorType
/*
protocol GeneratorType {
typealias Element
func next() -> Element?
}
*/
class ChutDownGenerator: GeneratorType {
    typealias Element = Int
    var element:Element
    //init<T>--指该类是一个协议
    init<T>(xs:[T]){
        self.element = xs.count - 1
    }
    func next() -> Element? {
        return self.element < 0 ? nil : self.element--
    }
}

 /*
 好处是啥，我的总结是把一个很抽象遍历模式使用Generators的方式剥离出来，当你对当前的迭代循环方式不爽的时候只需要修改一下当前的这个generator。更直观的“头疼医头，脚疼医脚”。
 */

let generator3 = ChutDownGenerator(xs: xs)
while let i = generator3.next(){
    /**
    Index 3 is D
    Index 2 is C
    Index 1 is B
    Index 0 is A
    */
    print("Index \(i) is \(xs[i])")
}

//2.2倒序的迭代器---SequenceType
/**
protocol SequenceType {
typealias Generator: GeneratorType
func generate() -> Generator
}
*/
struct ReverseSequence<T>:SequenceType {
    var array:[T]
    init(arr:[T]){
        self.array = arr
    }
    typealias Generator = ChutDownGenerator
    func generate() -> Generator {
        return ChutDownGenerator(xs: self.array)
    }
}
/**
*  不用每次进行Loop操作的时候都去生成一个新的generator，提升代码的统一性
*/
let generator4 = ReverseSequence(arr: xs).generate()
while let i = generator4.next(){
    /**
    Index 3 is D
    Index 2 is C
    Index 1 is B
    Index 0 is A
    */
    print("Index \(i) is \(xs[i])")
}
for i in ReverseSequence(arr: xs){
    /**
    Index 3 is D
    Index 2 is C
    Index 1 is B
    Index 0 is A
    */
    print("Index \(i) is \(xs[i])")
}




