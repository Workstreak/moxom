//
//  ViewController.swift
//  moxom
//
//  Created by Santosh on 18/05/2016.
//  Copyright © 2016 else. All rights reserved.
//

import UIKit

class ViewController:UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var homeTable: UITableView!
    
    var items: [String] = ["one","two","three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
//        var cell = tableView.cellForRowAtIndexPath(indexPath)
//        return cell.frame.height
//    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 500.0;//Choose your custom row height
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell =
            self.homeTable.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }
}
