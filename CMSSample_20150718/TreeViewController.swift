//
//  TreeViewController.swift
//  CMSSample
//
//  Created by MurotaniMari on 2015/07/18.
//  Copyright © 2015年 MurotaniMari. All rights reserved.
//

import Cocoa

class TreeViewController:NSViewController, NSTableViewDataSource,NSTableViewDelegate{
    //@IBOutlet weak var tableView: NSTableView!
    
    @IBOutlet var TreeView: NSTableView!
    var objects: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad()
    {
        /*super.viewDidLoad()
        
        self.objects.addObject("Apple Watch")
        self.objects.addObject("iPhone")
        self.objects.addObject("Mac")
        self.objects.addObject("iPad")
        */
        
        //self.tableView.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
    /*override var representedObject: AnyObject?
        {
        didSet
        {
            // Update the view, if already loaded.
        }
    }
    */

}
