//
//  CountryViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/28/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase

class CountryViewController: UIViewController {
    
    var nameText: String!
    @IBOutlet weak var countryField: UITextField!
    var documentID: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
// MARK: - Keyboard Issues
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }
    
// MARK: - Save Name
        
        @IBAction func countrySaved(_ sender: UIButton) {
            let countryInput = countryField.text!
            let db = Firestore.firestore()
            
            if documentID != nil {
                db.collection("users").document(documentID!).setData(["country of origin": countryInput], merge: true)

                performSegue(withIdentifier: "goToDemoEnd", sender: self)
            }
            
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
            if segue.identifier == "goToDemoEnd" {
                let demoendVC = segue.destination as! DemoEndViewController
                demoendVC.documentID = documentID
                demoendVC.nameText = nameText
            }
        }
        
// MARK: - Keyboard Issues

        @objc func keyboardWillShow(notification: NSNotification) {
                print(self.view.frame.origin.y)
            let textSize = countryField.frame.origin.y + countryField.frame.height
            print(textSize)
                if let keyboardSize = (notification.userInfo? [UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                    if self.view.frame.origin.y == 0 {
                        if (keyboardSize.height+textSize)>self.view.frame.height {
                            self.view.frame.origin.y += self.view.frame.height - (keyboardSize.height + textSize)
                        }
                    }
                    print(self.view.frame.origin.y)
                }
            }
            
            @objc func keyboardWillHide(notification: NSNotification) {
                if self.view.frame.origin.y != 0 {
                    self.view.frame.origin.y = 0
                }
                print(self.view.frame.origin.y)
            }
            
            @objc func dismissKeyboard() {
                view.endEditing(true)
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
