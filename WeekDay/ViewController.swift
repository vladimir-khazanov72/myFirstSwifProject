//
//  ViewController.swift
//  WeekDay
//
//  Created by Владимир Хазанов on 06.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var day: UITextField!
    
    @IBOutlet weak var month: UITextField!
    
    @IBOutlet weak var year: UITextField!
    
    @IBOutlet weak var result: UILabel!
    @IBAction func weekdayFind(_ sender: UIButton) {
        let caledar = Calendar.current
        var dateComponents = DateComponents()
        guard day.text != nil && month.text != nil && year.text != nil else {
            return
        }
        dateComponents.day = Int(day.text!)
        dateComponents.month = Int(month.text!)
        dateComponents.year = Int(year.text!)
        guard let date = caledar.date(from: dateComponents) else{
            return
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        let weekday = dateFormatter.string(from: date).capitalized
        result.text = weekday
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

