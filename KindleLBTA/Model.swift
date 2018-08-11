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
    let image: UIImage?
    let pages: [Page]
    
    init(title: String, author: String, image: UIImage?, pages: [Page]) {
        self.title = title
        self.author = author
        self.image = image
        self.pages = pages
    }
}
