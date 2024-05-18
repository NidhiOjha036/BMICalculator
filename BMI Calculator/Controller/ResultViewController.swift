//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Nidhi on 13/05/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        print("color",color)
    }
    

    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
}
