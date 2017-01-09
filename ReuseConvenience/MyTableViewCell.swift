//
//  MyTableViewCell.swift
//  ReuseConvenience
//
//  Created by Luka Gabric on 05/01/2017.
//  Copyright © 2017 PROGOS. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    //MARK: - Convenience
    
    override public class func initialize() {
        super.initialize()
        
        let cell = self.lg_loadFromNib()
        cellHeight = cell.bounds.size.height
        cellReuseIdentifier = cell.reuseIdentifier!
    }
    
    static var cellHeight: CGFloat = 0
    static var cellReuseIdentifier: String = ""
    static var cellNib: UINib { return self.lg_nib() }

    //MARK: -
    
}
