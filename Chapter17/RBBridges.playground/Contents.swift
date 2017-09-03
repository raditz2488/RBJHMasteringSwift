//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol MessageProtocol {
    var messageString: String { get set }
    init(messageString: String)
    func prepareMessage()
}

protocol SenderProtocol {
    var message: MessageProtocol? { get set }
    func sendMessage()
    func verifyMessage()
}

class PlainTextMessage: MessageProtocol {
    var messageString: String
    required init(messageString: String) {
        self.messageString = messageString
    }
    
    func prepareMessage() {
        // Nothing to do
    }
}

class DESEncryptedMessage: MessageProtocol {
    var messageString: String
    required init(messageString: String) {
        self.messageString = messageString
    }
    
    func prepareMessage() {
        //Encrypt message here
        self.messageString = "DES: " + self.messageString
    }
}

class EmailSender: SenderProtocol {
    var message: MessageProtocol?
    func sendMessage() {
        print("Sending through E-Mail:")
        print(" \(message?.messageString)")
    }
    
    func verifyMessage() {
        print("Verifying email message")
    }
}

class SMSSender: SenderProtocol {
    var message: MessageProtocol?
    func sendMessage() {
        print("Sending through SMS:")
        print(" \(message?.messageString)")
    }
    
    func verifyMessage() {
        print("Verifying SMS message")
    }
}

struct MessagingBridge {
    static func sendMessage(_ message: MessageProtocol, sender: SenderProtocol) {
        var sender = sender
        message.prepareMessage()
        sender.message = message
        sender.verifyMessage()
        sender.sendMessage()
    }
}