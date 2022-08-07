//
//  ViewController.swift
//  MyLayoutApp
//
//  Created by juris.katkovskis on 07/08/2022.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var StyleButtonCollection: [UIButton]!
    
    @IBOutlet weak var buttonAOutlet: UIButton!
    
    @IBOutlet weak var buttonBOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StyleButtonCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 2
        }
    }


    @IBAction func buttonFTapped(_ sender: Any) {
        
        print("Button F Tapped!")
    }
    
    @IBAction func buttonATapped(_ sender: Any) {
        
        buttonAOutlet.isHidden = true
        view.backgroundColor = UIColor.blue
        navigationItem.title = "Background color changed!"
    }
    
    
    
    
    

        

// MARK: - Navigation

// In a storyboard-based application, you will often want // to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    if segue.identifier == "appID" {
    // Get the new view controller using segue.destination.
        guard let vc = segue.destination as? infoViewController else {
            return}
        vc.infoText = "I am passing some information"
        vc.appDescText = "Here"
    // Pass the selected object to the new view controller.
}



}
}
