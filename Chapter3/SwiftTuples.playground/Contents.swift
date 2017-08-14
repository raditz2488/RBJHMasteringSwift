//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var team = ("Boston", "Red Sox", 97, 65, 59.9)
var (city, name, wins, loses, percent) = team
print(city)
print(percent)

var city1 = team.0
print(city1)

var loss1 = team.3
print(loss1)

var namedTeam = (city: "Boston", name:"Red Sox",wins:97,lossess:65,percentage:59.9)
print(namedTeam.wins)
print("namedTeam.0 = ",namedTeam.0)