//
//  ViewControllerNelde.swift
//  Project 2
//
//  Created by Amelia on 05/11/2019.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewControllerNelde: UIViewController {
    
    @IBOutlet weak var neldeSpinner: UIActivityIndicatorView!
    @IBOutlet weak var neldePicker: UIDatePicker!
    @IBOutlet weak var neldeContinueButton: UIButton!
    
    var isChristmas: Bool = false
    
    let christmasComponents = DateComponents(calendar: .current, year: 2019, month: 12, day: 25)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        neldeContinueButton.isEnabled = false
        neldeSpinner.startAnimating()
        neldePicker.datePickerMode = .date
    }
    
    @IBAction func neldePickerSpun(_ sender: UIDatePicker) {
        enableContinueButton()
    }
    
    
    func enableContinueButton() {
        if Calendar.current.isDate(neldePicker.date, inSameDayAs: christmasComponents.date!) {
            neldeContinueButton.isEnabled = true
            neldeSpinner.stopAnimating()
        }
    }
}
