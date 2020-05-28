//
//  AgeEduViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/28/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase

class AgeEduViewController: UIViewController {
    
    var nameText: String!
    var documentID: String!
    var freshmanOn: Bool = false
    var sophomoreOn: Bool = false
    var juniorOn: Bool = false
    var seniorOn: Bool = false
    
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var eduDrop: UIStackView!
    @IBOutlet weak var eduBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eduDrop.isHidden = true
        
// MARK: - Keyboard Issues
        
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
    self.view.addGestureRecognizer(tapGesture)
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }

    @IBAction func eduDrodown(_ sender: UIButton) {
        eduDrop.isHidden = false
    }
    
    @IBAction func freshman(_ sender: UIButton) {
        freshmanOn = true
        sophomoreOn = false
        juniorOn = false
        seniorOn = false
        eduDrop.isHidden = true
        eduBtn.setTitle("Freshman", for: .normal)
    }
    @IBAction func sophomore(_ sender: UIButton) {
        sophomoreOn = true
        freshmanOn = false
        juniorOn = false
        seniorOn = false
        eduDrop.isHidden = true
        eduBtn.setTitle("Sophomore", for: .normal)
    }
    @IBAction func junior(_ sender: UIButton) {
        juniorOn = true
        freshmanOn = false
        sophomoreOn = false
        seniorOn = false
        eduDrop.isHidden = true
        eduBtn.setTitle("Junior", for: .normal)
    }
    @IBAction func senior(_ sender: UIButton) {
        seniorOn = true
        freshmanOn = false
        sophomoreOn = false
        juniorOn = false
        eduDrop.isHidden = true
        eduBtn.setTitle("Senior", for: .normal)
    }
    
    // MARK: - Save Age & Edu
    @IBAction func genderSelected(_ sender: UIButton) {
        let ageInput = ageField.text!
        var eduInput: String!
        if freshmanOn {
            eduInput = "Freshman"
        }
        if sophomoreOn {
            eduInput = "Sophomore"
        }
        if juniorOn {
            eduInput = "Junior"
        }
        if seniorOn {
            eduInput = "Senior"
        }
        let db = Firestore.firestore()
        db.collection("users").document(documentID!).setData(["age": ageInput, "education": eduInput], merge: true)
        
        performSegue(withIdentifier: "goToHousing", sender: self)
        
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
        if segue.identifier == "goToHousing" {
            let housingVC = segue.destination as! HousingViewController
            housingVC.documentID = documentID
            housingVC.nameText = nameText
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

// MARK: - Keyboard Issues

@objc func keyboardWillShow(notification: NSNotification) {
        print(self.view.frame.origin.y)
    let textSize = ageField.frame.origin.y + ageField.frame.height
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
