//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Марк Райтман on 05.02.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    //MARK: - Properties
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    

    //MARK: - Outlets
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    
    //MARK: - Actions
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
