//
//  InfoViewController.swift
//  sysinfo
//
//  Created by Stew Wilson on 19/07/2016.
//  Copyright © 2016 University of Edinburgh. All rights reserved.
//

import Cocoa

class InfoViewController: NSViewController {
    @IBOutlet var textLabel: NSTextField!
    
    override func viewWillAppear() {
        super.viewWillAppear()
        let locName: String!
        locName = NSHost.currentHost().localizedName

        textLabel.stringValue = locName
        
    }
}

