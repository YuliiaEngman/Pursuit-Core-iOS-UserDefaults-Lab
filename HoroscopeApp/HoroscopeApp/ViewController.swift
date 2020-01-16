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
    @IBOutlet weak var horoscopeDescriptionLabel: UITextView!
    
    var horoscope: Horoscope? {
        didSet {
            DispatchQueue.main.async {
                 
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func settingsActionButton(_ sender: UIButton) {
    }
    


}

