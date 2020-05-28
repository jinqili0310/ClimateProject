//
//  CitizenViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/28/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import Firebase

class CitizenViewController: UIViewController {
    
    var nameText: String!
    @IBOutlet weak var errorLabel: UILabel!
    var documentID: String!
    @IBOutlet weak var one1: UIButton!
    @IBOutlet weak var one2: UIButton!
    @IBOutlet weak var one3: UIButton!
    @IBOutlet weak var one4: UIButton!
    @IBOutlet weak var one5: UIButton!
    @IBOutlet weak var two1: UIButton!
    @IBOutlet weak var two2: UIButton!
    @IBOutlet weak var two3: UIButton!
    @IBOutlet weak var two4: UIButton!
    @IBOutlet weak var two5: UIButton!
    @IBOutlet weak var three1: UIButton!
    @IBOutlet weak var three2: UIButton!
    @IBOutlet weak var three3: UIButton!
    @IBOutlet weak var three4: UIButton!
    @IBOutlet weak var three5: UIButton!
    @IBOutlet weak var four1: UIButton!
    @IBOutlet weak var four2: UIButton!
    @IBOutlet weak var four3: UIButton!
    @IBOutlet weak var four4: UIButton!
    @IBOutlet weak var four5: UIButton!
    @IBOutlet weak var five1: UIButton!
    @IBOutlet weak var five2: UIButton!
    @IBOutlet weak var five3: UIButton!
    @IBOutlet weak var five4: UIButton!
    @IBOutlet weak var five5: UIButton!
    @IBOutlet weak var six1: UIButton!
    @IBOutlet weak var six2: UIButton!
    @IBOutlet weak var six3: UIButton!
    @IBOutlet weak var six4: UIButton!
    @IBOutlet weak var six5: UIButton!
    @IBOutlet weak var seven1: UIButton!
    @IBOutlet weak var seven2: UIButton!
    @IBOutlet weak var seven3: UIButton!
    @IBOutlet weak var seven4: UIButton!
    @IBOutlet weak var seven5: UIButton!
    @IBOutlet weak var eight1: UIButton!
    @IBOutlet weak var eight2: UIButton!
    @IBOutlet weak var eight3: UIButton!
    @IBOutlet weak var eight4: UIButton!
    @IBOutlet weak var eight5: UIButton!
    @IBOutlet weak var nine1: UIButton!
    @IBOutlet weak var nine2: UIButton!
    @IBOutlet weak var nine3: UIButton!
    @IBOutlet weak var nine4: UIButton!
    @IBOutlet weak var nine5: UIButton!
    @IBOutlet weak var ten1: UIButton!
    @IBOutlet weak var ten2: UIButton!
    @IBOutlet weak var ten3: UIButton!
    @IBOutlet weak var ten4: UIButton!
    @IBOutlet weak var ten5: UIButton!
    @IBOutlet weak var eleven1: UIButton!
    @IBOutlet weak var eleven2: UIButton!
    @IBOutlet weak var eleven3: UIButton!
    @IBOutlet weak var eleven4: UIButton!
    @IBOutlet weak var eleven5: UIButton!
    @IBOutlet weak var twelve1: UIButton!
    @IBOutlet weak var twelve2: UIButton!
    @IBOutlet weak var twelve3: UIButton!
    @IBOutlet weak var twelve4: UIButton!
    @IBOutlet weak var twelve5: UIButton!
    
    var oneInput: String!
    var twoInput: String!
    var threeInput: String!
    var fourInput: String!
    var fiveInput: String!
    var sixInput: String!
    var sevenInput: String!
    var eightInput: String!
    var nineInput: String!
    var tenInput: String!
    var elevenInput: String!
    var twelveInput: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLabel.isHidden = true

        // Do any additional setup after loading the view.
    }
    
