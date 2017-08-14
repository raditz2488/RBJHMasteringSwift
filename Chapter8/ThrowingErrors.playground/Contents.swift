//: Playground - noun: a place where people can play

import UIKit

enum PlayerNumberError: Error {
    case NumberTooHigh(description: String)
    case NumberTooLow(description: String)
    case NumberAlreadyAssigned
    case NumberDoesNotExist
}

typealias BaseballPlayer = (firstName: String, lastName: String, number: Int)

struct BaseballTeam {
    var players = [Int: BaseballPlayer]()
    let maxNumber = 99
    let minNumber = 12
    mutating func addPlayer(player: BaseballPlayer) throws {
        guard player.number < maxNumber else {
            throw PlayerNumberError.NumberTooHigh(description: "Max number is \(maxNumber)")
        }
        
        guard player.number > minNumber else {
            throw PlayerNumberError.NumberTooLow(description: "Min number is \(minNumber)")
        }
        
        guard players[player.number] == nil else {
            throw PlayerNumberError.NumberAlreadyAssigned
        }
        
        players[player.number] = player
    }
    
    func getPlayerByNumber(number: Int) throws -> BaseballPlayer {
        if let player = players[number] {
            return player
        } else {
            throw PlayerNumberError.NumberDoesNotExist
        }
    }
}


var myTeam = BaseballTeam()

do {
    let player = try myTeam.getPlayerByNumber(number: 34)
    print("Player is \(player.firstName) \(player.lastName)")
} catch PlayerNumberError.NumberDoesNotExist {
    print("No player has that number")
}

do {
    try myTeam.addPlayer(player: ("David", "Ortiz", 34))
} catch PlayerNumberError.NumberTooHigh(let description) {
    print("Error: \(description)")
} catch PlayerNumberError.NumberTooLow(let description) {
    print("Error: \(description)")
} catch PlayerNumberError.NumberAlreadyAssigned {
    print("Error: Number already assigned")
} catch {
    print("Unknown Error")
}


func deferFunction() {
    print("Function started")
    var str: String?
    print("Defer block defined")
    defer {
        print("In defer block")
        if let str = str {
            print("str is \(str)")
        }
        print("Exiting defer block")
    }
    str = "Jon"
    print("Function ended")
}
print("---------------------------------")
print("Calling defer function")
deferFunction()
print("Defer function executed")
