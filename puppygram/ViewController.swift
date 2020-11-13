//
//  ViewController.swift
//  puppygram
//
//  Created by Alumne on 13/11/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        num.textColor = sender.isSelected ? UIColor.black : UIColor.blue
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        num.font.withSize(CGFloat(sender.value))
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
