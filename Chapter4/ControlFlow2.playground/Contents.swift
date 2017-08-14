//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func guardFunction(str: String?) {
    guard let goodStr = str else {
        print("Input was nil")
        return
    }
    
    print("Input was \(goodStr)")
}

print("-------------------------")
func sayHello(name: String) -> Void {
    let retString = "Hello " + name
    print(retString)
}
sayHello(name: "Pranav")
print("-------------------------")

func sayHello2(name: String) -> String {
    let retString = "Hello " + name
    return retString
}

var message = sayHello2(name: "Rohan")
print(message)
print("-------------------------")
func sayHello(name: String, greeting: String) {
    print("\(greeting) \(name)")
}
sayHello(name: "Jon", greeting: "Bonjour")
print("-------------------------")
func sayHello3(name: String, greeting: String = "Bonjour") {
    print("\(greeting) \(name)")
}
sayHello3(name: "Rohan")
sayHello3(name: "Pranav", greeting: "Hello")

print("-------------------------")
func sayHello4(name: String, name2: String = "Kim", greeting: String = "Bonjour") {
    print("\(greeting) \(name) and \(name2)")
}

sayHello4(name: "Jon", greeting: "Hello")
print("-------------------------")

func getNames() -> [String] {
    var retArray = ["Jon", "Kim", "Kailey", "Kara"]
    return retArray
}

var names = getNames()

print("-------------------------")
func getTeam() -> (team: String, wins: Int, percent: Double) {
    let retTuple = ("Red Sox", 99, 0.611)
    return retTuple
}

var t = getTeam()
print("\(t.team) had \(t.wins) wins")

print("-------------------------")
func winPercentage(team: String, win: Int, losses: Int) -> Double {
    return Double(win) / Double(losses + win)
}

print(winPercentage(team: "Red Sox", win: 99, losses: 60))

print("-------------------------")
func winPercentage(BasketballTeam team:String, withWins win: Int, andLossess loss: Int) -> Double {
    return Double(win) / Double(win + loss)
}

winPercentage(BasketballTeam: "Red Sox", withWins: 99, andLossess: 60)

print("-------------------------")
func sayHello5(greeting: String, names: String...) {
    for name in names {
        print("\(greeting) \(name)")
    }
}

sayHello5(greeting: "Hello", names: "Jon", "Kim")
print("-------------------------")

func sayHello6(names: String..., greeting: String) {
    for name in names {
        print(name)
    }
}

sayHello6(names: "Rohan","Pranav", greeting: "Hello")

print("-------------------------")
func reverse(first: inout String, second: inout String) {
    let tmp = first
    first = second
    second = tmp
}

var one = "One"
var two = "Two"
reverse(first: &one, second: &two)
print("one:\(one), two:\(two)")


print("-------------------------")

func sort(numbers: inout [Int]) {
    func reverse(first: inout Int, second: inout Int) {
        let tmp = first
        first = second
        second = tmp
    }
    
    var count = numbers.count
    while count > 0 {
        for var i in 1..<count {
            if numbers[i] < numbers[i - 1] {
                reverse(first: &numbers[i], second: &numbers[i - 1])
            }
        }
        count -= 1
    }
}
print("-------------------------")
var nums : [Int] = [6,2,5,3,1]
sort(numbers: &nums)

for value in nums {
    print("--\(value)")
}

print("-------------------------")
print("-------------------------")
print("-------------------------")
func isValidIp(ipAddr: String?) -> Bool {
    guard let ipAddr = ipAddr else {
        return false
    }
    
    let octets = ipAddr.characters.split{ $0 == "." }.map{ String($0) }
    guard octets.count == 4 else {
        return false
    }
    
    func validOctet(octet : String) -> Bool {
        guard let num = Int(octet), num >= 0 && num < 256 else {
            return false
        }
        return true
    }
    
    for octet in octets {
        guard validOctet(octet: octet) else {
            return false
        }
    }
    return true
}



func giveArrayBack(myArray:[Int]) -> [Int] {
    _ = myArray + [5,6,7]
    return myArray
}

let arrayOfInts = [1,2,3,4];
let returnedArray = giveArrayBack(myArray: arrayOfInts)
arrayOfInts == returnedArray




