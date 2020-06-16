//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Benjamin Broadstone on 6/16/20.
//  Copyright © 2020 Ben Broadstone. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    lazy var bmi: (Float, Float) -> String = { (height: Float, weight: Float) -> String in String(format: "%.1f", ((weight / (height*height)) * 703))
    }
}
