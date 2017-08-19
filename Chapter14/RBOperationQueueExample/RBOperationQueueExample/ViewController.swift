//
//  ViewController.swift
//  RBOperationQueueExample
//
//  Created by Rohan Bhale on 19/08/17.
//  Copyright © 2017 RB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let calculation = DoCalculation()
        let blockOperation = BlockOperation {
            calculation.performCalculation(10000000, tag: "Task1")
        }
        
        blockOperation.addExecutionBlock {
            calculation.performCalculation(10000, tag: "Task2")
        }
        
        blockOperation.addExecutionBlock {
            calculation.performCalculation(1000000, tag: "Task3")
        }
        
        let operationQueue = OperationQueue()
        operationQueue.maxConcurrentOperationCount = 1
        operationQueue.addOperation(blockOperation)
        
        let blockOperation1 = BlockOperation {
            calculation.performCalculation(10000000, tag: "Operation1")
        }
        
        let blockOperation2 = BlockOperation {
            calculation.performCalculation(10000000, tag: "Operation2")
        }
        
        let blockOperation3 = BlockOperation {
            calculation.performCalculation(10000000, tag: "Operation3")
        }
        
        operationQueue.addOperation(blockOperation1)
        operationQueue.addOperation(blockOperation2)
        operationQueue.addOperation(blockOperation3)
        
        operationQueue.addOperation {
            calculation.performCalculation(10000000, tag: "Block1")
        }
        
        operationQueue.addOperation {
            calculation.performCalculation(10000000, tag: "Block2")
        }
        
        operationQueue.addOperation {
            calculation.performCalculation(10000000, tag: "Block3")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

