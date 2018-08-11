//
//  PageCell.swift
//  KindleLBTA
//
//  Created by Jason Ngo on 2018-08-10.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let pageLabel: UILabel = {
        let label = UILabel()
        label.text = "TEMP TEXT TEMP TEXT TEMP TEXT TEMP TEXT TEMP TEXT TEMP TEXT TEMP TEXT TEMP TEXT TEMP TEXT TEMP TEXT TEMP TEXT TEMP TEXT "
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(pageLabel)
        pageLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        pageLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        pageLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        pageLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
