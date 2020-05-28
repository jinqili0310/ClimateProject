//
//  RemindMeViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/26/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import UserNotifications
import FirebaseDatabase

class RemindMeViewController: UIViewController {
    @IBOutlet weak var switchOne: UISwitch!
    @IBOutlet weak var switchTwo: UISwitch!
    @IBOutlet weak var switchThree: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var ref: DatabaseReference!
        ref = Database.database().reference()
    }
    
    @IBAction func allowNotification(_ sender: UIButton) {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert]) {
            (granted, error) in
            if granted {
               print("Yes")
                DispatchQueue.main.async {
                    self.performSegue(withIdentifier: "goToSetReminder", sender: self)}
            } else {
               print("No")
            }
        }
        
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToSetReminder" {
        let reminderVC = segue.destination as! SetReminderViewController
        reminderVC.habitOneIsOn = switchOne.isOn
        reminderVC.habitTwoIsOn = switchTwo.isOn
        reminderVC.habitThreeIsOn = switchThree.isOn
        }
    }

}
