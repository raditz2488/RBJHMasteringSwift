//
//  ViewController.swift
//  AccessLevels
//
//  Created by Rohan Bhale on 16/07/17.
//  Copyright © 2017 RB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let instPriClass = PriClass() //PriClass a private class cannot be used here
        let instPriClass2 = PriClass2()
        print("\(instPriClass2.myInt)")
        //print("\(instPriClass2.myPriInt)") //Wont compile as myPriInt is private var
        //print("\(instPriClass2.myFilePriInt)") //Wont compile as myFilePriInt is fileprivate var
        
        //let filePriClass1 = FilePRivateClass() //Wont compile as FilePRivateClass is fileprivate class
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

