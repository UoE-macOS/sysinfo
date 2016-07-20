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
        hostName = NSHost.currentHost().localizedName
        
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: hostName, action: Selector("copyName:"), keyEquivalent: ""))
        menu.addItem(NSMenuItem.separatorItem())
        menu.addItem(NSMenuItem(title: "Quit", action: Selector("terminate:"), keyEquivalent: "q"))
        
        statusItem.menu = menu
    }
    
    func copyName(Sender: NSMenuItem) {
        // copy name to clipboard
        let pasteboard = NSPasteboard.generalPasteboard()
        pasteboard.clearContents()
        pasteboard.setString(Sender.title, forType: NSPasteboardTypeString)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

