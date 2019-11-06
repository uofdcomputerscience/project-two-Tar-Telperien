//
//  ViewController.swift
//  Project 2
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //View Controller Er
    @IBOutlet weak var erSeg: UISegmentedControl!
    
    @IBOutlet weak var erSwitchEr: UISwitch!
    @IBOutlet weak var erSwitchAtta: UISwitch!
    
    @IBOutlet weak var erLabelEr: UILabel!
    @IBOutlet weak var erLabelAtta: UILabel!
    
    @IBOutlet weak var erContinueButton: UIButton!
    
    var stepperValFive: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        erContinueButton.isEnabled = false
        erLabelEr.text = "A"
        erLabelAtta.text = "B"
        erSwitchEr.isOn = false
        erSwitchAtta.isOn = false
    }

    @IBAction func erSegSwitched(_ sender: UISegmentedControl) {
        enableContinueButton()
        if erSeg.selectedSegmentIndex == 0 {
            erLabelEr.text = "A"
            erLabelAtta.text = "B"
        }
        else {
            erLabelEr.text = "C"
            erLabelAtta.text = "D"
        }
    }
    
    @IBAction func erSwitchErSwitched(_ sender: UISwitch) {
        enableContinueButton()
    }
    
    @IBAction func erSwitchAttaSwitched(_ sender: UISwitch) {
        enableContinueButton()
    }
    
    func enableContinueButton() {
        if erSeg.selectedSegmentIndex == 1 && erSwitchEr.isOn == true && erSwitchAtta.isOn {
            erContinueButton.isEnabled = true
        }
    }
}

