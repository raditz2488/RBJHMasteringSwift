//: Playground - noun: a place where people can play

import UIKit

func swapInts(a: inout Int, b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}

func swapDoubles(a: inout Double, b: inout Double) {
    let tmp = a
    a = b
    b = tmp
}

func swapStrings(a: inout String, b: inout String) {
    let tmp = a
    a = b
    b = tmp
}

var aInt = 3
var bInt = 5

var aDouble = 3.0
var bDouble = 5.0

var aString = "Three"
var bString = "Five"

swapInts(a: &aInt, b: &bInt)
print("aInt:",aInt, "bInt:",bInt)

swapDoubles(a: &aDouble, b: &bDouble)
print("aDouble:",aDouble, "bDouble:",bDouble)

swapStrings(a: &aString, b: &bString)
print("aString:",aString, "bString:",bString)

func swapGeneric<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}
print("----------Using generic function---------")
swapGeneric(a: &aInt, b: &bInt)
print("aInt:",aInt, "bInt:",bInt)

swapGeneric(a: &aDouble, b: &bDouble)
print("aDouble:",aDouble, "bDouble:",bDouble)

swapGeneric(a: &aString, b: &bString)
print("aString:",aString, "bString:",bString)


func testGeneric<T,E>(a:T, b:E) {
    print("\(a) is not \(b)")
}

testGeneric(a: 3, b: "Three")

func testGenericComparable<T:Comparable>(a:T, b:T) -> Bool {
    return a == b
}

class List<T> {
    var items = [T]()
    
    func add(item:T) {
        items.append(item)
    }
    
    func getItem(at index: Int) -> T? {
        if items.count > index {
            return items[index]
        } else {
            return nil
        }
    }
}

var list = List<String>()
list.add(item: "Hello")
list.add(item: "World")
print(list.getItem(at: 1))

protocol QueueProtocol {
    associatedtype QueueType
    mutating func add(item:QueueType)
    mutating func getItem() -> QueueType?
    func count() -> Int
}

class IntQueue: QueueProtocol {
    var items = [Int]()
    
    func add(item: Int) {
        items.append(item)
    }
    
    func getItem() -> Int? {
        if items.count > 0 {
            return items.remove(at: 0)
        } else {
            return nil
        }
    }
    
    func count() -> Int {
        return items.count
    }
}

var intQ = IntQueue()
intQ.add(item: 2)
intQ.add(item: 4)
print(intQ.getItem())
intQ.add(item: 6)

class GenericQueue<T>: QueueProtocol {
    var items = [T]()
    
    func add(item: T) {
        items.append(item)
    }
    
    func getItem() -> T? {
        if items.count > 0 {
            return items.remove(at: 0)
        } else {
            return nil
        }
    }
    
    func count() -> Int {
        return items.count
    }
}
