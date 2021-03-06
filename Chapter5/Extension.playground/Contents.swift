//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

extension String {
    var firstLetter: Character? {
        get {
            return self.characters.first
        }
    }
    
    func reverse() -> String {
        var reverse = ""
        for letter in self.characters {
            reverse = "\(letter)" + reverse
        }
        
        return reverse
    }
}

print(str.reverse())
print(str.firstLetter)
