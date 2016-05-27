//
//  HomeViewController.swift
//  moxom
//
//  Created by Santosh on 27/05/2016.
//  Copyright © 2016 else. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeTable: UITableView!
    var items: [String] = ["one","two","three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
        func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
        {
            return 500.0;
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
