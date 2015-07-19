//
//  ComboboxController.swift
//  CMSSample
//
//  Created by MurotaniMari on 2015/07/19.
//  Copyright © 2015年 MurotaniMari. All rights reserved.
//

import Cocoa

//NSViewController,NSOutlineViewDataSource,NSOutlineViewDelegate
class FileTypesController: NSViewController,NSComboBoxDataSource,NSComboBoxDelegate{
    @IBOutlet weak var BtAddDirecotry: NSButton!
    @IBOutlet weak var BtAddFile: NSButton!
    
    @IBOutlet weak var BtDeleteYes: NSButton!
    @IBOutlet weak var BtDeleteNo: NSButton!
    
    @IBOutlet weak var ArrayFileTypesController: NSArrayController!
    @IBOutlet weak var FileTypes: NSComboBox!
    

    let party: [String] = ["PNG", "JPEG", "HTML","CSS", "JS"]
    override func awakeFromNib() {
        print("View controller instance with view: \(self.view)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //print(self.view)
        
        /*let f1 = FileType(sExt: ".png", sContentType: "image/png", sName: "PNG")
        let f2 = FileType(sExt: ".jpeg", sContentType: "image/jpeg", sName: "JPG")
        */
        if(ArrayFileTypesController != nil){
            ArrayFileTypesController.addObject(party);
        }
        
        if(FileTypes != nil){
            //  データ・ソースなし
            FileTypes.usesDataSource = false;
            FileTypes.addItemsWithObjectValues(party);
            FileTypes.reloadData();
            //  データ・ソースあり
            //DileTypes.usesDataSource = true;
            //ArrayFileTypesController.addObject(party);
            //print(ArrayFileTypesController.attributeKeys);
        }
        
        
        
    }

    @IBAction func DirecotryAdd(sender: NSButton) {
        // ここでディレクトリ名を取得して登録する
        sender.window?.close()
        
        // 呼び出しもとのWindowを更新するコールバック
    }
    
    
}
