//: Playground - noun: a place where people can play

import UIKit

class TestClassOne {
    typealias nameClosure = () -> String
    
    var name = "Rohan"
    lazy var myClosure: nameClosure = {
        [unowned self] in
        return self.name
    }
    
    deinit {
        print("TestClasOne deinitialized")
    }
}

class TestClassTwo {
    func closureExample(handler: TestClassOne.nameClosure) {
        print(handler())
    }
    
    deinit {
        print("TestClassTwo deinitialized")
    }
}

var testClassOne: TestClassOne? = TestClassOne()
var testClassTwo: TestClassTwo? = TestClassTwo()

testClassTwo?.closureExample(handler: testClassOne!.myClosure)
testClassOne = nil
print("testClassOne is gone")
testClassTwo = nil
print("testClassTwo is gone")