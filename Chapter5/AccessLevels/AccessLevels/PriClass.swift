//
//  PriClass.swift
//  AccessLevels
//
//  Created by Rohan Bhale on 16/07/17.
//  Copyright © 2017 RB. All rights reserved.
//

import Foundation

private class PriClass {
    
}

class PriClass2 {
    var myInt: Int = 1
    private var myPriInt: Int = 1
    fileprivate var myFilePriInt: Int = 2
}


class UserClass {
    var myPriClass2 = PriClass2()
    
    func saySomething() {
        print("\(myPriClass2.myInt)")
        //print("\(myPriClass2.myPriInt)") Wont compile as myPriInt is private var
        print("\(myPriClass2.myFilePriInt)") // This will compile as the file is same for the fileprivate var
    }
}


class SubClassPriClass2: PriClass2 {
    
    func myFunc()
    {
        print("\(self.myInt)")
        print("\(self.myFilePriInt)")
    }
}
