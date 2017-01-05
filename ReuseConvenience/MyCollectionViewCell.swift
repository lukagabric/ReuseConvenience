//
//  MyCollectionViewCell.swift
//  ReuseConvenience
//
//  Created by Luka Gabric on 05/01/2017.
//  Copyright © 2017 PROGOS. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    //MARK: - Vars
    
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK: - Override
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.lightGray
    }
    
    //MARK: - Convenience
    
    override public class func initialize() {
        super.initialize()
        
        let cell = self.lg_loadFromNib() as! UICollectionViewCell
        cellSize = cell.bounds.size
        cellReuseIdentifier = cell.reuseIdentifier!
    }
    
    static var cellSize: CGSize = .zero
    static var cellReuseIdentifier: String = ""
    static var cellNib: UINib { return self.lg_nib() }
    
    //MARK: -
    
}
