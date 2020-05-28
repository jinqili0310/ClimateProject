//
//  WelcomeViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/11/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase

class WelcomeViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    
    var documentID: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.addPadding(padding: .left(20))

// MARK: - Keyboard Issues
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }
    
// MARK: - Save Name
    
    @IBAction func nameSaved(_ sender: UIButton) {
        let nameInput = nameField.text!
        let db = Firestore.firestore()
        
        if documentID != nil {
            print("ok \(documentID!)")
            db.collection("users").document(documentID!).setData(["name": nameInput], merge: true)

            performSegue(withIdentifier: "goToGender", sender: self)
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
        if segue.identifier == "goToGender" {
            let genderVC = segue.destination as! GenderViewController
            genderVC.documentID = documentID
            genderVC.nameText = nameField.text
        }
    }
    
// MARK: - Keyboard Issues

    @objc func keyboardWillShow(notification: NSNotification) {
            print(self.view.frame.origin.y)
        let textSize = nameField.frame.origin.y + nameField.frame.height
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

}
