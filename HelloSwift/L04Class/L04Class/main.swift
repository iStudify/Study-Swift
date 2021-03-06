//
//  main.swift
//  L04Class
//
//  Created by 刘云龙 on 15/12/18.
//  Copyright © 2015年 刘云龙. All rights reserved.
//

import Foundation

print("Hello, World!")


func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet(person: "Gavin", day: "Sunday"))

func greet2(person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet2(person:"Gavin", on: "Monday"))

func calculateStatic(sources: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = sources[0]
    var max = sources[0]
    var sum = 0
    
    for source in sources {
        if source < min {
            min = source
        } else if source > max {
            max = source
        }
        
        sum += source
    }
    
    return (min, max, sum)
}

let someSources = [3, 5, 6]

print(calculateStatic(sources: someSources))

print(type(of: calculateStatic(sources: someSources)))

// 函数返回另一个函数
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))


// 函数作为参数
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

let x = numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
print(x)

let y = numbers.map({ number in 2 * number })
print(y)

var shape = Shape(name: "circle")
shape.numberOfSides = 20
print(shape.simpleDescription())

var rect = RectShape(length: 10, name: "Rect")
print(rect.simpleDescription())

print(rect.size)
rect.size = 64
print(rect.length)

