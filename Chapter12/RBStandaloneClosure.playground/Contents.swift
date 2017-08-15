//: Playground - noun: a place where people can play

import UIKit

class Guests {
    var guestNames = ["Rohan", "Pranav", "Pratik", "Aarya", "Pradnya", "Vibha"]
    typealias UserArrayClosure = ([String]) -> Void
    func getGuest(handler:UserArrayClosure) {
        handler(guestNames)
    }
}

let guests = Guests()
var people = [String]()
guests.getGuest { (guestsArray) in
    people = guestsArray
}

print(people)