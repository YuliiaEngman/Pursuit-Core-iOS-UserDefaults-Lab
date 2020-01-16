//
//  HoroscopeDetailViewController.swift
//  HoroscopeApp
//
//  Created by Yuliia Engman on 1/13/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class HoroscopeDetailViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var horoscopePicker: UIPickerView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet var horoscopeButtonLabel: UITableView!
    
    var chosenSign = ""
    
    
    // data for our picker view - ask how we could populate in from API
    private let horoscopes = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"]

    // labName will be the current selected row in the picker view
    private var signName: String?
    
    //var horoscope: Horoscope?

    override func viewDidLoad() {
        super.viewDidLoad()
        horoscopePicker.dataSource = self
        horoscopePicker.delegate = self
        signName = horoscopes.first
        
        nameTextField.delegate = self
    }
    
    

    // MARK: - Table view data source
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ViewController else {
            fatalError("could not unwind segue")
        }
        destinationVC.passingName = nameTextField.text ?? "no name"
        destinationVC.passingSunsign = chosenSign
    }

    
    
    @IBAction func showHoroscopeActionButton(_ sender: UIButton) {
        
    }
}

extension HoroscopeDetailViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return horoscopes.count
    }
}

extension HoroscopeDetailViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return horoscopes[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chosenSign = horoscopes[row]
    }
}

extension HoroscopeDetailViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           
           //dismiss the keyboard
           textField.resignFirstResponder()
           
           // update name of event
//           event?.name = textField.text ?? "no event name"
           return true // true or false does not affect
        }
}

//@IBAction func datePickerChanged(sender: UIDatePicker) {
//       
//       // update date of event
//      event?.date = sender.date
//   }
