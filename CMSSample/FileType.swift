//
//  FileTypes.swift
//  CMSSample
//
//  Created by MurotaniMari on 2015/07/19.
//  Copyright © 2015年 MurotaniMari. All rights reserved.
//

import Cocoa

public class FileType: NSObject {
    public var Ext:NSString = ""
    public var ContentType:NSString = ""
    public var Name:NSString = ""
    
    init(sExt:NSString,sContentType:NSString,sName:NSString) {
        self.Ext = sExt;
        self.ContentType = sContentType;
        self.Name = sName;
    }
}
