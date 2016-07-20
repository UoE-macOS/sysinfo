//
//  AppDelegate.swift
//  sysinfo
//
//  Created by Stew Wilson on 19/07/2016.
//  Copyright © 2016 University of Edinburgh. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-2)
    
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        if let button = statusItem.button {
            button.image = NSImage(named: "StatusBarButtonImage")
        }
        
        var hostName: String!
        //hostName = NSHost.currentHost().localizedName
        hostName = "ENG-C02L30RADNCW"
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: hostName, action: Selector("doNothing:"), keyEquivalent: ""))
        menu.addItem(NSMenuItem.separatorItem())
        menu.addItem(NSMenuItem(title: "Quit Quotes", action: Selector("terminate:"), keyEquivalent: "q"))
        
        statusItem.menu = menu
    }
    
    func doNothing(Sender: AnyObject) {
        // Blank selector, so the menu item appears enabled.
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

