//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Benjamin Broadstone on 21/08/2019.
//  Copyright © 2020 Benjamin Broadstone. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain: CalculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightValueChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)in"
    }
    
    @IBAction func weightValueChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)lbs"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.bmi(heightSlider.value, weightSlider.value)
        }
    }
}
