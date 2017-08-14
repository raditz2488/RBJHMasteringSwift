//: Playground - noun: a place where people can play

import UIKit

func winPercentage(_ team: String, wins: Int, loses: Int) -> Double {
    return Double(wins) / Double(wins + loses)
}

func sayHello(greeting: String, names: String...) {
    for name in names {
        print(greeting,name)
    }
}

sayHello(greeting: "Bonjour", names: "Rohan", "Pranav")


func reverse(first: inout String, second : inout String) {
    let temp = first
    first = second
    second = temp
}


var one = "One"
var two = "Two"
reverse(first: &one, second: &two)
print(one)
print(two)
