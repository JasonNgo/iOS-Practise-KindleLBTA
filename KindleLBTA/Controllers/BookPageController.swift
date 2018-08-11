//
//  BookPageController.swift
//  KindleLBTA
//
//  Created by Jason Ngo on 2018-08-10.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class BookPageController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        navigationItem.title = book?.title
        
        collectionView?.isPagingEnabled = true
        
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "CollectionCellID")
        
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.scrollDirection = .horizontal
        layout?.minimumLineSpacing = 0
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(handleCloseBlock))
    }
    
    @objc func handleCloseBlock() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return book?.pages.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let page = self.book?.pages[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCellID", for: indexPath) as! PageCell
        
        if let pageText = page?.pageText {
            cell.pageLabel.text = pageText
        } else {
            cell.pageLabel.text = ""
        }
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.bounds.width, height: view.bounds.height - 44 - 20)
    }
    
}
