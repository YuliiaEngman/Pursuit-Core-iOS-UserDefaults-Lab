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
    
    var passingName = "" {
        didSet{
            DispatchQueue.main.async {
                 self.userNameLabel.text = self.passingName
            }
        }
    }
    
//    var horoscope: Horoscope? {
//        didSet {
//            DispatchQueue.main.async {
//   self.horoscopeSignLable.text = self.horoscope?.sunsign
//   self.horoscopeDescriptionLabel.text = self.horoscope?.horoscope
//            }
//        }
//    }
    
    var passingSunsign = "" {
           didSet{
               DispatchQueue.main.async {
                self.horoscopeSignLable.text = self.passingSunsign
               }
           }
       }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = passingName
    }
    
    @IBAction func unwindToVC1(_ sender: UIStoryboardSegue) {}
    
    @IBAction func settingsActionButton(_ sender: UIButton) {
    }
    


}

