//: Playground - noun: a place where people can play

import UIKit

class MyNames {
    private var names = ["Rohan","Pranav","Vijay","Surekha"]
    subscript(index:Int) -> String {
        get{
            return names[index]
        }
        
        set{
            names[index] = newValue
        }
    }
}


var nam = MyNames()
print(nam[0])
nam[0] = "Buddy"
print(nam[0])

struct MathTable {
    var num: Int
    subscript(multiply index: Int) -> Int {
        return num * index
    }
    
    subscript(addition index: Int) -> Int {
        return num + index
    }
}

var table = MathTable(num: 5)
print(table[multiply:4])
print(table[addition:4])

struct Hello {
    subscript(name: String) -> String {
        return "Hello \(name)"
    }
}

var hello = Hello()
print(hello["Rohan"])

struct TicTacToe {
    var board = [["","",""], ["","",""], ["","",""]]
    
    subscript(x: Int, y: Int) -> String {
        get {
            return board[x][y]
        }
        
        set {
            board[x][y] = newValue
        }
    }
}

var board = TicTacToe()
board[1,1] = "x"
board[0,0] = "o"

struct SayHello {
    subscript(messageText message: String, messageName name: String, number number: Int) -> [String] {
        var retArray : [String] = []
        for _ in 0..<number {
            retArray.append("\(message) \(name)")
        }
        return retArray
    }
}

var message = SayHello()
var ret = message[messageText:"Bonjour", messageName:"Rohan", number: 5]
print(ret)
