//
//  QuatToEulerController.swift
//  calculatorQuatEuler
//
//  Created by Aliben on 5/5/19.
//  Copyright © 2019 Aliben. All rights reserved.
//

import Cocoa

class QuatToEulerController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBOutlet weak var textfield_x: NSTextField!
    @IBOutlet weak var textfield_y: NSTextField!
    @IBOutlet weak var textfield_z: NSTextField!
    @IBOutlet weak var textfield_qw: NSTextField!
    @IBOutlet weak var textfield_qx: NSTextField!
    @IBOutlet weak var textfield_qy: NSTextField!
    @IBOutlet weak var textfield_qz: NSTextField!
    
    @IBOutlet weak var label_roll: NSTextField!
    @IBOutlet weak var label_pitch: NSTextField!
    @IBOutlet weak var label_yaw: NSTextField!
    
    @IBAction func ConvertQuatToEuler(_ sender: Any) {
        let qw = textfield_qw.doubleValue
        let qx = textfield_qx.doubleValue
        let qy = textfield_qy.doubleValue
        let qz = textfield_qz.doubleValue
        
        let roll = atan2(2*(qz*qy+qw*qx), qw*qw-qx*qx-qy*qy+qz*qz) / Double.pi * 180
        let pitch = asin(-2*(qx*qz-qw*qy)) / Double.pi * 180
        let yaw = atan2(2*(qx*qy+qw*qz), qw*qw+qx*qx-qy*qy-qz*qz) / Double.pi * 180
        
        label_roll.stringValue = "Roll: \(roll)"
        label_pitch.stringValue = "Pitch: \(pitch)"
        label_yaw.stringValue = "Yaw: \(yaw)"
        
    }
}
