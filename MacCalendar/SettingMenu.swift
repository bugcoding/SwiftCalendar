//
//  SettingMenu.swift
//  StatebarCalendar
//
//  Created by bugcode on 2016/12/10.
//  Copyright © 2016年 bugcode. All rights reserved.
//

import Cocoa

class SettingMenu: NSMenu {
    var aboutWindow:AboutWindowController?

    init() {
        super.init(title: "Setting")
        let set = self.insertItem(withTitle: "设置", action: #selector(SettingMenu.setting(_:)), keyEquivalent: "", at: 0)
        set.target = self
        let ab = self.insertItem(withTitle: "关于", action: #selector(SettingMenu.about(_:)), keyEquivalent: "", at: 1)
        ab.target = self
        let qt = self.insertItem(withTitle: "退出", action: #selector(SettingMenu.quit(_:)), keyEquivalent: "", at: 2)
        qt.target = self
    }
    
    required init(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setting(_ sender: NSMenuItem){
        print("setting menu item")
    }
    func about(_ sender: NSMenuItem) {
        print("about menu item")

    }
    func quit(_ sender: NSMenuItem) {
        NSApp.terminate(nil)
    }
}
