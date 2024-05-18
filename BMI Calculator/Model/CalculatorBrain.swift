//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nidhi on 14/05/24.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
  //  var bmi:Float?
    var bmi:BMI?
    
    mutating func calculateBMI(height:Float, weight:Float) {
        
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.systemPink)
        }
        
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice "
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
  
}