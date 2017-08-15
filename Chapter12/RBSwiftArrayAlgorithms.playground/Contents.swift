//: Playground - noun: a place where people can play

import UIKit

let guests = ["Rohan", "Pranav", "Vibha", "Aarya"]

guests.map({
    (name: String) -> Void in
    print("Hello \(name)")
})

print("--------------------------------------------")

guests.map({ print("Hello \($0)") })

print("--------------------------------------------")

var messages = guests.map({
    (name: String) -> String in
    return "Welcome \(name)"
})

for message in messages {
    print(message)
}

print("--------------------------------------------")

let greetGuest = {
    (name: String) -> Void in
    print("Hello guest named \(name)")
}

guests.map(greetGuest)

print("--------------------------------------------")
let sayGoodbye = {
    (name: String) -> Void in
    print("Goodbye \(name)")
}

guests.map(sayGoodbye)

print("--------------------------------------------")
let greetGuest2 = {
    (name: String) -> Void in
    if name.hasPrefix("R") {
        print("\(name) is on the guest list")
    } else {
        print("\(name) was not invited")
    }
}

print("--------------------------------------------")
func temperatures(calculate:(Int) -> Void) {
    var tempArray = [72,74,76,68,70,72,66]
    tempArray.map(calculate)
}

func testFunction() {
    var total = 0
    var count = 0
    let addTemps = {
        (num: Int) -> Void in
        total += num
        count += 1
    }
    temperatures(calculate: addTemps)
    print("Total: \(total)")
    print("Count: \(count)")
    print("Average: \(total/count)")
}

testFunction()