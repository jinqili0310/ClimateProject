//
//  SignupViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 4/7/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignupViewController: UIViewController {
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var confirmInput: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    var documentId: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLabel.alpha = 0
        emailInput.addPadding(padding: .left(20))
        passwordInput.addPadding(padding: .left(20))
        confirmInput.addPadding(padding: .left(20))
        
// MARK: - Keyboard issues
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }
    
// MARK: - Save user data
    
    func validateFields() -> String? {
        if emailInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || confirmInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields."
        }
        
        let cleanedPassword = passwordInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(testStr: cleanedPassword) == false {
            return "Password is not valid."
        }
        
        let confirmPassword = confirmInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordRight(password: cleanedPassword, passwordConfirm: confirmPassword) == false {
            return "Please confirm password again."
        }
        
        let cleanedEmail = emailInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isEmailValid(email: cleanedEmail) == false {
            return "Email is not valid."
        }
        
        return nil
    }
    
    @IBAction func signupPressed(_ sender: UIButton) {
        let error = validateFields()
        
        let db = Firestore.firestore()
        let newUser = db.collection("users").document()
        
        let email = emailInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if error != nil {
            showError(error!)
        } else {
            Auth.auth().createUser(withEmail: email!, password: password!) { (result, err) in
                if err != nil {
                    self.showError("Error creating user.")
                } else {
                    newUser.setData(["email": email!, "password": password!, "documentId": newUser.documentID], merge: true) { (error) in
                        if err != nil {
                            self.showError("Error saving user data.")
                        } else {
                            self.performSegue(withIdentifier: "goToWelcome", sender: self)
                        }
                    }
                    let userID = newUser.documentID
                    let newID = UserInfo(documentID: userID, email: email!, password: password!)
                    self.documentId = newID.documentID
                }
            }
        }
        
    }
    
    func showError(_ message: String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
// MARK: - Navigation
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let error = validateFields()
        
        print("error \(error)")
        
        if error != nil {
            return false
        } else {
            if documentId != nil {
                return true
            } else {
                self.showError("Uploading data, please wait a second.")
                return false
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToWelcome" {
            let welcomeVC = segue.destination as! WelcomeViewController

            if documentId != nil {
                print("yes \(documentId!)")
                welcomeVC.documentID = documentId!
            }
            
        }
    }
    
// MARK: - Keyboard issues

    @objc func keyboardWillShow(notification: NSNotification) {
            print(self.view.frame.origin.y)
        let textSize = errorLabel.frame.origin.y
        print(textSize)
            if let keyboardSize = (notification.userInfo? [UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if self.view.frame.origin.y == 0 {
                    self.view.frame.origin.y += self.view.frame.height - (keyboardSize.height + textSize)
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
