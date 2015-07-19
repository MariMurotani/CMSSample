//
//  ComboboxController.swift
//  CMSSample
//
//  Created by MurotaniMari on 2015/07/19.
//  Copyright © 2015年 MurotaniMari. All rights reserved.
//

import Cocoa

class FileTypesController: NSViewController,NSComboBoxDelegate{

    @IBOutlet weak var FileTypes: NSComboBox!
    @IBOutlet weak var FileTypesController: NSArrayController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let f1 = FileType(sExt: ".png", sContentType: "image/png", sName: "PNG")
        let f2 = FileType(sExt: ".jpeg", sContentType: "image/jpeg", sName: "JPG")
        
        FileTypesController.addObject(f1);
        FileTypesController.addObject(f2);

        FileTypes.reloadData();

    }
}
