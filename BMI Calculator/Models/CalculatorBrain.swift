//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Garika Sreekanth on 25/12/20.
//  Copyright © 2020 Garika Sreekanth. All rights reserved.
//

import UIKit

struct CalculatorBrain
{
    var bmi:BMI?
    
    mutating func calculateBMI(height:Float,weight:Float)
    {
        let bmiValue = (weight / (height * height))
        
        if bmiValue < 18.5
        {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9
        {
            bmi = BMI(value: bmiValue, advice: "Fit As a Fiddle", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else
        {
            bmi = BMI(value: bmiValue, advice: "Eat Less Pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    func getBMIValue() -> String
    {
        let bmiTo1DecimalPlace = String(format: "%.1f",bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String
    {
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor
    {
        return bmi?.color ??  #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }
    
}
