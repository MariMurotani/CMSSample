//
//  TreeViewController.swift
//  CMSSample
//
//  Created by MurotaniMari on 2015/07/11.
//  Copyright © 2015年 MurotaniMari. All rights reserved.
//
/*
https://github.com/danielpi/NSOutlineViewInSwift/blob/master/NSOutlineViewInSwift/NSOutlineViewInSwift/FileSystemItem.swift

http://stackoverflow.com/questions/24828553/swift-code-to-use-nsoutlineview-as-file-system-directory-browser
*/

import Cocoa

class TreeViewController: NSViewController,NSOutlineViewDataSource,NSOutlineViewDelegate{

    //@IBOutlet var TreeMenu: NSScrollView!
    @IBOutlet weak var MyTableView: NSOutlineView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        
    }

    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    func outlineView(outlineView: NSOutlineView,shouldExpandItem item: AnyObject) -> Bool{
            return true;
    }
    
    //
    //  for child object
    //
    func outlineView(outlineView: NSOutlineView, child index: Int, ofItem item: AnyObject?) -> AnyObject {
        // return (item == nil) ? [FileSystemItem rootItem] : [(FileSystemItem *)item childAtIndex:index];
        
        if let it = item as? FileSystemItem {
            //print("child: \(index) ofItem: \(it)")
            return it.childAtIndex(index)!
        } else {
            //print("child:ofItem: return the rootItem")
            return FileSystemItem.rootItem;
        }
    }
    
    //
    //  for root object
    //
    func outlineView(outlineView: NSOutlineView, isItemExpandable item: AnyObject) -> Bool {
        // return (item == nil) ? YES : ([item numberOfChildren] != -1);
        
        if let it = item as? FileSystemItem {
            if it.numberOfChildren() > 0 {
                //print("isItemExpandable: \(it): Yes")
                return true
            } else {
                //print("isItemExpandable: \(it): No")
                return false
            }
        } else {
            //print("isItemExpandable: rootItem: Yes")
            return true
        }
    }
    
    func outlineView(outlineView: NSOutlineView, numberOfChildrenOfItem item: AnyObject?) -> Int {
        // return (item == nil) ? 1 : [item numberOfChildren];
        
        if let it = item as? FileSystemItem {
            //print("numberOfChildrenOfItem: \(it.numberOfChildren())")
            return it.numberOfChildren()
        }
        //print("numberOfChildrenOfItem: We have been passed the root object so we return 1")
        return 1

    }
    
    func outlineView(outlineView: NSOutlineView, objectValueForTableColumn: NSTableColumn?, byItem:AnyObject?) -> AnyObject? {
        // return (item == nil) ? @"/" : [item relativePath];
        
        if let item = byItem as? FileSystemItem {
            //print("objectValueForTableColumn:byItem: \(item)")
            return item.relativePath
        }
        return nil
    }

}
