//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightValue.text = String(format: "%.2f", sender.value)+"m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightValue.text = String(format: "%.0f", sender.value)+"Kg"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        
        let bmi = weight / pow(height, 2)
        
        let secondView = SecondViewController()
        secondView.bmiValue = String(format: "%.1f", bmi)
        self.present(secondView, animated: true, completion: nil)
        
        
    }
    
}

