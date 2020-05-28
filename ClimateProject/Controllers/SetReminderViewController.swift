//
//  SetReminderViewController.swift
//  ClimateProject
//
//  Created by Jinqi Li on 5/26/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import UIKit
import UserNotifications
import FirebaseDatabase

class SetReminderViewController: UIViewController {
    var habitOneIsOn: Bool?
    var habitTwoIsOn: Bool?
    var habitThreeIsOn: Bool?
    
    @IBOutlet weak var dailyOn: UISwitch!
    @IBOutlet weak var weeklyOn: UISwitch!
    
    @IBOutlet weak var weekdayPicker: UIStackView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var btnSun: UIButton!
    @IBOutlet weak var btnMon: UIButton!
    @IBOutlet weak var btnTue: UIButton!
    @IBOutlet weak var btnWed: UIButton!
    @IBOutlet weak var btnThur: UIButton!
    @IBOutlet weak var btnFri: UIButton!
    @IBOutlet weak var btnSat: UIButton!
    
    var sunIsOn = false
    var monIsOn = false
    var tueIsOn = false
    var wedIsOn = false
    var thurIsOn = false
    var friIsOn = false
    var satIsOn = false

    var date0 = DateComponents()
    var date1 = DateComponents()
    var date2 = DateComponents()
    var date3 = DateComponents()
    var date4 = DateComponents()
    var date5 = DateComponents()
    var date6 = DateComponents()
    var date7 = DateComponents()
    
    var alertOK: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var ref: DatabaseReference!
        ref = Database.database().reference()
        
        dailyOn.isOn = true
        weeklyOn.isOn = false
        weekdayPicker.isHidden = true
        
