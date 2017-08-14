//: Playground - noun: a place where people can play

import UIKit

var countries = ["US":"UnitedStates", "IN":"India", "UK":"United Kingdom"]
var name = countries["US"]
print(name)
var cnt = countries.count
var empty = countries.isEmpty
print(empty)


countries["UK"] = "Great Britain"
print(countries)
var orig = countries.updateValue("Britain", forKey: "UK")
print(orig!, " is now ",countries["UK"]!)

countries["FR"] = "France"
orig = countries.updateValue("Germany", forKey:"DE")
print(countries)

countries["US"] = nil
print(countries)

countries.removeValue(forKey: "UK")
print(countries)

countries.removeAll()
print(countries)
