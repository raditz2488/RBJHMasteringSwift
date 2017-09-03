//: Playground - noun: a place where people can play

import UIKit

protocol CompressionStrategy {
    func compressFiles(filePaths: [String])
}

struct ZipCompressionStrateg: CompressionStrategy {
    func compressFiles(filePaths: [String]) {
        print("Using zip compression")
    }
}

struct RarCompressionStrategy: CompressionStrategy {
    func compressFiles(filePaths: [String]) {
        print("Using rar compression")
    }
}

class CompressContent {
    var strategy: CompressionStrategy
    init(strategy: CompressionStrategy) {
        self.strategy = strategy
    }
    
    func compressFiles(filePaths: [String]) {
        self.strategy.compressFiles(filePaths: filePaths)
    }
}