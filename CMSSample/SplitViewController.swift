//
//  SplitViewController.swift
//  CMSSample
//
//  Created by MurotaniMari on 2015/07/18.
//  Copyright © 2015年 MurotaniMari. All rights reserved.
//

import Cocoa

class SplitViewController: NSSplitViewController{//,NSSplitViewDelegate
    
    //@IBOutlet weak var SplitView: NSSplitView!
    
    @IBOutlet weak var MySplitView: NSSplitView!
    /*override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
    }*/
    
    /*func splitView(splitView: NSSplitView,resizeSubviewsWithOldSize oldSize: NSSize){
        print(oldSize.width);
    }*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MySplitView.adjustSubviews();
        
        // Do any additional setup after loading the view.
        //sself.mySplitView.delegate = self
        
    }
    
    override func splitView(splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat {
        return proposedMinimumPosition + 200
    }
    
  }
