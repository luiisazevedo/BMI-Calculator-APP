//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    //created to acess the value that its beeing changed when the user slides the button
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func highterChanged(_ sender: UISlider) {
        let height = String(format: "%.1f", sender.value )
        heightLabel.text = "\(height)m"
    }
    
    
    @IBAction func weigherChanged(_ sender: UISlider) {
        let weight = String(format: "%.0 f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        // calling the values from the sliders to can calculate
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        
        let secondVC = SecondViewController()
        
        secondVC.bmiValue = String(format: "%.1f", bmi )
        self.present(secondVC, animated: true, completion: nil)
    }
    
}

