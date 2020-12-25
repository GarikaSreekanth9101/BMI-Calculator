//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Garika Sreekanth on 25/12/20.
//  Copyright © 2020 Garika Sreekanth. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController
{
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmiValue = "0.0"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func heightChanged(_ sender: UISlider)
    {
        let currentValue = String(format: "%.2f", sender.value)
//        print("Slider changing to \(currentValue)")
        heightLabel.text = "\(currentValue) m"
    }
    
    
    @IBAction func weightChanged(_ sender: UISlider)
    {
        let currentValue = Int(sender.value)
//        print("Slider changing to \(currentValue)")
        weightLabel.text = "\(currentValue) kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton)
    {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height:height,weight:weight)
          
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()

        }
    }
}

