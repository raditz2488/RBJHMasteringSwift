
//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let swiftIsCool = true
let swiftIsHard = false

var isSwiftCool = true
var isItRaining = false

if isSwiftCool {
    print("Yea, I cannot wait to learn it")
}

if isItRaining {
    print("Get a rain coat")
}

var stringOne = "Hello"
var stringTwo = "World"

for char in stringOne.characters {
    print(char)
}

var stringThree = stringOne + stringTwo //New string is created here
stringOne += stringTwo // String one is mutated here
print(stringOne)
var stringFour = "Hello \(stringTwo)"

//Mutable and immutable strings
var x = "Hello"
let y = "Hi"
var z = "World"

//This is valid, x is mutable
x += z

//This is invalid, y is not mutable
//y += z

print("Lowercase String: " + x.lowercased())
print("Uppercase String: " + x.uppercased())

var helloSwift = "Hello Swift"
var emptyString = ""
helloSwift.isEmpty
emptyString.isEmpty
helloSwift == "Hello swift"
helloSwift == "Hello Swift"
helloSwift.hasPrefix("Hello")
helloSwift.hasSuffix("Hello")

var numberStrings = "one,to,three,four"
print(numberStrings.replacingOccurrences(of: "to", with: "two"))
print(numberStrings)

var path = "/one/two/three/four"
//Create start and end indexes
let startIndex = path.index(path.startIndex, offsetBy: 4)
let endIndex = path.index(path.startIndex, offsetBy: 14)

let myRange = startIndex..<endIndex

path.substring(with: myRange)

path.substring(to: startIndex)
path.substring(from: endIndex)

path.characters.last
path.characters.first

path.characters.count

//Optional and non optional variables/constants
//Optional variable
var optString : String?
//Non optional variable
var nonOptString : String

optString = nil
//The code below gives compile time error as we cannot assign nil to nonoptional var
//nonOptString = nil

var nonOpt2UnInitialized : String
//print(nonOpt2UnInitialized) // This will give compile time error as we are using non optional variable without providing any value

var name : String?
name = "John"

if name != nil {
    print("Hello, \(name!)")
}

var myOptional : String?
if let temp = myOptional {
    print(temp)
    print("Cannot use temp outside of the if block")
} else {
    print("myOptional was nil")
}

enum  Planets : Int {
    case Mercury = 1
    case Venus
    case Earth
    case Mars
    case Jupiter
    case Saturn
    case  Uranus
    case Neptune
}

print("Earth is planet number \(Planets.Earth.rawValue)")


var planetWeLiveOn = Planets.Earth
var furthestPlanet = Planets.Neptune

planetWeLiveOn = .Mars

if planetWeLiveOn == .Earth {
    print("Earth it is")
}

switch planetWeLiveOn {
case .Mercury:
    print("We live on Mercury, it is very hot!!")

case .Venus:
    print("We live on Venus, it is very hot!")
    
case .Earth:
    print("We live on Earth, just right")
    
case .Mars:
    print("We live on Mars, a little cold")

default:
    print("Where do we live?")
}

//Raw values and Raw types with enum
enum Devices : String {
    case MusicPlayer = "iPod"
    case Phone = "iPhone"
    case Tablet = "iPad"
}

print("We are using an " + Devices.Tablet.rawValue)

// Associated values with enums
enum Product {
    case Book(cost: Double, year : Int, pages : Int)
    case Puzzle(cost: Double, pieces: Int)
}

var masteringSwift = Product.Book(cost: 49.99, year: 2016, pages: 310)
var worldPuzzle = Product.Puzzle(cost: 9.99, pieces: 200)

switch masteringSwift {
case .Book(let price, let year, let pages):
    print("Mastering Swift was published in \(year) for the price of \(price) and has \(pages) pages")
case .Puzzle(let cost, let pieces):
    print("World Puzzle is a puzzle with \(pieces) pieces and sells for \(cost)")
}

switch worldPuzzle {
case .Book(let price, let year, let pages):
    print("Mastering Swift was published in \(year) for the price of \(price) and has \(pages) pages")
case .Puzzle(let cost, let pieces):
    print("World Puzzle is a puzzle with \(pieces) pieces and sells for \(cost)")
}

