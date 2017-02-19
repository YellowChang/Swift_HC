
//
//  Base.swift
//  06-01
//
//  Created by carayfire－Develop on 16/1/13.
//  Copyright © 2016年 Huangchang. All rights reserved.
//

import Foundation
class Base: NSObject {
    
    var name:String?
    
    init(name:String) {
        self.name = name
    }
    
    deinit{
       print("Base--deinit")
    }
}