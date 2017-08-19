//
//  ViewController.swift
//  RBGCDExamples
//
//  Created by Rohan Bhale on 19/08/17.
//  Copyright © 2017 RB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let cqueue = DispatchQueue(label:"com.bhale.rohan.concurrent", attributes: .concurrent)
        let calculation = DoCalculation()
        
        cqueue.async {
            //print("Starting async1")
            calculation.performCalculation(10000000, tag: "async1")
        }
        
        cqueue.async {
            //print("Starting async2")
            calculation.performCalculation(1000, tag: "async2")
        }
        
        cqueue.async {
            //print("Starting async3")
            calculation.performCalculation(100000, tag: "async3")
        }
        
        let squeue = DispatchQueue(label: "com.bhale.rohan.serial")
        
        squeue.async {
            calculation.performCalculation(10000000, tag: "sync1")
        }
        
        squeue.async {
            calculation.performCalculation(1000, tag: "sync2")
        }
        
        squeue.async {
            calculation.performCalculation(100000, tag: "sync3")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

