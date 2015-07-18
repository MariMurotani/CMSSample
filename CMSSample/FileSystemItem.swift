//
//  FileSystemItem.swift
//  CMSSample
//
//  Created by MurotaniMari on 2015/07/18.
//  Copyright © 2015年 MurotaniMari. All rights reserved.
//

import Cocoa

public class FileSystemItem: NSObject {
    
    var relativePath: String
    var parent: FileSystemItem?
    
    lazy var children: [FileSystemItem]? = {
        let fileManager = NSFileManager.defaultManager()
        let fullPath = self.fullPath()
        var isDir = ObjCBool(false)
        let valid = fileManager.fileExistsAtPath(fullPath as String, isDirectory: &isDir)
        var newChildren: [FileSystemItem] = []
        
        if (valid && isDir.boolValue) {
            let array: [AnyObject]?
            do {
                array = try fileManager.contentsOfDirectoryAtPath(fullPath as String)
            } catch _ {
                array = nil
            }
            
            if let ar = array as? [String] {
                for contents in ar {
                    let newChild = FileSystemItem(path: contents, parent: self)
                    newChildren.append(newChild)
                }
            }
            return newChildren
        } else {
            return  nil
        }
        }()
    
    public override var description: String {
        return "FileSystemItem:\(relativePath)"
    }
    
    init(path: NSString, parent: FileSystemItem?) {
        self.relativePath = path.lastPathComponent.copy() as! String
        self.parent = parent
    }
    
    class var rootItem: FileSystemItem {
        get {
            return FileSystemItem(path:"/", parent: nil)
        }
    }
    
    public func numberOfChildren() -> Int {
        if let children = children {
            return children.count
        }
        return 0
    }
    
    public func childAtIndex(n: Int) -> FileSystemItem? {
        if let children = children {
            return children[n]
        } else {
            return nil
        }
    }
    
    public func fullPath() -> NSString {
        // If no parent, return our own relative path
        print("relativePath: \(relativePath)")
        if let par = parent {
            // recurse up the hierarchy, prepending each parent’s path
            return par.fullPath().stringByAppendingPathComponent(relativePath as String)
        } else {
            return relativePath
        }
    }
    public func full2Path() -> String {
        // If no parent, return our own relative path
        if let par = parent {
            // recurse up the hierarchy, prepending each parent’s path
            return par.fullPath().stringByAppendingPathComponent(relativePath as String)
        } else {
            return (relativePath == "/") ? relativePath : "/" + (relativePath as String)
        }
    }
}
