//
//  MyTableViewDatasource.swift
//  deegeu-swift-tableview-simple
//
//  Created by Daniel Spiess on 4/10/16.
//  Copyright © 2016 Daniel Spiess. All rights reserved.
//

import UIKit

class MyTableViewDataSource: NSObject, UITableViewDataSource {
    
    var happyThings: [AnyObject]
    var cellIdentifier: String
    let header = "Happy Things"
    
    init(happyThings: [AnyObject]!, cellIdentifier: String!) {
        self.happyThings = happyThings
        self.cellIdentifier = cellIdentifier
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return happyThings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        
        // Fetch Happy Item
        let item = happyThings[indexPath.row]
        
        // Configure Cell
        cell.textLabel?.text = (item as! String)
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return header
    }
    
}