//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let teamOneScore = 7
let teamTwoScore = 6
if teamOneScore > teamTwoScore {
    print("Team One Won")
} else if teamTwoScore > teamOneScore {
    print("Team Two Won")
} else {
    print("We have a tie")
}

for index in 1...5 {
    print(index)
}

print("-------------------------")

for index in 1..<5 {
    print(index)
}
print("-------------------------")

var countries = ["USA", "UK", "IN"]
for item in countries {
    print(item)
}
print("-------------------------")

var dic = ["USA": "Unted States", "UK": "United Kingdom", "IN": "India"]

for (abbr,name) in dic {
    print("\(abbr) -- \(name)")
}
print("-------------------------")
var ran = 0
while ran < 4 {
    ran = Int(arc4random() % 5)
    print(ran)
}

print("-------------------------")
var random2 : Int
repeat {
    random2 = Int(arc4random() % 5)
    print(random2)
} while random2 > 4

print("-------------------------")

var speed = 300000000
switch speed {
case 300000000:
    print("Speed of light")
    
case 340:
    print("Speed of sound")
    
default:
    print("Unknown speed")
}

print("-------------------------")
var char : Character = "e"
var conson : Character = "b"
var unknownchar : Character = "ä"

switch unknownchar {
case "a","e","i","o","u":
    print("Letter is a vowel")
    
case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z":
    print("Letter is a consonant")
    
default:
    print("Unknown Letter")
}

print("-------------------------")
var studentID = 4
var grade = 57
switch grade {
case 90...100:
    print("Grade is an A")
    
case 80...89:
    print("Grade is a B")
    
case 70...79:
    print("Grade is a C")
    
case 55...69 where studentID == 4:
    print("Grade is a D")
    
case 60...69:
    print("Grade is a D")
    
case 0...59:
    print("Grade is a F")
    
default:
    print("Unknown Grade")
}

print("-------------------------")
enum Product {
    case Book(String, Double, Int)
    case Puzzle(String, Double)
}

var order = Product.Book("Mastering Swift 3", 49.99, 2016)

switch order {
case .Book(let name, let price, let year):
    print("You ordered the book \(name) for \(price)")
    
case .Puzzle(let name, let price):
    print("You ordered the puzzle \(name) for \(price)")
}

print("-------------------------")
for number in 1...30 {
    if number % 2 == 0 {
        print(number)
    }
}

print("-------------------------")
for number in 1...30 where number % 2 == 0 {
    print(number)
}

print("-------------------------")
var worldSeriesWinners = [
("Red Sox", 2004),
("White Sox", 2005),
("Cardinals", 2006),
("Red Sox", 2007),
("Phillies", 2008),
("Yankees", 2009),
("Giants", 2010)]

for case let ("Red Sox", year) in worldSeriesWinners {
    print(year)
}

print("-------------------------")
let myNumbers : [Int?] = [1, 2, nil, 4, 5, nil, 7]
for case let .some(num) in myNumbers {
    print(num)
}
print("-------------------------")
for case let num? in myNumbers where num > 3 {
    print(num)
}

enum Identifier {
    case Name(String)
    case Number(Int)
    case NoIdentifier
}
print("-------------------------")
var playerIdentifier = Identifier.Number(2)

if case let .Number(num) = playerIdentifier {
    print("Player's number is \(num)")
}

print("-------------------------")

if case let .Number(num) =  playerIdentifier, num == 2 {
    print("Player's number is \(num)")
}
print("-------------------------")
for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    
    print(i)
}

print("-------------------------")
for i in 1...10 {
    if i % 2 == 0{
        break
    }
    print(i)
}

print("-------------------------")
var name = "John"
var sport = "Baseball"
switch sport {
case "Baseball":
    print("\(name) plays Baseball")
    fallthrough
case "Basketball":
    print("\(name) plays Basketball")
    fallthrough
    
default:
    print("Unknown sport")
}
