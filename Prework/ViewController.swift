//
//  ViewController.swift
//  Prework
//
//  Created by AJ Grant on 1/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TotalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
//        Get bill amount
        let bill = Double(BillAmountField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmountLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
    
}

