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
    
//    @IBAction func unwindToVC1(_ sender: UIStoryboardSegue) {
//        guard let detailVC = segue.source as? HoroscopeDetailViewController, let sign = deta
//        
//    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){}
    
     
    @IBAction func settingsActionButton(_ sender: UIButton) {
    }
}

//@IBAction func addNewEvent(segue: UIStoryboardSegue) {
//    // caveman debugging  print("adding event....")
//    guard let createEventController = segue.source as? CreateEventController,
//        let createdEvent = createEventController.event else {
//        fatalError("failed to access CreateEventController")
//    }
//    // insert into our events array
//    // 1. update the data model e.g. update the evnts array
//    events.insert(createdEvent, at: 0) // implies top of the events array
//
//    // create an indexPathto be inserted into the tableView
//    let indexPath = IndexPath(row: 0, section: 0) // will represent top of table view
//
//    // 2. we need to update the table view
//    // use indexPath to inser into tble view
//    tableView.insertRows(at: [indexPath], with: .automatic)
//}

