//
//  Page.swift
//  KindleLBTA
//
//  Created by Jason Ngo on 2018-08-09.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import Foundation

class Page {
    let pageNumber: Int
    let pageText: String
    
    init(pageNumber: Int, pageText: String) {
        self.pageNumber = pageNumber
        self.pageText = pageText
    }
}
