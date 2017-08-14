//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let arrayOne = [1, 2, 3, 4, 5, 6] //Immutable array of Int
var arrayTwo = [4, 5, 6] //Mutable array of Int

var arrayThree = [Int]() //Empty mutable array which stores Int

var myArray : [Any] = [1, "Two"]

var arrayFour = [Int](repeating: 3, count: 7)

var multiArrayOne = [[1,2],[3,4],[5,6]]
var multiArrayTwo = [[Int]]()

print(arrayOne[0])
print(multiArrayOne[0][1])

print(arrayOne.count)
print(multiArrayOne.count)
print(multiArrayOne[0].count)

arrayOne.isEmpty
arrayThree.isEmpty

arrayTwo.append(7)
print(arrayTwo)

arrayTwo += [8, 9, 10]
print(arrayTwo)

arrayTwo.insert(3, at: 0)
print(arrayTwo)
arrayTwo.append(12)
arrayTwo.insert(11, at: 8)
arrayTwo[0] = 2
print(arrayTwo)

let valueAtLast = arrayTwo.removeLast()
print(arrayTwo, " ", valueAtLast)
let valueAt2 = arrayTwo.remove(at: 2)
print(arrayTwo, " ", valueAt2)

arrayTwo.removeAll()
print(arrayTwo)

var remainingElements = [7, 8, 9]
var combinedArray = arrayOne + remainingElements

combinedArray.reverse()
print(combinedArray)

let reversedArray = arrayOne.reversed()
print(reversedArray)

var subArray = arrayOne[2...4]
print(subArray)
subArray = arrayOne[2..<4]
print(subArray)

var someArray = [1,2,3,4,5,6,7,8]
someArray[1...3] = [12,13]
print(someArray)
someArray[1...2] = [2,3,4]
print(someArray)

var arrayToBeSorted = [9,3,6,2,8,5]
arrayToBeSorted.sort(){ $0 < $1 }
print(arrayToBeSorted)

var integerArray = [1,2,3,4,5,6,7,8,9]
let filtered = integerArray.filter{ $0 > 3 && $0 < 7 }
print(integerArray)
print(filtered)

var cities = ["Boston", "London", "Chicago", "Atlanta"]
let filteredCities = cities.filter{ $0.range(of: "o") != nil }
print(filteredCities)

var tensArray = [10,20,30,40]
let unitsArray = tensArray.map{ $0/10 }
print(unitsArray)

let stringNumbers = integerArray.map { "num:\($0)" }
print(stringNumbers)

integerArray.forEach{ print($0) }

for stringNumber in stringNumbers {
    print(stringNumber)
}

print(stringNumbers.enumerated())

for (index, value) in stringNumbers.enumerated() {
    print("At \(index) we have \(value)")
}