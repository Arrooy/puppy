//
//  PuppygramViewController.swift
//  puppygram
//
//  Created by Alumne on 20/11/2020.
//

import UIKit

class PuppygramViewController: UIViewController {

    @IBOutlet weak var titleLabel: UINavigationItem!
    
    @IBOutlet weak var imatgePerfil: UIImageView!
    @IBOutlet weak var nomPerfil: UILabel!
    @IBOutlet weak var mainImatge: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var nomPerfil2: UILabel!
    @IBOutlet weak var comment: UILabel!
    @IBOutlet weak var faXhores: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let attrs = [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font: UIFont(name: "Billabong", size: 24)!
        ]

        UINavigationBar.appearance().titleTextAttributes = attrs
            
        nomPerfil.font = UIFont.boldSystemFont(ofSize: 16)
        nomPerfil2.font = UIFont.boldSystemFont(ofSize: 16)
        
        faXhores.textColor = UIColor.gray
        faXhores.font = UIFont.systemFont(ofSize: 12)
        
        imatgePerfil.layer.borderWidth = 1
        imatgePerfil.layer.masksToBounds = false
        imatgePerfil.layer.borderColor = UIColor.black.cgColor
        imatgePerfil.layer.cornerRadius = imatgePerfil.frame.height/2
        imatgePerfil.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func commentButton(_ sender: Any) {
    }
    
    @IBAction func commentButton(_ sender: Any) {
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
