//
//  TVTViewController.swift
//  TVTest
//
//  Created by Christopher Burns on 8/4/16.
//  Copyright © 2016 Coding Dojo. All rights reserved.
//

import UIKit

class TVTViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let dataArray:Array<(String, Int)> = [("Griffindor", 1), ("Ravenclaw", 3), ("Hufflepuff", 4), ("Slytherin", 2)]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //  MARK: - UITableViewDelegate/DataSource implementation
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TVTCell") as! TVTTableCell
        
        cell.model = dataArray[indexPath.row]
        
        return cell
    }
    

}

