//: Playground - noun: a place where people can play

import UIKit

protocol FullName {
    var firstName: String { get set }
    var lastName: String { get set }
    func getFullName() -> String
}

class Scientist : FullName {
    var firstName: String = ""
    var lastName: String = ""
    var field = ""
    
    func getFullName() -> String {
        return "\(firstName) \(lastName) studies \(field)"
    }
}


struct FootballPlayer: FullName {
    var firstName: String = ""
    var lastName: String = ""
    var number = 0
    
    func getFullName() -> String {
        return "\(firstName) \(lastName) has the number \(number)"
    }
}

var scientist = Scientist()
scientist.firstName = "Rohan"
scientist.lastName = "Bhale"
scientist.field = "Javascript"

var player = FootballPlayer()
player.firstName = "Pranav"
player.lastName = "Bhale"
player.number = 9


var person: FullName
person = scientist
print("\(scientist.getFullName())")
person = player
print("\(person.getFullName())")
