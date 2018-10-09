//
//  Shape.swift
//  L04Class
//
//  Created by Gavin on 2018/10/9.
//  Copyright © 2018 刘云龙. All rights reserved.
//

import Foundation

class Shape {
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A \(name) with \(numberOfSides) sides."
    }
    
}

class RectShape: Shape {
    
    var length: Int = 0
    
    var size: Int {
        get {
            return length * length
        }
        
        set {
            length = Int(sqrt(Double(newValue)))
        }
    }
    
    init(length:Int, name: String) {
        super.init(name: name)
        self.length = length
    }
    
    override func simpleDescription() -> String {
        return "a rect length: \(length)."
    }
    
}
