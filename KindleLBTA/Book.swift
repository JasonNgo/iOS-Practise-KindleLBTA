//
//  Book.swift
//  KindleLBTA
//
//  Created by Jason Ngo on 2018-08-09.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import Foundation

class Book {
    let title: String
    let author: String
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page]) {
        self.title = title
        self.author = author
        self.pages = pages
    }
}
