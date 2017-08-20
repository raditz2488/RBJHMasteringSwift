//: Playground - noun: a place where people can play

import UIKit

let now = Date()

let dFormatter = DateFormatter()
dFormatter.dateStyle = .short
dFormatter.timeStyle = .medium

let dateStr = dFormatter.string(from: now)

let now2 = Date()
let dFormatter2 = DateFormatter()
dFormatter2.dateFormat = "YYYY-MM-dd HH:mm:ss"

let dateStr2 = dFormatter2.string(from: now2)


let someDate = dFormatter2.date(from: dateStr2)

let nFormatter1 = NumberFormatter()
nFormatter1.numberStyle = .currency
let num1  = nFormatter1.string(from: 23.99)

let nFormatter2 = NumberFormatter()
nFormatter2.numberStyle = .decimal
nFormatter2.maximumFractionDigits = 2
let num2 = nFormatter2.string(from: 23.2357)

let nFormatter3 = NumberFormatter()
nFormatter3.numberStyle = .spellOut
let num3 = nFormatter3.string(from: 2017)
