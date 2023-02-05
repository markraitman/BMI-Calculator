//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Марк Райтман on 05.02.2023.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    //MARK: Properties
    var bmiValue = "0.0"
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
    
    
    
}
