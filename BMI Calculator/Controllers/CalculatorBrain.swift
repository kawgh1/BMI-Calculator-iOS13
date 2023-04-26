//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by J on 4/26/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?

    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Consult your doctor for more advice!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = Float(weight / (height * height))
       
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, advice: "Eat Mor Chikin", color: #colorLiteral(red: 0, green: 0.651, blue: 0.9294, alpha: 1) /* light blue #00a6ed */)
        } else if bmiValue > 24.5 {
            bmi = BMI(value: bmiValue, advice: "Eat Less of the things", color: UIColor(red: 255/255, green: 122/255, blue: 144/255, alpha: 1.0) /* light red #ff7a90 */)
        } else {
            bmi = BMI(value: bmiValue, advice: "You're fit as a fiddle!", color: UIColor(red: 0, green: 0.9686, blue: 0.7725, alpha: 1.0) /* light green #00f7c5 */)
        }
    }
}
