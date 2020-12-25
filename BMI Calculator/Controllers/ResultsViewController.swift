//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Garika Sreekanth on 25/12/20.
//  Copyright © 2020 Garika Sreekanth. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

      @IBOutlet weak var bmiLabel: UILabel!
      @IBOutlet weak var adviceLabel: UILabel!
      
      var bmiValue:String?
      var advice:String?
      var color:UIColor?
      
      override func viewDidLoad()
      {
          super.viewDidLoad()
          
          bmiLabel.text = bmiValue
          adviceLabel.text = advice
          view.backgroundColor = color

      }
      
      @IBAction func recalculatePressed(_ sender: UIButton)
      {
          self.dismiss(animated: true, completion: nil)
      }
      
}
