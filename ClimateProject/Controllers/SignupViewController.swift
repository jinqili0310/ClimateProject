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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLabel.alpha = 0
        emailInput.addPadding(padding: .left(20))
        passwordInput.addPadding(padding: .left(20))
        confirmInput.addPadding(padding: .left(20))

        // Do any additional setup after loading the view.
    }
    
    func validateFields() -> String? {
        if emailInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || confirmInput.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields."
        }
        
        let cleanedPassword = passwordInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(testStr: cleanedPassword) == false {
            return "Password is not valid."
        }
        
        let cleanedEmail = emailInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isEmailValid(email: cleanedEmail) == false {
            return "Email is not valid."
        }
        
        return nil
    }
    
    @IBAction func signupPressed(_ sender: UIButton) {
        let error = validateFields()
        
        let email = emailInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().createUser(withEmail: email!, password: password!) { (result, err) in
            if err != nil {
                self.showError("Error creating user.")
            } else {
                
                let db = Firestore.firestore()

                db.collection("users").addDocument(data: [
                    "email": email!,
                    "password": password!,
                    "uid": result!.user.uid
                ]) { (error) in
                    if err != nil {
                        self.showError("Error saving user data.")
                    }
                }
            }
        }
        
        if error != nil {
            showError(error!)
        }
    }
    
    func showError(_ message: String) {
        errorLabel.text = message
        errorLabel.alpha = 1
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
