//
//  DemoEndViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/28/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase

class DemoEndViewController: UIViewController {

    var nameText: String!
    var documentID: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func demoEndBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goToCitizen", sender: self)
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
        if segue.identifier == "goToCitizen" {
            let citizenVC = segue.destination as! CitizenViewController
            citizenVC.documentID = documentID
            citizenVC.nameText = nameText
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