// MARK: - Survey
    @IBAction func surveyOne(_ sender: UIButton) {
        let choiceOne: String = sender.titleLabel!.text!
        print("1-\(choiceOne)")
            
        switch choiceOne {
        case "1":
            one1.setImage(UIImage(named: "radio1"), for: .normal)
            one2.setImage(UIImage(named: "radio0"), for: .normal)
            one3.setImage(UIImage(named: "radio0"), for: .normal)
            one4.setImage(UIImage(named: "radio0"), for: .normal)
            one5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            one2.setImage(UIImage(named: "radio1"), for: .normal)
            one1.setImage(UIImage(named: "radio0"), for: .normal)
            one3.setImage(UIImage(named: "radio0"), for: .normal)
            one4.setImage(UIImage(named: "radio0"), for: .normal)
            one5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            one3.setImage(UIImage(named: "radio1"), for: .normal)
            one1.setImage(UIImage(named: "radio0"), for: .normal)
            one2.setImage(UIImage(named: "radio0"), for: .normal)
            one4.setImage(UIImage(named: "radio0"), for: .normal)
            one5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            one4.setImage(UIImage(named: "radio1"), for: .normal)
            one1.setImage(UIImage(named: "radio0"), for: .normal)
            one2.setImage(UIImage(named: "radio0"), for: .normal)
            one3.setImage(UIImage(named: "radio0"), for: .normal)
            one5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            one5.setImage(UIImage(named: "radio1"), for: .normal)
            one1.setImage(UIImage(named: "radio0"), for: .normal)
            one2.setImage(UIImage(named: "radio0"), for: .normal)
            one3.setImage(UIImage(named: "radio0"), for: .normal)
            one4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            one1.setImage(UIImage(named: "radio0"), for: .normal)
            one2.setImage(UIImage(named: "radio0"), for: .normal)
            one3.setImage(UIImage(named: "radio0"), for: .normal)
            one4.setImage(UIImage(named: "radio0"), for: .normal)
            one5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        oneInput = choiceOne
    }
    
    @IBAction func surveyTwo(_ sender: UIButton) {
        let choiceTwo: String = sender.titleLabel!.text!
        print("2-\(choiceTwo)")
        
        switch choiceTwo {
        case "1":
            two1.setImage(UIImage(named: "radio1"), for: .normal)
            two2.setImage(UIImage(named: "radio0"), for: .normal)
            two3.setImage(UIImage(named: "radio0"), for: .normal)
            two4.setImage(UIImage(named: "radio0"), for: .normal)
            two5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            two2.setImage(UIImage(named: "radio1"), for: .normal)
            two1.setImage(UIImage(named: "radio0"), for: .normal)
            two3.setImage(UIImage(named: "radio0"), for: .normal)
            two4.setImage(UIImage(named: "radio0"), for: .normal)
            two5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            two3.setImage(UIImage(named: "radio1"), for: .normal)
            two1.setImage(UIImage(named: "radio0"), for: .normal)
            two2.setImage(UIImage(named: "radio0"), for: .normal)
            two4.setImage(UIImage(named: "radio0"), for: .normal)
            two5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            two4.setImage(UIImage(named: "radio1"), for: .normal)
            two1.setImage(UIImage(named: "radio0"), for: .normal)
            two2.setImage(UIImage(named: "radio0"), for: .normal)
            two3.setImage(UIImage(named: "radio0"), for: .normal)
            two5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            two5.setImage(UIImage(named: "radio1"), for: .normal)
            two1.setImage(UIImage(named: "radio0"), for: .normal)
            two2.setImage(UIImage(named: "radio0"), for: .normal)
            two3.setImage(UIImage(named: "radio0"), for: .normal)
            two4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            two1.setImage(UIImage(named: "radio0"), for: .normal)
            two2.setImage(UIImage(named: "radio0"), for: .normal)
            two3.setImage(UIImage(named: "radio0"), for: .normal)
            two4.setImage(UIImage(named: "radio0"), for: .normal)
            two5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        twoInput = choiceTwo
    }
    
    @IBAction func surveyThree(_ sender: UIButton) {
        let choiceThree: String = sender.titleLabel!.text!
        print("3-\(choiceThree)")
        
        switch choiceThree {
        case "1":
            three1.setImage(UIImage(named: "radio1"), for: .normal)
            three2.setImage(UIImage(named: "radio0"), for: .normal)
            three3.setImage(UIImage(named: "radio0"), for: .normal)
            three4.setImage(UIImage(named: "radio0"), for: .normal)
            three5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            three2.setImage(UIImage(named: "radio1"), for: .normal)
            three1.setImage(UIImage(named: "radio0"), for: .normal)
            three3.setImage(UIImage(named: "radio0"), for: .normal)
            three4.setImage(UIImage(named: "radio0"), for: .normal)
            three5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            three3.setImage(UIImage(named: "radio1"), for: .normal)
            three1.setImage(UIImage(named: "radio0"), for: .normal)
            three2.setImage(UIImage(named: "radio0"), for: .normal)
            three4.setImage(UIImage(named: "radio0"), for: .normal)
            three5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            three4.setImage(UIImage(named: "radio1"), for: .normal)
            three1.setImage(UIImage(named: "radio0"), for: .normal)
            three2.setImage(UIImage(named: "radio0"), for: .normal)
            three3.setImage(UIImage(named: "radio0"), for: .normal)
            three5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            three5.setImage(UIImage(named: "radio1"), for: .normal)
            three1.setImage(UIImage(named: "radio0"), for: .normal)
            three2.setImage(UIImage(named: "radio0"), for: .normal)
            three3.setImage(UIImage(named: "radio0"), for: .normal)
            three4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            three1.setImage(UIImage(named: "radio0"), for: .normal)
            three2.setImage(UIImage(named: "radio0"), for: .normal)
            three3.setImage(UIImage(named: "radio0"), for: .normal)
            three4.setImage(UIImage(named: "radio0"), for: .normal)
            three5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        threeInput = choiceThree
    }
    
    @IBAction func surveyFour(_ sender: UIButton) {
        let choiceFour: String = sender.titleLabel!.text!
        print("4-\(choiceFour)")
        
        switch choiceFour {
        case "1":
            four1.setImage(UIImage(named: "radio1"), for: .normal)
            four2.setImage(UIImage(named: "radio0"), for: .normal)
            four3.setImage(UIImage(named: "radio0"), for: .normal)
            four4.setImage(UIImage(named: "radio0"), for: .normal)
            four5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            four2.setImage(UIImage(named: "radio1"), for: .normal)
            four1.setImage(UIImage(named: "radio0"), for: .normal)
            four3.setImage(UIImage(named: "radio0"), for: .normal)
            four4.setImage(UIImage(named: "radio0"), for: .normal)
            four5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            four3.setImage(UIImage(named: "radio1"), for: .normal)
            four1.setImage(UIImage(named: "radio0"), for: .normal)
            four2.setImage(UIImage(named: "radio0"), for: .normal)
            four4.setImage(UIImage(named: "radio0"), for: .normal)
            four5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            four4.setImage(UIImage(named: "radio1"), for: .normal)
            four1.setImage(UIImage(named: "radio0"), for: .normal)
            four2.setImage(UIImage(named: "radio0"), for: .normal)
            four3.setImage(UIImage(named: "radio0"), for: .normal)
            four5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            four5.setImage(UIImage(named: "radio1"), for: .normal)
            four1.setImage(UIImage(named: "radio0"), for: .normal)
            four2.setImage(UIImage(named: "radio0"), for: .normal)
            four3.setImage(UIImage(named: "radio0"), for: .normal)
            four4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            four1.setImage(UIImage(named: "radio0"), for: .normal)
            four2.setImage(UIImage(named: "radio0"), for: .normal)
            four3.setImage(UIImage(named: "radio0"), for: .normal)
            four4.setImage(UIImage(named: "radio0"), for: .normal)
            four5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        fourInput = choiceFour
    }
    
    @IBAction func surveyFive(_ sender: UIButton) {
        let choiceFive: String = sender.titleLabel!.text!
        print("5-\(choiceFive)")
        
        switch choiceFive {
        case "1":
            five1.setImage(UIImage(named: "radio1"), for: .normal)
            five2.setImage(UIImage(named: "radio0"), for: .normal)
            five3.setImage(UIImage(named: "radio0"), for: .normal)
            five4.setImage(UIImage(named: "radio0"), for: .normal)
            five5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            five2.setImage(UIImage(named: "radio1"), for: .normal)
            five1.setImage(UIImage(named: "radio0"), for: .normal)
            five3.setImage(UIImage(named: "radio0"), for: .normal)
            five4.setImage(UIImage(named: "radio0"), for: .normal)
            five5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            five3.setImage(UIImage(named: "radio1"), for: .normal)
            five1.setImage(UIImage(named: "radio0"), for: .normal)
            five2.setImage(UIImage(named: "radio0"), for: .normal)
            five4.setImage(UIImage(named: "radio0"), for: .normal)
            five5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            five4.setImage(UIImage(named: "radio1"), for: .normal)
            five1.setImage(UIImage(named: "radio0"), for: .normal)
            five2.setImage(UIImage(named: "radio0"), for: .normal)
            five3.setImage(UIImage(named: "radio0"), for: .normal)
            five5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            five5.setImage(UIImage(named: "radio1"), for: .normal)
            five1.setImage(UIImage(named: "radio0"), for: .normal)
            five2.setImage(UIImage(named: "radio0"), for: .normal)
            five3.setImage(UIImage(named: "radio0"), for: .normal)
            five4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            five1.setImage(UIImage(named: "radio0"), for: .normal)
            five2.setImage(UIImage(named: "radio0"), for: .normal)
            five3.setImage(UIImage(named: "radio0"), for: .normal)
            five4.setImage(UIImage(named: "radio0"), for: .normal)
            five5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        fiveInput = choiceFive
    }
    
    @IBAction func surveySix(_ sender: UIButton) {
        let choiceSix: String = sender.titleLabel!.text!
        print("6-\(choiceSix)")
        
        switch choiceSix {
        case "1":
            six1.setImage(UIImage(named: "radio1"), for: .normal)
            six2.setImage(UIImage(named: "radio0"), for: .normal)
            six3.setImage(UIImage(named: "radio0"), for: .normal)
            six4.setImage(UIImage(named: "radio0"), for: .normal)
            six5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            six2.setImage(UIImage(named: "radio1"), for: .normal)
            six1.setImage(UIImage(named: "radio0"), for: .normal)
            six3.setImage(UIImage(named: "radio0"), for: .normal)
            six4.setImage(UIImage(named: "radio0"), for: .normal)
            six5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            six3.setImage(UIImage(named: "radio1"), for: .normal)
            six1.setImage(UIImage(named: "radio0"), for: .normal)
            six2.setImage(UIImage(named: "radio0"), for: .normal)
            six4.setImage(UIImage(named: "radio0"), for: .normal)
            six5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            six4.setImage(UIImage(named: "radio1"), for: .normal)
            six1.setImage(UIImage(named: "radio0"), for: .normal)
            six2.setImage(UIImage(named: "radio0"), for: .normal)
            six3.setImage(UIImage(named: "radio0"), for: .normal)
            six5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            six5.setImage(UIImage(named: "radio1"), for: .normal)
            six1.setImage(UIImage(named: "radio0"), for: .normal)
            six2.setImage(UIImage(named: "radio0"), for: .normal)
            six3.setImage(UIImage(named: "radio0"), for: .normal)
            six4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            six1.setImage(UIImage(named: "radio0"), for: .normal)
            six2.setImage(UIImage(named: "radio0"), for: .normal)
            six3.setImage(UIImage(named: "radio0"), for: .normal)
            six4.setImage(UIImage(named: "radio0"), for: .normal)
            six5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        sixInput = choiceSix
    }
    
    @IBAction func surveySeven(_ sender: UIButton) {
        let choiceSeven: String = sender.titleLabel!.text!
        print("7-\(choiceSeven)")
        
        switch choiceSeven {
        case "1":
            seven1.setImage(UIImage(named: "radio1"), for: .normal)
            seven2.setImage(UIImage(named: "radio0"), for: .normal)
            seven3.setImage(UIImage(named: "radio0"), for: .normal)
            seven4.setImage(UIImage(named: "radio0"), for: .normal)
            seven5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            seven2.setImage(UIImage(named: "radio1"), for: .normal)
            seven1.setImage(UIImage(named: "radio0"), for: .normal)
            seven3.setImage(UIImage(named: "radio0"), for: .normal)
            seven4.setImage(UIImage(named: "radio0"), for: .normal)
            seven5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            seven3.setImage(UIImage(named: "radio1"), for: .normal)
            seven1.setImage(UIImage(named: "radio0"), for: .normal)
            seven2.setImage(UIImage(named: "radio0"), for: .normal)
            seven4.setImage(UIImage(named: "radio0"), for: .normal)
            seven5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            seven4.setImage(UIImage(named: "radio1"), for: .normal)
            seven1.setImage(UIImage(named: "radio0"), for: .normal)
            seven2.setImage(UIImage(named: "radio0"), for: .normal)
            seven3.setImage(UIImage(named: "radio0"), for: .normal)
            seven5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            seven5.setImage(UIImage(named: "radio1"), for: .normal)
            seven1.setImage(UIImage(named: "radio0"), for: .normal)
            seven2.setImage(UIImage(named: "radio0"), for: .normal)
            seven3.setImage(UIImage(named: "radio0"), for: .normal)
            seven4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            seven1.setImage(UIImage(named: "radio0"), for: .normal)
            seven2.setImage(UIImage(named: "radio0"), for: .normal)
            seven3.setImage(UIImage(named: "radio0"), for: .normal)
            seven4.setImage(UIImage(named: "radio0"), for: .normal)
            seven5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        sevenInput = choiceSeven
    }
    
    @IBAction func surveyEight(_ sender: UIButton) {
        let choiceEight: String = sender.titleLabel!.text!
        print("8-\(choiceEight)")
        
        switch choiceEight {
        case "1":
            eight1.setImage(UIImage(named: "radio1"), for: .normal)
            eight2.setImage(UIImage(named: "radio0"), for: .normal)
            eight3.setImage(UIImage(named: "radio0"), for: .normal)
            eight4.setImage(UIImage(named: "radio0"), for: .normal)
            eight5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            eight2.setImage(UIImage(named: "radio1"), for: .normal)
            eight1.setImage(UIImage(named: "radio0"), for: .normal)
            eight3.setImage(UIImage(named: "radio0"), for: .normal)
            eight4.setImage(UIImage(named: "radio0"), for: .normal)
            eight5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            eight3.setImage(UIImage(named: "radio1"), for: .normal)
            eight1.setImage(UIImage(named: "radio0"), for: .normal)
            eight2.setImage(UIImage(named: "radio0"), for: .normal)
            eight4.setImage(UIImage(named: "radio0"), for: .normal)
            eight5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            eight4.setImage(UIImage(named: "radio1"), for: .normal)
            eight1.setImage(UIImage(named: "radio0"), for: .normal)
            eight2.setImage(UIImage(named: "radio0"), for: .normal)
            eight3.setImage(UIImage(named: "radio0"), for: .normal)
            eight5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            eight5.setImage(UIImage(named: "radio1"), for: .normal)
            eight1.setImage(UIImage(named: "radio0"), for: .normal)
            eight2.setImage(UIImage(named: "radio0"), for: .normal)
            eight3.setImage(UIImage(named: "radio0"), for: .normal)
            eight4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            eight1.setImage(UIImage(named: "radio0"), for: .normal)
            eight2.setImage(UIImage(named: "radio0"), for: .normal)
            eight3.setImage(UIImage(named: "radio0"), for: .normal)
            eight4.setImage(UIImage(named: "radio0"), for: .normal)
            eight5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        eightInput = choiceEight
    }
    
    @IBAction func surveyNine(_ sender: UIButton) {
        let choiceNine: String = sender.titleLabel!.text!
        print("9-\(choiceNine)")
        
        switch choiceNine {
        case "1":
            nine1.setImage(UIImage(named: "radio1"), for: .normal)
            nine2.setImage(UIImage(named: "radio0"), for: .normal)
            nine3.setImage(UIImage(named: "radio0"), for: .normal)
            nine4.setImage(UIImage(named: "radio0"), for: .normal)
            nine5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            nine2.setImage(UIImage(named: "radio1"), for: .normal)
            nine1.setImage(UIImage(named: "radio0"), for: .normal)
            nine3.setImage(UIImage(named: "radio0"), for: .normal)
            nine4.setImage(UIImage(named: "radio0"), for: .normal)
            nine5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            nine3.setImage(UIImage(named: "radio1"), for: .normal)
            nine1.setImage(UIImage(named: "radio0"), for: .normal)
            nine2.setImage(UIImage(named: "radio0"), for: .normal)
            nine4.setImage(UIImage(named: "radio0"), for: .normal)
            nine5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            nine4.setImage(UIImage(named: "radio1"), for: .normal)
            nine1.setImage(UIImage(named: "radio0"), for: .normal)
            nine2.setImage(UIImage(named: "radio0"), for: .normal)
            nine3.setImage(UIImage(named: "radio0"), for: .normal)
            nine5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            nine5.setImage(UIImage(named: "radio1"), for: .normal)
            nine1.setImage(UIImage(named: "radio0"), for: .normal)
            nine2.setImage(UIImage(named: "radio0"), for: .normal)
            nine3.setImage(UIImage(named: "radio0"), for: .normal)
            nine4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            nine1.setImage(UIImage(named: "radio0"), for: .normal)
            nine2.setImage(UIImage(named: "radio0"), for: .normal)
            nine3.setImage(UIImage(named: "radio0"), for: .normal)
            nine4.setImage(UIImage(named: "radio0"), for: .normal)
            nine5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        nineInput = choiceNine
    }
    
    @IBAction func surveyTen(_ sender: UIButton) {
        let choiceTen: String = sender.titleLabel!.text!
        print("10-\(choiceTen)")
        
        switch choiceTen {
        case "1":
            ten1.setImage(UIImage(named: "radio1"), for: .normal)
            ten2.setImage(UIImage(named: "radio0"), for: .normal)
            ten3.setImage(UIImage(named: "radio0"), for: .normal)
            ten4.setImage(UIImage(named: "radio0"), for: .normal)
            ten5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            ten2.setImage(UIImage(named: "radio1"), for: .normal)
            ten1.setImage(UIImage(named: "radio0"), for: .normal)
            ten3.setImage(UIImage(named: "radio0"), for: .normal)
            ten4.setImage(UIImage(named: "radio0"), for: .normal)
            ten5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            ten3.setImage(UIImage(named: "radio1"), for: .normal)
            ten1.setImage(UIImage(named: "radio0"), for: .normal)
            ten2.setImage(UIImage(named: "radio0"), for: .normal)
            ten4.setImage(UIImage(named: "radio0"), for: .normal)
            ten5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            ten4.setImage(UIImage(named: "radio1"), for: .normal)
            ten1.setImage(UIImage(named: "radio0"), for: .normal)
            ten2.setImage(UIImage(named: "radio0"), for: .normal)
            ten3.setImage(UIImage(named: "radio0"), for: .normal)
            ten5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            ten5.setImage(UIImage(named: "radio1"), for: .normal)
            ten1.setImage(UIImage(named: "radio0"), for: .normal)
            ten2.setImage(UIImage(named: "radio0"), for: .normal)
            ten3.setImage(UIImage(named: "radio0"), for: .normal)
            ten4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            ten1.setImage(UIImage(named: "radio0"), for: .normal)
            ten2.setImage(UIImage(named: "radio0"), for: .normal)
            ten3.setImage(UIImage(named: "radio0"), for: .normal)
            ten4.setImage(UIImage(named: "radio0"), for: .normal)
            ten5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        tenInput = choiceTen
    }
    
    @IBAction func surveyEleven(_ sender: UIButton) {
        let choiceEleven: String = sender.titleLabel!.text!
        print("11-\(choiceEleven)")
        
        switch choiceEleven {
        case "1":
            eleven1.setImage(UIImage(named: "radio1"), for: .normal)
            eleven2.setImage(UIImage(named: "radio0"), for: .normal)
            eleven3.setImage(UIImage(named: "radio0"), for: .normal)
            eleven4.setImage(UIImage(named: "radio0"), for: .normal)
            eleven5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            eleven2.setImage(UIImage(named: "radio1"), for: .normal)
            eleven1.setImage(UIImage(named: "radio0"), for: .normal)
            eleven3.setImage(UIImage(named: "radio0"), for: .normal)
            eleven4.setImage(UIImage(named: "radio0"), for: .normal)
            eleven5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            eleven3.setImage(UIImage(named: "radio1"), for: .normal)
            eleven1.setImage(UIImage(named: "radio0"), for: .normal)
            eleven2.setImage(UIImage(named: "radio0"), for: .normal)
            eleven4.setImage(UIImage(named: "radio0"), for: .normal)
            eleven5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            eleven4.setImage(UIImage(named: "radio1"), for: .normal)
            eleven1.setImage(UIImage(named: "radio0"), for: .normal)
            eleven2.setImage(UIImage(named: "radio0"), for: .normal)
            eleven3.setImage(UIImage(named: "radio0"), for: .normal)
            eleven5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            eleven5.setImage(UIImage(named: "radio1"), for: .normal)
            eleven1.setImage(UIImage(named: "radio0"), for: .normal)
            eleven2.setImage(UIImage(named: "radio0"), for: .normal)
            eleven3.setImage(UIImage(named: "radio0"), for: .normal)
            eleven4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            eleven1.setImage(UIImage(named: "radio0"), for: .normal)
            eleven2.setImage(UIImage(named: "radio0"), for: .normal)
            eleven3.setImage(UIImage(named: "radio0"), for: .normal)
            eleven4.setImage(UIImage(named: "radio0"), for: .normal)
            eleven5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        elevenInput = choiceEleven
    }
    
    @IBAction func surveyTwelve(_ sender: UIButton) {
        let choiceTwelve: String = sender.titleLabel!.text!
        print("12-\(choiceTwelve)")
        
        switch choiceTwelve {
        case "1":
            twelve1.setImage(UIImage(named: "radio1"), for: .normal)
            twelve2.setImage(UIImage(named: "radio0"), for: .normal)
            twelve3.setImage(UIImage(named: "radio0"), for: .normal)
            twelve4.setImage(UIImage(named: "radio0"), for: .normal)
            twelve5.setImage(UIImage(named: "radio0"), for: .normal)
        case "2":
            twelve2.setImage(UIImage(named: "radio1"), for: .normal)
            twelve1.setImage(UIImage(named: "radio0"), for: .normal)
            twelve3.setImage(UIImage(named: "radio0"), for: .normal)
            twelve4.setImage(UIImage(named: "radio0"), for: .normal)
            twelve5.setImage(UIImage(named: "radio0"), for: .normal)
        case "3":
            twelve3.setImage(UIImage(named: "radio1"), for: .normal)
            twelve1.setImage(UIImage(named: "radio0"), for: .normal)
            twelve2.setImage(UIImage(named: "radio0"), for: .normal)
            twelve4.setImage(UIImage(named: "radio0"), for: .normal)
            twelve5.setImage(UIImage(named: "radio0"), for: .normal)
        case "4":
            twelve4.setImage(UIImage(named: "radio1"), for: .normal)
            twelve1.setImage(UIImage(named: "radio0"), for: .normal)
            twelve2.setImage(UIImage(named: "radio0"), for: .normal)
            twelve3.setImage(UIImage(named: "radio0"), for: .normal)
            twelve5.setImage(UIImage(named: "radio0"), for: .normal)
        case "5":
            twelve5.setImage(UIImage(named: "radio1"), for: .normal)
            twelve1.setImage(UIImage(named: "radio0"), for: .normal)
            twelve2.setImage(UIImage(named: "radio0"), for: .normal)
            twelve3.setImage(UIImage(named: "radio0"), for: .normal)
            twelve4.setImage(UIImage(named: "radio0"), for: .normal)
        default:
            twelve1.setImage(UIImage(named: "radio0"), for: .normal)
            twelve2.setImage(UIImage(named: "radio0"), for: .normal)
            twelve3.setImage(UIImage(named: "radio0"), for: .normal)
            twelve4.setImage(UIImage(named: "radio0"), for: .normal)
            twelve5.setImage(UIImage(named: "radio0"), for: .normal)
    }
        twelveInput = choiceTwelve
    }

// MARK: - Save Survey
    @IBAction func donePressed(_ sender: UIButton) {
        let db = Firestore.firestore()
        print(documentID)
        
        if oneInput != nil && twoInput != nil && threeInput != nil && fourInput != nil && fiveInput != nil && sixInput != nil && sevenInput != nil && eightInput != nil && nineInput != nil && tenInput != nil && elevenInput != nil && twelveInput != nil {
            let citizenData = oneInput+","+twoInput+","+threeInput+","+fourInput+","+fiveInput+","+sixInput+","+sevenInput
            let customerData = eightInput+","+nineInput+","+tenInput+","+elevenInput+","+twelveInput
            db.collection("users").document(documentID!).setData(["green citizen": citizenData, "green customer": customerData], merge: true)
        
        performSegue(withIdentifier: "goToSurEnd", sender: self)
        }else {
            errorLabel.isHidden = false
            errorLabel.text = "Please finish all the questions."
            print("error")
        }
    }
            
// MARK: - Navigation
            
        override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            if documentID != nil && errorLabel.isHidden {
                return true
            } else {
                print("error0")
                return false
            }
        }
            
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "goToSurEnd" {
                let surendVC = segue.destination as! SurveyEndViewController
                surendVC.documentID = documentID
                surendVC.nameText = nameText
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
