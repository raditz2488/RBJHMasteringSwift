//
//  MessageBuilder.swift
//  RBObjCProject
//
//  Created by Rohan Bhale on 15/08/17.
//  Copyright © 2017 RB. All rights reserved.
//

import Foundation

class MessageBuilder: NSObject {
    func getPersonalizedMessage(name: String) -> String {
        let messages = Messages()
        let retMessage = "To: " + name + ", " + messages.getMessage()
        return retMessage
    }
}
