//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Nidhi on 11/05/24.
//

import UIKit

//
//Under 18.5    Underweight
//18.5 - 24.9    Normal
//25 - 29.9    Overweight
//30 and over    Obese

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel:UILabel!
    @IBOutlet weak var weightLabel:UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
       // BMI =  Weight(kg)/Height(m2)
        
        let weight = weightSlider.value
        let height = heightSlider.value
        
        calculatorBrain.calculateBMI(height:height, weight:weight)
        
        
        self.performSegue(withIdentifier: "ResultViewController", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ResultViewController"{
            
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
    

}

