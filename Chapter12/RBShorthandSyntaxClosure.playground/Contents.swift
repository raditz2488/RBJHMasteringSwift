//: Playground - noun: a place where people can play

import UIKit

func testFunction(num: Int, handler:() -> Void) {
    for _ in 0..<num {
        handler()
    }
}

let clos = {
    () -> Void in
    print("Hello from standard syntax")
}
testFunction(num: 5, handler: clos)
print("------------------------------------------------------------------")
testFunction(num: 5, handler: { print("Hello from shorthand notation") })


func testFunction2(num: Int, handler:(String) -> Void) {
    for _ in 0..<num {
        handler("Me")
    }
}

print("------------------------------------------------------------------")
testFunction2(num: 5, handler: { print("Hello from \($0)") })

let clos5:(String, String) -> Void = {
    print("\($0) \($1)")
}

print("------------------------------------------------------------------")
clos5("Hello", "Pradnya")

//The closure created below is not valie syntactically
//let clos5b = {
//    (String, String) -> Void in
//    print("\($0) \($1)")
//}

let clos6: () -> () = {
    print("Howdy")
}
print("------------------------------------------------------------------")
clos6()

let clos7 = {
    (first: Int, second: Int) -> Int in
    first + second
}

let value = clos7(5, 4)
