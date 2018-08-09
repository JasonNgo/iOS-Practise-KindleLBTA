//
//  ViewController.swift
//  KindleLBTA
//
//  Created by Jason Ngo on 2018-08-09.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .red
        
        let page1 = Page(pageNumber: 1, pageText: "Text for the first page")
        let page2 = Page(pageNumber: 2, pageText: "Text for the second page")
        let bookPages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", pages: bookPages)
        
        print(book.title, book.author)
        print(page1.pageText)
        print(page2.pageText)
        
    }


}

