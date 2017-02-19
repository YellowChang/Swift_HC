//
//  main.swift
//  03
//
//  Created by carayfire－Develop on 16/2/22.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
//当闭包捕获自身引用，并且同时销毁的时候，就会导致循环引用。
class BlockClass{
    let blockName: String
    let bValue: String?
    //惰性初始化，就是在变量第一次使用的时候才进行初始化。
    lazy var CustomBlock: () -> String = {
//        //此处在闭包中使用了自身的引用，自己持有自己，产生循环引用
//        if let text = self.bValue{
//            return "\(text)--\(self.bValue)"
//        }else{
//            return "text is nil"
//        }
        [unowned self] in
        if let text = self.bValue{
            return "\(text)--\(self.bValue)"
        }else{
            return "text is nil"
        }
    }
    init(blockName: String,bValue: String?){
        self.blockName = blockName
        self.bValue = bValue
        print("init")
    }
    deinit{
        print("deinit")
    }
}

var blockClass: BlockClass? = BlockClass(blockName: "BlockClass", bValue:nil)
print(blockClass!.CustomBlock())
blockClass = nil  //设置为nil后观察deinit方法是否调用，如果没调用，表示实例没有被释放






