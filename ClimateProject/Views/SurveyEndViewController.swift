//
//  SurveyEndViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/28/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase

class SurveyEndViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var documentID: String!
    var nameText: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = nameText+"!"

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
