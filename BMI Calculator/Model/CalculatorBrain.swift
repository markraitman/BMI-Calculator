//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Марк Райтман on 05.02.2023.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    //MARK: - Properties  
    var bmi: BMI?
    
    //MARK: - Methods
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / powf(height, 2)
        bmi = BMI(value: bmiValue, advice: "", color: .red)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: .systemTeal)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: .systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .systemRed)
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.0f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .clear
    }
}

