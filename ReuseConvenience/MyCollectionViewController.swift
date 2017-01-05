//
//  MyCollectionViewController.swift
//  ReuseConvenience
//
//  Created by Luka Gabric on 05/01/2017.
//  Copyright © 2017 PROGOS. All rights reserved.
//

import UIKit

class MyCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(MyCollectionViewCell.cellNib, forCellWithReuseIdentifier: MyCollectionViewCell.cellReuseIdentifier)
        let layout = self.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = MyCollectionViewCell.cellSize
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.cellReuseIdentifier, for: indexPath) as! MyCollectionViewCell
        cell.titleLabel.text = "Cell #\(indexPath.row + 1)" 
        return cell
    }

}
