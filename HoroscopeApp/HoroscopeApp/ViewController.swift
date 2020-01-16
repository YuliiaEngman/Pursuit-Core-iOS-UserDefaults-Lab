//
//  ViewController.swift
//  HoroscopeApp
//
//  Created by Yuliia Engman on 1/13/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var settingButtonLabel: UIButton!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var horoscopeSignLable: UILabel!
    @IBOutlet weak var horoscopeDescriptionTextView: UITextView!
    
    var passingName = "" {
        didSet{
            DispatchQueue.main.async {
                self.userNameLabel.text = self.passingName
            }
        }
    }
    
    var passingSunsign = "" {
        didSet{
            DispatchQueue.main.async {
                self.horoscopeSignLable.text = self.passingSunsign
                self.getHoroscope(for: self.passingSunsign)
            }
        }
    }
    
    var passingSignDescription = "" {
        didSet{
            DispatchQueue.main.async {
                self.horoscopeDescriptionTextView.text = self.passingSignDescription
            }
        }
    }
    
    private func getHoroscope(for sign: String) {
        HoroscopeAPIClient.fetchHoroscope(for: sign.lowercased(), completion: { [weak self] (result) in
            switch result {
            case .failure(let appError):
                print("error \(appError)")
            case .success(let gotHoroscope):
                DispatchQueue.main.async {
                    self?.horoscopeDescriptionTextView.text = gotHoroscope.horoscope
                }
            }
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = passingName
        horoscopeSignLable.text = "Aries"
        getHoroscope(for: "aries")
    }
    
    @IBAction func unwindToVC1(_ sender: UIStoryboardSegue) {
        
        
    }
    
    @IBAction func settingsActionButton(_ sender: UIButton) {
    }
    
    
    
}

