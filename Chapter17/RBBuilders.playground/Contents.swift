//: Playground - noun: a place where people can play

import UIKit

protocol BurgerBuilder {
    var name: String { get }
    var patties: Int { get }
    var bacon: Bool { get }
    var cheese: Bool { get }
    var pickles: Bool { get }
    var ketchup: Bool { get }
    var mustard: Bool { get }
    var lettuce: Bool { get }
    var tomato: Bool { get }
}

struct HamburgerBuilder: BurgerBuilder {
    let name = "Burger"
    let patties = 1
    let bacon = false
    let cheese = false
    let pickles = true
    let ketchup = true
    let mustard = true
    let lettuce = false
    let tomato = false
}

struct CheeseBurgerBuilder: BurgerBuilder {
    let name = "Cheese"
    let patties = 1
    let bacon = false
    let cheese = true
    let pickles = true
    let ketchup = true
    let mustard = true
    let lettuce = false
    let tomato = false
}

struct Burger {
    var name: String
    var patties: Int
    var bacon: Bool
    var cheese: Bool
    var pickles: Bool
    var ketchup: Bool
    var mustard: Bool
    var lettuce: Bool
    var tomato: Bool
    
    init(withBuilder builder: BurgerBuilder) {
        self.name = builder.name
        self.patties = builder.patties
        self.bacon = builder.bacon
        self.cheese = builder.cheese
        self.pickles = builder.pickles
        self.ketchup = builder.ketchup
        self.mustard = builder.mustard
        self.lettuce = builder.lettuce
        self.tomato = builder.tomato
    }
    
    func showBurger() {
        print("Name: \(name)")
        print("Patties: \(patties)")
        print("Bacon: \(bacon)")
        print("Cheese: \(cheese)")
        print("Pickles: \(pickles)")
        print("Ketchup: \(ketchup)")
        print("Mustard: \(mustard)")
        print("Lettuce: \(lettuce)")
        print("Tomato: \(tomato)")
    }
}

//Create Hambruger
var myBurger = Burger(withBuilder: HamburgerBuilder())
myBurger.showBurger()
var myCheeseBurgerBuilder = CheeseBurgerBuilder()
var myCheeseBurger = Burger(withBuilder: myCheeseBurgerBuilder)
myCheeseBurger.tomato = false
myCheeseBurger.showBurger()