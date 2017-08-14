//: Playground - noun: a place where people can play

import UIKit

protocol Animal {
    var hitPoints: Int { get set }
}

extension Animal {
    mutating func takeHit(amount: Int) { hitPoints -= amount }
    func hitPointsRemaining() -> Int { return hitPoints }
    func isAlive() -> Bool { return hitPoints > 0 ? true : false }
}


protocol LandAnimal: Animal {
    var landAttack: Bool { get }
    var landMovement: Bool { get }
    func doLandAttack()
    func doLandMovement()
}

protocol SeaAnimal: Animal {
    var seaAttack: Bool { get }
    var seaMovement: Bool { get }
    func doSeaAttack()
    func doSeaMovement()
}

protocol AirAnimal: Animal {
    var airAttack: Bool { get }
    var airMovement: Bool { get }
    func doAirAttack()
    func doAirMovement()
}

struct Lion: LandAnimal {
    var hitPoints: Int = 20
    var landAttack: Bool = true
    var landMovement: Bool = true
    func doLandAttack() { print("Lion Attack") }
    func doLandMovement() { print("Lion Move") }
}

struct Alligator: LandAnimal, SeaAnimal {
    var hitPoints: Int = 35
    var landAttack: Bool = true
    var landMovement: Bool = true
    var seaAttack: Bool = true
    var seaMovement: Bool = true
    func doLandAttack() { print("Alligator Land Attack") }
    func doLandMovement() { print("Alligator Land Move") }
    func doSeaAttack() { print("Alligator Sea Attack") }
    func doSeaMovement() { print("Alligator Sea Move") }
    
}

var animals = [Animal]()

var an1 = Alligator()
var an2 = Alligator()
var an3 = Lion()

animals.append(an1)
animals.append(an2)
animals.append(an3)

for (index, animal) in animals.enumerated() {
    if let animal = animal as? AirAnimal {
        print("Animal at \(index) is Air")
        animal.doAirAttack()
    }
    
    if let animal = animal as? LandAnimal {
        print("Animal at \(index) is Land")
        animal.doLandAttack()
    }
    
    if let animal = animal as? SeaAnimal {
        print("Animal at \(index) is Sea")
        animal.doSeaAttack()
    }
}

for (index,animal) in animals.enumerated() where animal is SeaAnimal {
    print("Only Sea animal at \(index)")
}