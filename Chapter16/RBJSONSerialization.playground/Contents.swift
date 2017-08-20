//: Playground - noun: a place where people can play

import UIKit

struct DocTags {
    static let BOOKS_TAG = "books"
    static let BOOK_TAG = "book"
    static let AUTHOR_TAG = "author"
    static let PUBLISHER_TAG = "publisher"
    static let NAME_TAG = "name"
    static let CATEGORY_TAG = "category"
    static let DESCRIPTION_TAG = "description"
}

class Book {
    var name = ""
    var author = ""
    var publisher = ""
    var category = ""
    var description = ""

    func addValue(_ tagName: String, withvalue value: String) {
        switch tagName {
        case DocTags.NAME_TAG:
            self.name = value
            
        case DocTags.AUTHOR_TAG:
            self.author = value
            
        case DocTags.PUBLISHER_TAG:
            self.publisher = value
            
        case DocTags.CATEGORY_TAG:
            self.category = value
            
        case DocTags.DESCRIPTION_TAG:
            self.description = value

    
        default:
            print("Unknow element \(tagName)")
        }
    }
}


