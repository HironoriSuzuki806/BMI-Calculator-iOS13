//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightValueLabel.text = "\(height)m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightValueLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value

        let bmi = weight / (height * height)
        
        let seconedVC = SecondViewController()
        seconedVC.bmiValue = String(format: "%.1f", bmi)
                
        self.present(seconedVC, animated: true, completion: nil)
    }
}

