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
    
    // data for our picker view - ask how we could populate in from API
    private let horoscopes = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"]

    // labName will be the current selected row in the picker view
    private var signName: String?
    
    //var horoscope: Horoscope?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we have to configure the picker view
        horoscopePicker.dataSource = self
        horoscopePicker.delegate = self
        
        //horoscope?.sunsign.first
       signName = horoscopes.first
    }

    // MARK: - Table view data source

}

extension HoroscopeDetailViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return horoscopes.count
        //return horoscope?.sunsign.count ?? 1
    }
}

extension HoroscopeDetailViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return horoscopes[row]
    }
}

