//
//  main.swift
//  L02String
//
//  Created by 刘云龙 on 15/2/16.
//  Copyright (c) 2015年 刘云龙. All rights reserved.
//

import Foundation

print("Hello, World!")

let nickName: String? = nil
let fullName: String = "Gavin Liu"

let informal = "Hi \(nickName ?? fullName)"

print(informal)

let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
