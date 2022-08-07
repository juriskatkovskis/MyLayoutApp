//
//  infoViewController.swift
//  MyLayoutApp
//
//  Created by juris.katkovskis on 07/08/2022.
//

import UIKit

class infoViewController: ViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    var infoText = "No info"
    var appDescText = "No info"

    override func viewDidLoad() {
        super.viewDidLoad()
        if !infoText.isEmpty && !appDescText.isEmpty{
            infoLabel.text = infoText
            descLabel.text = appDescText
        }

        // Do any additional setup after loading the view.
    }
    

   
}
