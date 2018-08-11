//
//  ViewController.swift
//  KindleLBTA
//
//  Created by Jason Ngo on 2018-08-09.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationController?.title = "Kindle"
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellID")
        
        // Remove unrendered lines at the bottom
        tableView.tableFooterView = UIView()
        
        setup()
    }
    
    func setup() {
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", image: nil, pages: [
            Page(pageNumber: 1, pageText: "Text for the first page"),
            Page(pageNumber: 2, pageText: "Text for the second page")
            ])

        let book2 = Book(title: "Bill Gates: A Biography", author: "Bill Gates", image: nil, pages: [
            Page(pageNumber: 1, pageText: "Text for the first page"),
            Page(pageNumber: 2, pageText: "Text for the second page"),
            Page(pageNumber: 3, pageText: "Text for the third page"),
            Page(pageNumber: 4, pageText: "Text for the fourth page")
            ])

        self.books = [book, book2]
    } // setup
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let book = books?[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! BookCell
        cell.book = book
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedBook = self.books?[indexPath.row]
        let layout = UICollectionViewFlowLayout()
        let bookPageController = BookPageController(collectionViewLayout: layout)
        
        bookPageController.book = selectedBook
        
        let navController = UINavigationController(rootViewController: bookPageController)
        
        present(navController, animated: true, completion: nil)
    }


} // ViewController

