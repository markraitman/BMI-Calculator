//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Марк Райтман on 04.02.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //MARK: Properties
    var calculatorBrain = CalculatorBrain()
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Outlets
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var hightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    //MARK: Actions
    @IBAction func heghtSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = hightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    //MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.bmiAdvice = calculatorBrain.getAdvice()
            destinationVC.bmiColor = calculatorBrain.getColor()
        }
    }
    
    
}

