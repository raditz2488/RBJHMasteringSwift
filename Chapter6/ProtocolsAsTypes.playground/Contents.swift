//: Playground - noun: a place where people can play

import UIKit

protocol PersonProtocol {
    var firstName: String { get set }
    var lastName: String { get set }
    var birthDate: NSDate { get set }
    var profession: String { get }
    init(firstName: String, lastName: String, birthDate: NSDate)
}


func updatePerson(person: PersonProtocol) -> PersonProtocol {
    //Code to update person goes here
    return person
}