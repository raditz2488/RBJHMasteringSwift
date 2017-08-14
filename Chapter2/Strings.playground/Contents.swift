//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var stringOne = "Hello World"
var stringTwo = ""
var thirdString = "Rohan says Hello World"

stringOne.isEmpty

stringTwo.isEmpty

stringOne.hasPrefix("Hello")
thirdString.hasPrefix("Hello")
let startIndex = thirdString.index(thirdString.startIndex, offsetBy: 0)
print(startIndex)


let myString: String? = "MyString"
let isTrue = false
if let myString = myString, isTrue == true {
    print(myString, "isTrue")
}else {
    print(myString, "isNotTrue")
}


var x = 10.truncatingRemainder(dividingBy:2.6)
