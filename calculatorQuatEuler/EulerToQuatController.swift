//
//  EulerToQuatController.swift
//  calculatorQuatEuler
//
//  Created by Aliben on 5/5/19.
//  Copyright © 2019 Aliben. All rights reserved.
//

import Cocoa

class EulerToQuatController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBOutlet weak var label_qw: NSTextField!
    @IBOutlet weak var label_qx: NSTextField!
    @IBOutlet weak var label_qy: NSTextField!
    @IBOutlet weak var label_qz: NSTextField!
    
    @IBOutlet weak var textfield_x: NSTextField!
    @IBOutlet weak var textfield_y: NSTextField!
    @IBOutlet weak var textfield_z: NSTextField!
    
    @IBOutlet weak var textfield_roll: NSTextField!
    @IBOutlet weak var textfield_pitch: NSTextField!
    @IBOutlet weak var textfield_yaw: NSTextField!
    
    @IBAction func ConvertEulerToQuat(_ sender: Any) {
        let roll = textfield_roll.doubleValue / 180 * Double.pi
        let pitch = textfield_pitch.doubleValue / 180 * Double.pi
        let yaw = textfield_yaw.doubleValue / 180 * Double.pi
        
        let qw = cos(roll/2)*cos(pitch/2)*cos(yaw/2) + sin(roll/2)*sin(pitch/2)*sin(yaw/2)
        let qx = sin(roll/2)*cos(pitch/2)*cos(yaw/2) - cos(roll/2)*sin(pitch/2)*sin(yaw/2)
        let qy = cos(roll/2)*sin(pitch/2)*cos(yaw/2) + sin(roll/2)*cos(pitch/2)*sin(yaw/2)
        let qz = cos(roll/2)*cos(pitch/2)*sin(yaw/2) - sin(roll/2)*sin(pitch/2)*cos(yaw/2)

        label_qw.stringValue = "Qw: \(qw)"
        label_qx.stringValue = "Qx: \(qx)"
        label_qy.stringValue = "Qy: \(qy)"
        label_qz.stringValue = "Qz: \(qz)"
    }
}
