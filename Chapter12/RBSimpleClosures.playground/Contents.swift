//: Playground - noun: a place where people can play

import UIKit

let clos1 = {
    () -> Void in
    print("Hello World")
}

clos1()

let clos2 = {
    (name: String) -> Void in
    print("Hello \(name)")
}

clos2("Rohan")

//function accepting closure in parameters
func testClosure(handler:(String) -> Void) {
    handler("Dasher")
}

testClosure(handler: clos2)

let clos3 = {
    (name: String) -> String in
    return "Hello \(name)"
}

var message = clos3("Pranav")