//
//  WindowBuilder.swift
//  xCacheMac
//
//  Created by Yang Liu on 3/4/19.
//  Copyright © 2019 Harry Liu. All rights reserved.
//

import AppKit

class WindowBuilder {
    var x: CGFloat = 0
    var y: CGFloat = 0
    var width: CGFloat = 0
    var height: CGFloat = 0
    
    func dimension(width:CGFloat, height: CGFloat) -> WindowBuilder {
        self.width = width
        self.height = height
        return self
    }
    
    func position(x: CGFloat, y: CGFloat) -> WindowBuilder {
        self.x = x
        self.y = y
        return self
    }
    
    func build() -> NSWindow {
        let windowSize = NSMakeRect(self.x, self.y, self.width, self.height)
        let windowStyle = NSWindow.StyleMask
            .titled
            .union(.closable)
            .union(.miniaturizable)
            .union(.resizable)
            .union(.texturedBackground)
        
        return NSWindow(contentRect: windowSize, styleMask: windowStyle, backing: .buffered, defer: false, screen: nil)
    }
}
