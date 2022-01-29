//
//  ViewController.swift
//  CPSC1519-Quiz01-SLawson
//
//  Created by user209696 on 1/28/22.
// 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

import UIKit

class ViewController: UIViewController {
    
    // MARK: Custom Outlets
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var numberButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: View Events
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }//End viewDidLoad()
    
    // MARK: Custom Actions
    @IBAction func dismissKeyboardTap(_ sender: Any) {
        numberTextField.resignFirstResponder()
    }//End dismissKeyboardTap
    
    
    @IBAction func displayEvenOrOdd(_ sender: UIButton) {
        let number  = Int(numberTextField.text!) ?? 0
            if number % 2 == 0 {
                let message = "EVEN number \(number)"
                resultLabel.text = message
            } else {
                let message = "ODD number \(number)"
                resultLabel.text = message
            }
        
    }//End displayEvenOrOdd
    


}//End UIViewController


