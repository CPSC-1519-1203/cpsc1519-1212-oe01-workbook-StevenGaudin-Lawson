//
//  ViewController.swift
//  HelloiOSWorld
//
//  Created by user209696 on 1/17/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Custom Outlets
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var ageTextField: UITextField!
    
    // MARK: View Events
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }//End viewDidLoad

    // MARK: Custom Actions
    @IBAction func changeGreeting(_ sender: UIButton) {
        if let name = nameTextField.text {
            if let age = ageTextField.text {
                let message = "Hello \(name). You are \(age) years old."
                resultLabel.text = message
                
            }//End age
        }//End name
        
    }//End changeGreeting
    
    
    @IBAction func dismissKeyboard(_ sender: UITextField) {
        sender.resignFirstResponder()
    }//End dismissKeyboard
    
    
    @IBAction func dismissKeyboardTap(_ sender: Any) {
        ageTextField.resignFirstResponder()
        nameTextField.resignFirstResponder()
    }
    
}//End ViewController



