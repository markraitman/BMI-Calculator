//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Марк Райтман on 04.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Outlets
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    //MARK: Actions
    @IBAction func heghtSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    

}

