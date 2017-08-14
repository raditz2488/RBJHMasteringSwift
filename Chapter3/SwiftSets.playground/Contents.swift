//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var mySet = Set<String>()

mySet.insert("four")
mySet.insert("five")
mySet.insert("six")
print("\(mySet.count) items")

mySet.contains("six")
mySet.contains("Six")
mySet.contains("one")

for item in mySet {
    print(item)
}

var item = mySet.remove("four")
print(item)
item = mySet.remove("one")
print(item)
print(mySet)
mySet.removeAll()
print(mySet)


var mySet1 = Set(["One", "Two", "Three", "abc"])
var mySet2 = Set(["abc","def","ghi","One"])
var newSetUnion = mySet1.union(mySet2) //Creates a new set
print(newSetUnion)
print(mySet1)
mySet1.formUnion(mySet2) // This union is in place withing mySet1
print(mySet1)

var newSetSubstract = mySet1.subtracting(mySet2)
print(mySet1, " - ",mySet2, " = " ,newSetSubstract)
mySet1.subtract(mySet2)
print(mySet1)


mySet1.insert("One")
print(mySet1)
mySet1.insert("abc")
print(mySet1)

var newSetIntersect = mySet1.intersection(mySet2)
print(newSetIntersect)

mySet1.formIntersection(mySet2)
print(mySet1)

mySet1.insert("Two")
mySet1.insert("Three")

print(mySet1)

var newSetExclusiveOr = mySet1.symmetricDifference(mySet2)
print(newSetExclusiveOr)

mySet1.formSymmetricDifference(mySet2)
print(mySet1)


