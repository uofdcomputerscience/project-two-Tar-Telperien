//
//  ViewControllerAtta.swift
//  Project 2
//
//  Created by Amelia on 05/11/2019.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewControllerAtta: UIViewController {
    
    @IBOutlet weak var attaStepper: UIStepper!
    @IBOutlet weak var attaLabelEr: UILabel!
    @IBOutlet weak var attaSlider: UISlider!
    @IBOutlet weak var attaContinueButton: UIButton!
    @IBOutlet weak var attaLabelAtta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //more stuff
        attaContinueButton.isEnabled = false
        attaLabelEr.text = String(attaStepper.value)
        attaLabelAtta.text = String(attaSlider.value)
        attaSlider.minimumValue = 0.0
        attaSlider.maximumValue = 5.0
    }
    
    @IBAction func attaStepperStepped(_ sender: UIStepper) {
        enableContinueButton()
        attaLabelEr.text = String(attaStepper.value)
    }
    
    @IBAction func attaSliderSlid(_ sender: UISlider) {
        enableContinueButton()
        attaLabelAtta.text = String(attaSlider.value)
    }
    
    func enableContinueButton() {
        if attaStepper.value == 5 && attaSlider.value == 5 {
            attaContinueButton.isEnabled = true
        }
    }
}
