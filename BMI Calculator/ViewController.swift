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
    @IBAction func heghtSliderChanged(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(String(format: "%.0f", sender.value))
    }
    

}

