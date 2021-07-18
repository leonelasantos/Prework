//
//  ViewController.swift
//  Prework
//
//  Created by Leonel Santos on 7/18/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var sliderPercent: UILabel!
    @IBOutlet weak var splitNum: UITextField!
    @IBOutlet weak var amountPer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipSliderCalc(_ sender: Any) {
        sliderPercent.text = String(format: "%2d%%", Int(tipSlider.value))
        let bill = Double(billAmountTextField.text!) ?? 0
        let split = Double(splitNum.text!) ?? 1
        let tipPercent = Double(Int(tipSlider.value)) / 100.0
        let tip = bill * tipPercent
        let total = bill + tip
        let perPerson = total / split
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        amountPer.text = String(format: "$%.2f", perPerson)
        
    }
    
}

