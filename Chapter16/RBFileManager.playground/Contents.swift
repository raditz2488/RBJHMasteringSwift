//: Playground - noun: a place where people can play

import UIKit

let fileManager = FileManager.default

do {
    let path = "/Users/pranav/"
    let dirContents = try fileManager.contentsOfDirectory(atPath: path)
    for item in dirContents {
        print(item)
    }
    
} catch let error {
    print("Failed reading contents of directory: \(error)")
}

do {
    let path = "/Users/pranav"
    if fileManager.fileExists(atPath: path) {
        let isReadable = fileManager.isReadableFile(atPath: path)
        let isWriteable = fileManager.isWritableFile(atPath: path)
        let isExecutable = fileManager.isExecutableFile(atPath: path)
        let isDeletable = fileManager.isDeletableFile(atPath: path)
        
        print("Can read \(isReadable)")
        print("Can write \(isWriteable)")
        print("Can executable \(isExecutable)")
        print("Can deletable \(isDeletable)")
    }
    
} catch let error {
    print("Failed reading contents of directory: \(error)")
}