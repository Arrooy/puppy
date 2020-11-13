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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textInput.delegate = self;
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        num.textColor = sender.isSelected ? UIColor.black : UIColor.blue
    }
    
    //num.text = sender.text!.rangeOfCharacter(from: NSCharacterSet.decimalDigits) != nil ? sender.text : "0"
    
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
    
    
    //Text field delegate
    func textFieldDidBeginEditing(textField: UITextField!) {    //delegate method

    }

    func textFieldShouldEndEditing(textField: UITextField!) -> Bool {  //delegate method
        return false
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
      textField.resignFirstResponder()

        return true
    }}
