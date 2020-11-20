//
//  PuppygramViewController.swift
//  puppygram
//
//  Created by Alumne on 20/11/2020.
//

import UIKit

class PuppygramViewController: UIViewController {

    @IBOutlet weak var titleLabel: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attrs = [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font: UIFont(name: "Billabong", size: 24)!
        ]

        UINavigationBar.appearance().titleTextAttributes = attrs
            
        // Do any additional setup after loading the view.
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
