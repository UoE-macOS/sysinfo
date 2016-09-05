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

    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
    
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        /*if let button = statusItem.button {
            button.image = NSImage(named: "StatusBarButtonImage")
        }*/
        
        var hostName: String!
        hostName = NSHost.currentHost().localizedName
        
        statusItem.title = hostName
        
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: "Copy to Clipboard", action: Selector("copyName:"), keyEquivalent: ""))
        
        statusItem.menu = menu
    }
    
    func copyName(Sender: NSMenuItem) {
        /*var hostName: String!
        hostName = NSHost.currentHost().localizedName*/
        
        // copy name to clipboard
        let pasteboard = NSPasteboard.generalPasteboard()
        pasteboard.clearContents()
        pasteboard.setString(NSHost.currentHost().localizedName!, forType: NSPasteboardTypeString)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

