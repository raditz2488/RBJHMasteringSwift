//: Playground - noun: a place where people can play

import UIKit

class Plant {
    var height = 0.0
    var age = 0
    var description: String {
        get{
            return "Base class is a Plant."
        }
    }
    
    final var myLiving: String {
        return "I live on Photosynthesis"
    }
    
    func growHeight(inches: Double) {
        self.height += inches
    }
    
    func getDetails() -> String {
        return "Height: \(height) age: \(age)"
    }
}


class Tree : Plant {
    var limbs = 0
    override var description: String {
        get {
            return "\(super.description) I am a Tree class"
        }
    }
    
    func limbGrow() {
        self.limbs += 1
    }
    
    func limbFall() {
        self.limbs -= 1
    }
    
    override func getDetails() -> String {
        let details = super.getDetails()
        return "\(details) limbs: \(limbs)"
    }
}

var tree = Tree()
tree.age = 5
tree.height = 4
tree.limbGrow()
tree.limbGrow()

class PineTree: Tree {
    var needles = 0
}

class OakTree: Tree {
    var leaves = 0
    
    override func getDetails() -> String {
        let details = super.getDetails()
        return "\(details) leaves: \(leaves)"
    }
}


var detailPlant = Plant()
var detailTree = Tree()
detailTree.age = 5
detailTree.height = 4
detailTree.limbGrow()
detailTree.limbGrow()

print(detailPlant.getDetails())
print(detailTree.getDetails())

var oakTree = OakTree()
oakTree.age = 5
oakTree.height = 4
oakTree.leaves = 50
oakTree.limbGrow()
oakTree.limbGrow()
print(oakTree.getDetails())
var treeOakTree: Tree = oakTree
print("TreeOakTree-----")
print(treeOakTree.getDetails())
