//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by J on 4/26/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

// This View Controller was for demoing how to make a ViewController from scratch
// It is not used in the project

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        
        
        
    }
}
