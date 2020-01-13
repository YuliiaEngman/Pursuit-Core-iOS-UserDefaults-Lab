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
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    

}
