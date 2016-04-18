//
//  TableViewController.swift
//  deegeu-ios-swift-tableview-simple
//
//  Created by Daniel Spiess on 4/16/16.
//  Copyright © 2016 Daniel Spiess. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let myDataSource = MyTableViewDataSource(happyThings: ["Beer", "Free candy", "YouTube subscribers", "Programming"], cellIdentifier: "cell")
    let myDelegate = MyTableViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the tableview datasource
        self.tableView.dataSource = myDataSource
        self.tableView.delegate = myDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
