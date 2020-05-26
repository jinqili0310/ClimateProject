//
//  Utilities.swift
//  ClimateProject
//
//  Created by Jinqi Li on 4/7/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit

class Utilities {
    
    static func isEmailValid(email:String?) -> Bool {
        
        guard email != nil else { return false }
        
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
        return pred.evaluate(with: email)
    }
    
    static func isPasswordValid(testStr:String?) -> Bool {
        
        guard testStr != nil else { return false }
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        
        return passwordTest.evaluate(with: testStr)
    }
    
    static func isPasswordRight(password:String?, passwordConfirm:String?) -> Bool {
        guard password != nil else { return false }
        guard passwordConfirm != nil else {return false}
        if passwordConfirm == password { return true} else {return false}
    }
}