        print("habit one is \(String(describing: self.habitOneIsOn))")
        print("habit two is \(String(describing: self.habitTwoIsOn))")
        print("habit three is \(String(describing: self.habitThreeIsOn))")
        
//        for family in UIFont.familyNames.sorted() {
//            let names = UIFont.fontNames(forFamilyName: family)
//            print("Family: \(family) Font names: \(names)")
//        }
    }
    
    // MARK: - Weekly/Daily is On
    @IBAction func weeklyOnF(_ sender: UISwitch) {
        if weeklyOn.isOn {
            weekdayPicker.isHidden = false
            dailyOn.isOn = false
        }else {
            weekdayPicker.isHidden = true
            dailyOn.isOn = true
        }
    }
    @IBAction func dailyOnf(_ sender: UISwitch) {
        if dailyOn.isOn {
            weeklyOn.isOn = false
            weekdayPicker.isHidden = true
        }else {
            weeklyOn.isOn = true
            weekdayPicker.isHidden = false
        }
    }
    
    // MARK: - Weekday Picker
    @IBAction func sunTouched(_ sender: UIButton) {
        sunIsOn = !sunIsOn
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateFormat = "MM"
        dateFormatter1.dateFormat = "dd"
        if sunIsOn {
            sender.setTitleColor(.white, for: .normal)
            self.btnSun.backgroundColor = UIColor(hex: "#5FCE75ff")
            print("sunday")
            let currentDay1 = Date().dayNumberOfWeek()!
            var sunDate: Date
            if (1-currentDay1) > 0 {
                sunDate = Calendar.current.date(byAdding: .day, value: 1-currentDay1, to: Date())!
            } else {
                sunDate = Calendar.current.date(byAdding: .day, value: 8-currentDay1, to: Date())!
            }
            date1.month = Int(dateFormatter1.string(from: sunDate))
            date1.day = Int(dateFormatter1.string(from: sunDate))
        } else {
            sender.setTitleColor(UIColor(hex: "#5FCE75ff"), for: .normal)
            self.btnSun.backgroundColor = UIColor.systemBackground
            date1.month = nil
            date1.day = nil
        }
    }
    @IBAction func monTouched(_ sender: UIButton) {
        monIsOn = !monIsOn
        let dateFormatter2 = DateFormatter()
        dateFormatter2.dateFormat = "MM"
        dateFormatter2.dateFormat = "dd"
        if monIsOn {
            sender.setTitleColor(.white, for: .normal)
            self.btnMon.backgroundColor = UIColor(hex: "#5FCE75ff")
            print("monday")
            let currentDay2 = Date().dayNumberOfWeek()!
            var monDate: Date
            if (2-currentDay2) > 0 {
                monDate = Calendar.current.date(byAdding: .day, value: 2-currentDay2, to: Date())!
            } else {
                monDate = Calendar.current.date(byAdding: .day, value: 9-currentDay2, to: Date())!
            }
            date2.month = Int(dateFormatter2.string(from: monDate))
            date2.day = Int(dateFormatter2.string(from: monDate))
        } else {
            sender.setTitleColor(UIColor(hex: "#5FCE75ff"), for: .normal)
            self.btnMon.backgroundColor = UIColor.systemBackground
            date2.month = nil
            date2.day = nil
        }
    }
    @IBAction func tueTouched(_ sender: UIButton) {
        tueIsOn = !tueIsOn
        let dateFormatter3 = DateFormatter()
        dateFormatter3.dateFormat = "MM"
        dateFormatter3.dateFormat = "dd"
        if tueIsOn {
            sender.setTitleColor(.white, for: .normal)
            self.btnTue.backgroundColor = UIColor(hex: "#5FCE75ff")
            print("tuesday")
            let currentDay3 = Date().dayNumberOfWeek()!
            var tueDate: Date
            if (3-currentDay3) > 0 {
                tueDate = Calendar.current.date(byAdding: .day, value: 3-currentDay3, to: Date())!
            } else {
                tueDate = Calendar.current.date(byAdding: .day, value: 10-currentDay3, to: Date())!
            }
            date3.month = Int(dateFormatter3.string(from: tueDate))
            date3.day = Int(dateFormatter3.string(from: tueDate))
        } else {
            sender.setTitleColor(UIColor(hex: "#5FCE75ff"), for: .normal)
            self.btnTue.backgroundColor = UIColor.systemBackground
            date3.month = nil
            date3.day = nil
        }
    }
    @IBAction func wedTouched(_ sender: UIButton) {
        wedIsOn = !wedIsOn
        let dateFormatter4 = DateFormatter()
        dateFormatter4.dateFormat = "MM"
        dateFormatter4.dateFormat = "dd"
        if wedIsOn {
            sender.setTitleColor(.white, for: .normal)
            self.btnWed.backgroundColor = UIColor(hex: "#5FCE75ff")
            print("wednesday")
            let currentDay4 = Date().dayNumberOfWeek()!
            var wedDate: Date
            if (4-currentDay4) > 0 {
                wedDate = Calendar.current.date(byAdding: .day, value: 4-currentDay4, to: Date())!
            } else {
                wedDate = Calendar.current.date(byAdding: .day, value: 11-currentDay4, to: Date())!
            }
            date4.month = Int(dateFormatter4.string(from: wedDate))
            date4.day = Int(dateFormatter4.string(from: wedDate))
        } else {
            sender.setTitleColor(UIColor(hex: "#5FCE75ff"), for: .normal)
            self.btnWed.backgroundColor = UIColor.systemBackground
            date4.month = nil
            date4.day = nil
        }
    }
    @IBAction func thurTouched(_ sender: UIButton) {
        thurIsOn = !thurIsOn
        let dateFormatter5 = DateFormatter()
        dateFormatter5.dateFormat = "MM"
        dateFormatter5.dateFormat = "dd"
        if thurIsOn {
            sender.setTitleColor(.white, for: .normal)
            self.btnThur.backgroundColor = UIColor(hex: "#5FCE75ff")
            print("thursday")
            let currentDay5 = Date().dayNumberOfWeek()!
            var thurDate: Date
            if (5-currentDay5) > 0 {
                thurDate = Calendar.current.date(byAdding: .day, value: 5-currentDay5, to: Date())!
            } else {
                thurDate = Calendar.current.date(byAdding: .day, value: 12-currentDay5, to: Date())!
            }
            date5.month = Int(dateFormatter5.string(from: thurDate))
            date5.day = Int(dateFormatter5.string(from: thurDate))
        } else {
            sender.setTitleColor(UIColor(hex: "#5FCE75ff"), for: .normal)
            self.btnThur.backgroundColor = UIColor.systemBackground
            date5.month = nil
            date5.day = nil
        }
    }
    @IBAction func friTouched(_ sender: UIButton) {
        friIsOn = !friIsOn
        let dateFormatter6 = DateFormatter()
        dateFormatter6.dateFormat = "MM"
        dateFormatter6.dateFormat = "dd"
        if friIsOn {
            sender.setTitleColor(.white, for: .normal)
            self.btnFri.backgroundColor = UIColor(hex: "#5FCE75ff")
            print("friday")
            let currentDay6 = Date().dayNumberOfWeek()!
            var friDate: Date
            if (6-currentDay6) > 0 {
                friDate = Calendar.current.date(byAdding: .day, value: 6-currentDay6, to: Date())!
            } else {
                friDate = Calendar.current.date(byAdding: .day, value: 13-currentDay6, to: Date())!
            }
            date6.month = Int(dateFormatter6.string(from: friDate))
            date6.day = Int(dateFormatter6.string(from: friDate))
        } else {
            sender.setTitleColor(UIColor(hex: "#5FCE75ff"), for: .normal)
            self.btnFri.backgroundColor = UIColor.systemBackground
            date6.month = nil
            date6.day = nil
        }
    }
    @IBAction func satTouched(_ sender: UIButton) {
        satIsOn = !satIsOn
        let dateFormatter7 = DateFormatter()
        dateFormatter7.dateFormat = "MM"
        dateFormatter7.dateFormat = "dd"
        if satIsOn {
            sender.setTitleColor(.white, for: .normal)
            self.btnSat.backgroundColor = UIColor(hex: "#5FCE75ff")
            print("saturday")
            let currentDay7 = Date().dayNumberOfWeek()!
            var satDate: Date
            if (7-currentDay7) > 0 {
                satDate = Calendar.current.date(byAdding: .day, value: 7-currentDay7, to: Date())!
            } else {
                satDate = Calendar.current.date(byAdding: .day, value: 14-currentDay7, to: Date())!
            }
            date7.month = Int(dateFormatter7.string(from: satDate))
            date7.day = Int(dateFormatter7.string(from: satDate))
        } else {
            sender.setTitleColor(UIColor(hex: "#5FCE75ff"), for: .normal)
            self.btnSat.backgroundColor = UIColor.systemBackground
            date7.month = nil
            date7.day = nil
            print("\(date7)is empty?")
        }
    }
    
    // MARK: - Set Reminder
    @IBAction func sendNotification(_ sender: UIButton) {
        let content = UNMutableNotificationContent()
        content.title = "Notification"
        content.subtitle = "Green Buddy"
        
        let contentOne = "Don't forget to reduce single use items!"
        let contentTwo = "Don't forget to reuse shopping bags and water bottles!"
        let contentThree = "Don't forget to recycle everything!"
        if habitOneIsOn ?? false {
            content.body = contentOne
            if habitTwoIsOn ?? false {
                content.body = "\(contentOne) \n\(contentTwo)"
                if habitThreeIsOn ?? false {
                    content.body = "\(contentOne) \n\(contentTwo) \n\(contentThree)"
                }
            } else if habitThreeIsOn ?? false {
                content.body = "\(contentOne) \n\(contentThree)"
            }
        } else if habitTwoIsOn ?? false {
            content.body = contentTwo
            if habitThreeIsOn ?? false {
                content.body = "\(contentTwo) \n\(contentThree)"
            }
        } else if habitThreeIsOn ?? false {
            content.body = contentThree
        }
        
        // Daily Notification
//        let notifIDPrefix = "mynotif"
//        let notifCategory = "com.test.ClimateProject"
//        func scheduleNotifs(from startDate: Date, to endDate: Date, with interval: TimeInterval) {
//            var curDate = startDate
//            var count: Int = 0
//            while curDate.compare(endDate) != .orderedDescending {
//                scheduleNotif(with: "\(notifIDPrefix)_\(count)", date: curDate)
//                curDate = curDate.addingTimeInterval(interval)
//                count += 1
//            }
//        }
//        func scheduleNotif(with identifier: String, date: Date) {
//            print("schedule daily")
//            content.categoryIdentifier = notifCategory
//            let triggerTime = Calendar.current.dateComponents([.month, .day, .hour, .minute], from: date)
//            let trigger = UNCalendarNotificationTrigger(dateMatching: triggerTime, repeats: false)
//            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
//            let center = UNUserNotificationCenter.current()
//            center.add(request) { (error : Error?) in
//                if let theError = error {
//                    print(theError.localizedDescription)
//                }
//            }
//        }
        
        // Weekly Notification
        if weeklyOn.isOn{
            let trigger1 = UNCalendarNotificationTrigger(dateMatching: date1, repeats: false)
            let request1 = UNNotificationRequest(identifier: "notification.1", content: content, trigger: trigger1)
            UNUserNotificationCenter.current().add(request1, withCompletionHandler: nil)
            
            let trigger2 = UNCalendarNotificationTrigger(dateMatching: date2, repeats: false)
            let request2 = UNNotificationRequest(identifier: "notification.2", content: content, trigger: trigger2)
            UNUserNotificationCenter.current().add(request2, withCompletionHandler: nil)
            
            let trigger3 = UNCalendarNotificationTrigger(dateMatching: date3, repeats: false)
            let request3 = UNNotificationRequest(identifier: "notification.3", content: content, trigger: trigger3)
            UNUserNotificationCenter.current().add(request3, withCompletionHandler: nil)
            
            let trigger4 = UNCalendarNotificationTrigger(dateMatching: date4, repeats: false)
            let request4 = UNNotificationRequest(identifier: "notification.4", content: content, trigger: trigger4)
            UNUserNotificationCenter.current().add(request4, withCompletionHandler: nil)
            
            let trigger5 = UNCalendarNotificationTrigger(dateMatching: date5, repeats: false)
            let request5 = UNNotificationRequest(identifier: "notification.5", content: content, trigger: trigger5)
            UNUserNotificationCenter.current().add(request5, withCompletionHandler: nil)
            
            let trigger6 = UNCalendarNotificationTrigger(dateMatching: date6, repeats: false)
            let request6 = UNNotificationRequest(identifier: "notification.6", content: content, trigger: trigger6)
            UNUserNotificationCenter.current().add(request6, withCompletionHandler: nil)
            
            let trigger7 = UNCalendarNotificationTrigger(dateMatching: date7, repeats: false)
            let request7 = UNNotificationRequest(identifier: "notification.7", content: content, trigger: trigger7)
            UNUserNotificationCenter.current().add(request7, withCompletionHandler: nil)
            
        }else {
            //let currentDate: Date = Date()
            //let dateFormatter0 = DateFormatter()
            //dateFormatter0.timeZone = TimeZone.init(abbreviation: "UTC")
            //var date02,date03,date04,date05,date06,date07: Date
            //var date002,date003,date004,date005,date006,date007: DateComponents
//            dateFormatter0.dateFormat = "yyyy"
//            date0.year = Int(dateFormatter0.string(from: currentDate))
//            dateFormatter0.dateFormat = "MM"
//            date0.month = Int(dateFormatter0.string(from: currentDate))
//            dateFormatter0.dateFormat = "dd"
//            date0.day = Int(dateFormatter0.string(from: currentDate))
            print("\(date0)")
            print("notification set")
//            let date01 = Calendar.current.date(from: date0)
//            date02 = Calendar.current.date(byAdding: .day, value: 1, to: date01!)!
//            date002 = Calendar.current.dateComponents([.year, .month, .day], from: date02)
//            date03 = Calendar.current.date(byAdding: .day, value: 2, to: date01!)!
//            date003 = Calendar.current.dateComponents([.year, .month, .day], from: date03)
            
            let trigger01 = UNCalendarNotificationTrigger(dateMatching: date0, repeats: true)
            let request01 = UNNotificationRequest(identifier: "notification.01", content: content, trigger: trigger01)
            UNUserNotificationCenter.current().add(request01, withCompletionHandler: nil)
            
        }

        let alertHome = UIAlertController(title: "Reminder", message: "Reminder has been set.", preferredStyle: UIAlertController.Style.alert)
        alertHome.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.performSegue(withIdentifier: "goToHome", sender: nil)
        }))
        self.present(alertHome, animated: true, completion: nil)
    }
    
    // MARK: - Set Time
    @IBAction func setTimeForNotification(_ sender: UIDatePicker) {
        // set notification time for everyday in a week
        let time0 = sender.date.toLocalTime()
        let dateFormatter0 = DateFormatter()
        dateFormatter0.timeZone = TimeZone.init(abbreviation: "UTC")
        dateFormatter0.dateFormat = "HH"
        date0.hour = Int(dateFormatter0.string(from: time0))
        dateFormatter0.dateFormat = "mm"
        date0.minute = Int(dateFormatter0.string(from: time0))
        
        // set notification date for sunday
        let time1 = sender.date.toLocalTime()
        let dateFormatter1 = DateFormatter()
        dateFormatter1.timeZone = TimeZone.init(abbreviation: "UTC")
        dateFormatter1.dateFormat = "HH"
        date1.hour = Int(dateFormatter1.string(from: time1))
        dateFormatter1.dateFormat = "mm"
        date1.minute = Int(dateFormatter1.string(from: time1))
        
        // set notification date for monday
        let time2 = sender.date.toLocalTime()
        let dateFormatter2 = DateFormatter()
        dateFormatter2.timeZone = TimeZone.init(abbreviation: "UTC")
        dateFormatter2.dateFormat = "HH"
        date2.hour = Int(dateFormatter2.string(from: time2))
        dateFormatter2.dateFormat = "mm"
        date2.minute = Int(dateFormatter2.string(from: time2))
        
        // set notification date for tuesday
        let time3 = sender.date.toLocalTime()
        let dateFormatter3 = DateFormatter()
        dateFormatter3.timeZone = TimeZone.init(abbreviation: "UTC")
        dateFormatter3.dateFormat = "HH"
        date3.hour = Int(dateFormatter3.string(from: time3))
        dateFormatter3.dateFormat = "mm"
        date3.minute = Int(dateFormatter3.string(from: time3))
        
        // set notification date for wednesday
        let time4 = sender.date.toLocalTime()
        let dateFormatter4 = DateFormatter()
        dateFormatter4.timeZone = TimeZone.init(abbreviation: "UTC")
        dateFormatter4.dateFormat = "HH"
        date4.hour = Int(dateFormatter4.string(from: time4))
        dateFormatter4.dateFormat = "mm"
        date4.minute = Int(dateFormatter4.string(from: time4))
        
        // set notification date for thursday
        let time5 = sender.date.toLocalTime()
        let dateFormatter5 = DateFormatter()
        dateFormatter5.timeZone = TimeZone.init(abbreviation: "UTC")
        dateFormatter5.dateFormat = "HH"
        date5.hour = Int(dateFormatter5.string(from: time5))
        dateFormatter5.dateFormat = "mm"
        date5.minute = Int(dateFormatter5.string(from: time5))
        
        // set notification date for friday
        let time6 = sender.date.toLocalTime()
        let dateFormatter6 = DateFormatter()
        dateFormatter6.timeZone = TimeZone.init(abbreviation: "UTC")
        dateFormatter6.dateFormat = "HH"
        date6.hour = Int(dateFormatter6.string(from: time6))
        dateFormatter6.dateFormat = "mm"
        date6.minute = Int(dateFormatter6.string(from: time6))
        
        // set notification date for saturday
        let time7 = sender.date.toLocalTime()
        let dateFormatter7 = DateFormatter()
        dateFormatter7.timeZone = TimeZone.init(abbreviation: "UTC")
        dateFormatter7.dateFormat = "HH"
        date7.hour = Int(dateFormatter7.string(from: time7))
        dateFormatter7.dateFormat = "mm"
        date7.minute = Int(dateFormatter7.string(from: time7))
        
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

public extension UILabel {
    
    private func shouldOverride() -> Bool {
        let classes = ["UIDatePicker", "UIDatePickerWeekMonthDayView", "UIDatePickerContentView"]
        var view = self.superview
        while view != nil {
            let className = NSStringFromClass(type(of: view!))
            if classes.contains(className) {
                return true
            }
            view = view!.superview
        }
        return false
    }

    @objc func setFontSwizzled(font: UIFont) {
        if self.shouldOverride() {
            self.setFontSwizzled(font: UIFont.init(name: "Montserrat-Medium", size: 25)!)
        } else {
            print("fail to load font")
            self.setFontSwizzled(font: font)
        }
    }

    private static let swizzledSetFontImplementation: Void = {
        let instance: UILabel = UILabel()
        let aClass: AnyClass! = object_getClass(instance)
        let originalMethod = class_getInstanceMethod(aClass, #selector(setter: font))
        let swizzledMethod = class_getInstanceMethod(aClass, #selector(setFontSwizzled))

        if let originalMethod = originalMethod, let swizzledMethod = swizzledMethod {
            // switch implementation..
            method_exchangeImplementations(originalMethod, swizzledMethod)
        }
    }()

    static func swizzleSetFont() {
        _ = self.swizzledSetFontImplementation
    }
}

extension Date {
    func toGlobalTime() -> Date {
        let timezone = TimeZone.current
        let seconds = -TimeInterval(timezone.secondsFromGMT(for: self))
        return Date(timeInterval: seconds, since: self)
    }
    
    func toLocalTime() -> Date {
        let timezone = TimeZone.current
        let seconds = TimeInterval(timezone.secondsFromGMT(for: self))
        return Date(timeInterval: seconds, since: self)
    }
    
    func dayNumberOfWeek() -> Int? {
        return Calendar.current.dateComponents([.weekday], from: self).weekday
    }
}

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
