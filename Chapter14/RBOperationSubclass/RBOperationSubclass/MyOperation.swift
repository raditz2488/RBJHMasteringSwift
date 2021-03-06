//
//  DoCalculation.swift
//  RBGCDExamples
//
//  Created by Rohan Bhale on 19/08/17.
//  Copyright © 2017 RB. All rights reserved.
//

import Foundation

class MyOperation: Operation {
    
    let  iterations: Int
    let tag: String
    
    init(iterations: Int, tag: String) {
        self.iterations = iterations
        self.tag = tag
    }
    
    override func main() {
        performCalculation(iterations, tag: tag)
    }
    
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
