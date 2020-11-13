//
//  ViewController.swift
//  puppygram
//
//  Created by Alumne on 13/11/2020.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var num: UILabel!
    
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var textInput: UITextField!  
    
    @IBOutlet var stepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textInput.delegate = self;
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        num.textColor = sender.selectedSegmentIndex == 0 ? UIColor.black : UIColor.blue
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        num.font = num.font.withSize(CGFloat(sender.value))
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            activityIndicator.startAnimating()
            progressBar.progress = 100
        }else{
            activityIndicator.stopAnimating()
            progressBar.progress = 0
        }
    }
    
    @IBAction func stepperValChanged(_ sender: UIStepper) {
        num.text = String(Int(sender.value))
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        let onlyNumbers = textField.text!.rangeOfCharacter(from: NSCharacterSet.decimalDigits.inverted) == nil
        if onlyNumbers && Double(textField.text!)! >= 0 && Double(textField.text!)! <= 100 {
            num.text = String(Int(textField.text!)!)
            stepper.value = Double(textField.text!)!
        }else{
            showAlert(title: "Impossible posar aquest valor!", message: "Nomes es pot posar valors de 0 - 100)")
        }
        textField.text = ""
        
        return true
    }
    
    func showAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message:message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Acceptar", style: .cancel, handler: nil))
        present(alert,animated:true,completion: nil)
        
    }
}


