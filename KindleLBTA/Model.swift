//
//  Model.swift
//  KindleLBTA
//
//  Created by Jason Ngo on 2018-08-10.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class Page {
    let pageNumber: Int
    let pageText: String
    
    init(pageNumber: Int, pageText: String) {
        self.pageNumber = pageNumber
        self.pageText = pageText
    }
}

class Book {
    let title: String
    let author: String
    let imageURL: String
    let pages: [Page]
    
    init(dictionary: [String: Any]) {
        self.title = dictionary["title"] as? String ?? ""
        self.author = dictionary["author"] as? String ?? ""
        self.imageURL = dictionary["coverImageUrl"] as? String ?? ""
        
        var bookPages = [Page]()
        
        if let pageDictionarys = dictionary["pages"] as? [[String: Any]] {
            for pageDictionary in pageDictionarys {
                if let pageNumber = pageDictionary["id"] as? Int, let pageText = pageDictionary["text"] as? String {
                    let page = Page(pageNumber: pageNumber, pageText: pageText)
                    bookPages.append(page)
                } // if let
            } // for
        } // if let
        
        self.pages = bookPages
    } // init
    
} // Book
