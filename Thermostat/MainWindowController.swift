//
//  MainWindowController.swift
//  Thermostat
//
//  Created by joecaz on 6/4/17.
//  Copyright © 2017 Coyote Creek Software. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    private var privateTemperature = 68
    dynamic var isOn = true
    
    dynamic var temperature: Int {
        set {
            print("set temperature to \(newValue)")
            privateTemperature = newValue
        }
        get {
            print("get temperature")
            return privateTemperature
        }
    }
    
    override func setNilValueForKey(_ key: String) {
        switch key {
        case "temperature":
            temperature = 68
        default:
            super.setNilValueForKey(key)
        }
    }
    
    @IBAction func makeWarmer(_ sender: NSButton) {
        // let newTemperature = temperature + 1
        // setValue(newTemperature, forKey: "temperature")
        // willChangeValue(forKey: "temperature")
        temperature += 1
        // didChangeValue(forKey: "temperature")
    }
    
    @IBAction func makeCooler(_ sender: NSButton) {
        // let newTemperature = temperature - 1
        // setValue(newTemperature, forKey: "temperature")
        temperature -= 1
    }
    
    override var windowNibName: String {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
}
