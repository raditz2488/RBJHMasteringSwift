//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class DoCalculation {
    func doCalc() {
        var x = 100
        var y = x * x
        _ = y/x
    }
    
    func performCalculation(_ iterations: Int, tag: String) {
        let start = CFAbsoluteTimeGetCurrent()
        for _ in 0..<iterations {
            self.doCalc()
        }
        let end = CFAbsoluteTimeGetCurrent()
        print("time for \(tag):  \(end - start)")
    }
}


let cqueue = DispatchQueue(label:"com.bhale.rohan", attributes: .concurrent)
let calculation = DoCalculation()

let c = { calculation.performCalculation(1000, tag: "async1") }
cqueue.async(execute: c)

cqueue.async {
    calculation.performCalculation(1000, tag: "async1")
}
