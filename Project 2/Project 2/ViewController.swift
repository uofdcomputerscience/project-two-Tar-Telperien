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
    
    //View Controller Atta
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        erContinueButton.isEnabled = false
        erLabelEr.text = "A"
        erLabelAtta.text = "B"
    }

    @IBAction func erSegSwitched(_ sender: UISegmentedControl) {
        enableContinueButton()
    }
    
    @IBAction func erSwitchErSwitched(_ sender: UISwitch) {
        enableContinueButton()
        if erSwitchEr.isOn {
            erLabelEr.text = "C"
        }
    }
    
    @IBAction func erSwitchAttaSwitched(_ sender: UISwitch) {
        enableContinueButton()
        if erSwitchAtta.isOn {
            erLabelAtta.text = "D"
        }
    }
    
    @IBAction func stepperStepped(_ sender: UIStepper) { //Why is this not hooked up, and why will my stepper not connect to an outlet? It will only connect to an action, and then the action can't be hooked up to the button. :-|
        
        if UIStepper.value == 5 {
            stepperValFive = true;
        }
        enableContinueButton()
    }
    
    
    
    func enableContinueButton() {
        if erSeg.selectedSegmentIndex == 1 && erSwitchEr.isOn == true && erSwitchAtta.isOn && stepperValFive == true; {
            erContinueButton.isEnabled = true
        }
    }
}

