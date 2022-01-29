//
//  ViewController.swift
//  CPSC1519-Assignment01-SLawson
//
//  Created by user209696 on 1/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Custom Functions
    func convertToFahrenheit(forCelciusValue celcius: Double) -> Double {
        var fahrenheitValue = 0.00
        
        fahrenheitValue = (celcius * 9/5) + 32
        fahrenheitValue = round(fahrenheitValue)/10
        
        return fahrenheitValue
    }//End converttoFahrenheit
    
    var currentCelciusValue = 0.00

    // MARK: Custum Outlets
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var fahrenheightLabel: UILabel!
    
    @IBOutlet weak var celciusTextField: UITextField!
    
    @IBOutlet weak var celciusStepper: UIStepper!
    
    @IBOutlet weak var celciusSlider: UISlider!
    
    
    // MARK: View Events
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        celciusTextField.text = "\(currentCelciusValue)"
    }//End viewDidLoad()

    // MARK: Custom Actions
    @IBAction func changeGreeting(_ sender: UIButton) {
        if let name = nameTextField.text {
            if let age = ageTextField.text {
                let message = "Hello \(name). You are \(age) years old."
                resultLabel.text = message
            }//End let age
        }//End let name
    }//End changeGreeting()
    
    @IBAction func dismissKeyboard(_ sender: UITextField) {
        sender.resignFirstResponder()
    }//End dismissKeyboard()
    
    
    @IBAction func dismissKeyboardTap(_ sender: Any) {
        ageTextField.resignFirstResponder()
        nameTextField.resignFirstResponder()
        celciusTextField.resignFirstResponder()
    }//End dismissKeyboardTap()
    
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        currentCelciusValue = Double(celciusTextField.text!) ?? 0
        let fahrenheitValue = convertToFahrenheit(forCelciusValue: currentCelciusValue)
        fahrenheightLabel.text = "\(fahrenheitValue)℉"
        
        celciusStepper.value = currentCelciusValue
        celciusSlider.value = Float(currentCelciusValue)
        
    }//End convertButtonTapped()
    
    
    @IBAction func celciusStepperChanged(_ sender: UIStepper) {
        currentCelciusValue = celciusStepper.value
        let fahrenheitValue = convertToFahrenheit(forCelciusValue: currentCelciusValue)
        fahrenheightLabel.text = "\(fahrenheitValue)℉"
        celciusTextField.text = "\(currentCelciusValue)"
        celciusSlider.value = Float(currentCelciusValue)
    }//End celciusStepperChanged()
    
    
    @IBAction func celciusSliderChanged(_ sender: UISlider) {
        currentCelciusValue = Double(celciusSlider.value)
        let fahrenheitValue = convertToFahrenheit(forCelciusValue: currentCelciusValue)
        fahrenheightLabel.text = "\(fahrenheitValue)℉"
        celciusTextField.text = "\(currentCelciusValue)"
        celciusStepper.value = currentCelciusValue
    }//End celciusSliderChanged()
    
}//End UIViewController

