//
//  main.swift
//  L03ControlFlow
//
//  Created by 刘云龙 on 15/2/16.
//  Copyright (c) 2015年 刘云龙. All rights reserved.
//

import Foundation

let scores = [70, 20, 40, 33, 100]


var teamScore = 0
for score in scores {
    if score > 50 {
        teamScore += 3;
    } else {
        teamScore += 1;
    }
}

print(teamScore)

var optionalName: String? = "Gavin Liu"
var greeting = "Hello!"
if let name =  optionalName {
    greeting = "Hello, \(name)"
}

print(greeting)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)


for i in 0..<4 {
    print(i)
}
