//
//  MyTableViewController.swift
//  ReuseConvenience
//
//  Created by Luka Gabric on 05/01/2017.
//  Copyright © 2017 PROGOS. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        self.tableView.register(MyTableViewCell.cellNib, forCellReuseIdentifier: MyTableViewCell.cellReuseIdentifier)
        self.tableView.rowHeight = MyTableViewCell.cellHeight
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.cellReuseIdentifier, for: indexPath) as! MyTableViewCell
        cell.textLabel?.text = "Cell #\(indexPath.row + 1)"
        return cell
    }
    
}
