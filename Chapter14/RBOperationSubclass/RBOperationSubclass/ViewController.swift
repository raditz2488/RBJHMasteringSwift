//
//  ViewController.swift
//  RBOperationSubclass
//
//  Created by Rohan Bhale on 19/08/17.
//  Copyright © 2017 RB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let operationQueue = OperationQueue()
        
        operationQueue.addOperation(MyOperation(iterations: 10000000, tag: "Operation 1"))
        operationQueue.addOperation(MyOperation(iterations: 1000, tag: "Operation 2"))
        operationQueue.addOperation(MyOperation(iterations: 100000, tag: "Operation 3"))
        
        operationQueue.maxConcurrentOperationCount = 1
        
        operationQueue.addOperation(MyOperation(iterations: 10000000, tag: "Serial Operation 1"))
        operationQueue.addOperation(MyOperation(iterations: 1000, tag: "Serial Operation 2"))
        operationQueue.addOperation(MyOperation(iterations: 100000, tag: "Serial Operation 3"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

