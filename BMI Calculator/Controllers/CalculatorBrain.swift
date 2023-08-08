//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Akash Arafat on 2023/08/08.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTO1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTO1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (pow(height, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies.", color: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!.", color: #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies.", color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        }
    }
    
}
