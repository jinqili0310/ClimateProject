//
//  ViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 4/5/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.performSegue(withIdentifier: "goToSignIn", sender: self)
        }
    }

}

