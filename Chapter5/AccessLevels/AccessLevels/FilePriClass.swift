//
//  FilePriClass.swift
//  AccessLevels
//
//  Created by Rohan Bhale on 16/07/17.
//  Copyright © 2017 RB. All rights reserved.
//

import Foundation


fileprivate class FilePRivateClass {
    var myPublicInt: Int = 1
    fileprivate var myFilePrivateInt = 1
    private var myPrivateInt = 1
}

class FileprivateUserClass {
    //var myFilePRivateClass2 = FilePRivateClass() // Wont compile as Type is fileprivate declared
    fileprivate var myFilePRivateClass = FilePRivateClass()
    func printmyPrivateClass() {
        print("\(myFilePRivateClass.myPublicInt)")
        print("\(myFilePRivateClass.myFilePrivateInt)")
        //print("\(myFilePRivateClass.myPrivateInt)") //Wont compile as myPrivateInt is private declared
    }
}
