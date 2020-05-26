//
//  GenderViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/12/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase

class GenderViewController: UIViewController {
    
    var documentID: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func genderSelected(_ sender: UIButton) {
        print(sender.titleLabel!.text)
        let genderInput = sender.titleLabel!.text
        let db = Firestore.firestore()
        db.collection("users").document(documentID!).setData(["gender": genderInput], merge: true)
        
        performSegue(withIdentifier: "goToAgeEdu", sender: self)
        
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
