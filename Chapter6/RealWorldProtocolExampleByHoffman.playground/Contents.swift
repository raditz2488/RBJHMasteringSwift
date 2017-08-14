//: Playground - noun: a place where people can play

import UIKit

protocol TextValidating {
    var regExFindMatchingString: String { get }
    var validationMessage: String { get }
}

extension TextValidating {
    var regExMatchingString: String {
        get {
            return regExFindMatchingString + "$"
        }
    }
    
    func validateString(str: String) -> Bool {
        if let _ = str.range(of: regExMatchingString, options: .regularExpression, range: nil, locale: nil) {
            return true
        } else {
            return false
        }
    }
    
    func getMatchingString(str: String) -> String? {
        if let newMatch = str.range(of: regExFindMatchingString, options: .regularExpression, range: nil, locale: nil) {
            return str.substring(with: newMatch)
        } else {
            return nil
        }
    }
}


struct AlphaValidation: TextValidating {
    static let sharedInstance = AlphaValidation()
    private init() {}
    let regExFindMatchingString = "^[a-zA-Z]{0,10}"
    let validationMessage = "Can only contain Alpha characters"
}

struct AlphaNumericValidation: TextValidating {
    static let sharedInstance = AlphaNumericValidation()
    private init() {}
    let regExFindMatchingString = "^[a-zA-Z0-9]{0,15}"
    let validationMessage = "Can only contain Alpha characters"
}

struct DisplayNameValidation: TextValidating {
    static let sharedInstance = DisplayNameValidation()
    private init() {}
    let regExFindMatchingString = "^[\\s?[a-zA-Z0-9\\-_\\s]{0,15}"
    let validationMessage = "Display Name can contain only Alphanumeric characters"
}