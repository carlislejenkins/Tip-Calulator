//
//  ViewController.swift
//  Tip Calulator
//
//  Created by Barlisle on 9/10/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
   
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    @IBAction func calculateTip(_ sender: Any) {
        //get initi bill  amount and calculate tip
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        
        
        //calculation
        let tip = bill *  tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update the tip and total lables
        tipPercentageLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
}

