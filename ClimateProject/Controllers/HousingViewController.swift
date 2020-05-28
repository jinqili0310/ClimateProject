//
//  HousingViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/28/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase

class HousingViewController: UIViewController {
    
    var nameText: String!
    var documentID: String!
    @IBOutlet weak var onCam: UIButton!
    @IBOutlet weak var offCam: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
// MARK: - Save Housing
        @IBAction func housingSelected(_ sender: UIButton) {
            print(sender.titleLabel!.text)
            let housingInput = sender.titleLabel!.text
            let db = Firestore.firestore()
            db.collection("users").document(documentID!).setData(["housing": housingInput], merge: true)
            
            performSegue(withIdentifier: "goToCountry", sender: self)
            
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
            if segue.identifier == "goToCountry" {
                let countryVC = segue.destination as! CountryViewController
                countryVC.documentID = documentID
                countryVC.nameText = nameText
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
