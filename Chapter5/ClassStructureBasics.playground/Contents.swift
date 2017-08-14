//: Playground - noun: a place where people can play

import UIKit

struct MyStruct {
    let c = 5
    var v = ""
}

class MyClass {
    let c = 5
    var v = ""
}

var myStruct = MyStruct()
var myClass = MyClass()

var x = myClass.c
myClass.v = "Howdy"

struct EmployeeStruct {
    var firstName = ""
    var lastName = ""
    var salaryYear = 0.0 {
        willSet {
            print("About to set salaryYear to \(newValue)")
        }
        didSet {
            if salaryYear > oldValue {
                print("\(firstName) got a raise")
            } else {
                print("\(firstName) did not get a raise")
            }
        }
    }
    var salaryWeek: Double {
        get {
            return salaryYear/52
        }
        set {
            salaryYear = newValue * 52
        }
    }
    
    init() {
        self.firstName = ""
        self.lastName = ""
        self.salaryYear = 0.0
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = 0.0
    }
    
    init(firstName: String, lastName: String, salaryYear: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = salaryYear
    }
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
    
    mutating func giveRaise(amount: Double) {
        self.salaryYear += amount
    }
}

public class EmployeeClass {
    var firstName = ""
    var lastName = ""
    var salaryYear = 0.0 {
        willSet {
            print("About to set salaryYear to \(newValue)")
        }
        
        didSet {
            if salaryYear > oldValue {
                print("\(firstName) got a raise")
            }
            else {
                print("\(firstName) did not get a raise")
            }
        }
    }
    var salaryWeek: Double {
        get {
            return salaryYear/52
        }
        set {
            salaryYear = newValue * 52
        }
    }
    
    init() {
        self.firstName = ""
        self.lastName = ""
        self.salaryYear = 0.0
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = 0.0
    }
    
//    init(firstName: String, lastName: String, salaryYear: Double) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.salaryYear = salaryYear
//    }
    
    init(employeeWithFirstName firstName: String, lastName lastName: String, andSalaryYear salaryYear: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = salaryYear
    }
    
    init?(firstName: String, lastName: String, salaryYear: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.salaryYear = salaryYear
        if self.salaryYear < 20000 {
            return nil
        }
    }
    
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
    
    func giveRaise(amount: Double) {
        self.salaryYear += amount
    }
}

var f = EmployeeStruct(firstName: "Rohan", lastName: "Bhale", salaryYear: 39000)
print(f.salaryWeek)
f.salaryWeek = 1000
print(f.salaryWeek)
print(f.salaryYear)

var e = EmployeeClass()
e.firstName = "Rohan"
e.lastName = "Bhale"
e.salaryYear = 50000

print(e.getFullName())
print(f.getFullName())

var g = EmployeeClass()
var h = EmployeeStruct(firstName: "Me", lastName: "Moe")
var i = EmployeeClass(firstName: "Me", lastName: "Moe", salaryYear: 45000)
var k = EmployeeClass(employeeWithFirstName: "Me", lastName: "Moe", andSalaryYear: 45000)

if let f = EmployeeClass(firstName: "Rohan", lastName: "Bhale", salaryYear: 19000) {
    print("Initialized",f.getFullName(),terminator:"!")
} else {
    print("Failed to intialize")
}

var z = EmployeeClass(employeeWithFirstName: "Me", lastName: "Moe", andSalaryYear: 45000)
print("Created Z")
