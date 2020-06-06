//
//  ChooseAniViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/28/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase

class ChooseAniViewController: UIViewController {

    @IBOutlet weak var turtleBtn: UIButton!
    var documentID: String!
    var nameText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func turtlePressed(_ sender: UIButton) {
        sender.setImage(UIImage(named: "turtleOn"), for: .normal)
    }
    
// MARK: - Navigation
        
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            if documentID != nil {
                return true
            } else {
                return false
            }
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToOne" {
            let oneVC = segue.destination as! TurtleOneViewController
            oneVC.documentID = documentID
            oneVC.nameText = nameText
        }
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
