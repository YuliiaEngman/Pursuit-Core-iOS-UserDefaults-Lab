//
//  UserPreferance.swift
//  HoroscopeApp
//
//  Created by Yuliia Engman on 1/13/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import Foundation

/*
enum SportImage: String {
    case bike = "bike"
    case run = "run"
}

struct UserPreferenceKey {
    static let unitMeasurement = "Unit Measurement"
    static let userImageChoice = "User Image Choice"
}

class UserPreference {
    
    // a Singleton's initializer NEEDS to be private - this ensures that
    // ONLY one instance of this class is used throughout the application
    
    private init() {}
    
    //private let standard = UserDefaults.standard
        
    static let shared = UserPreference()
    
    // set a user default value (object)
    func updateUnitMeasurement(with unit: UnitMeasurement) {
        //storing or persisting the unit measurement value to UserDefaults (device or similar as permanent storage)
        
        // THIS IS ONE LINE OF CODE THAT MAKES USER
        // UserDefaults.standard is a Singleton in iOS that gives us access to saving and retriewing stored data in the device or simulator
    UserDefaults.standard.set(unit.rawValue, forKey: UserPreferenceKey.unitMeasurement)
        
        // key is "Unit Measurement"
        // value is either "Miles" or "Kilometers"
        // UserDefaults: ["Unit Measurement" : "Kilometers"]
    }
    
    // retrieve a user defaults value (object)
    // we have to type casting to the value we expect
    func getUnitMeasurement() -> UnitMeasurement? {
       guard let unitMeasurement = UserDefaults.standard.object(forKey: UserPreferenceKey.unitMeasurement) as? String else {
            return nil
        }
        return UnitMeasurement(rawValue: unitMeasurement)
    }
    
    func updateImage(with image: SportImage) {
        UserDefaults.standard.set(image.rawValue, forKey: UserPreferenceKey.userImageChoice)
        
    }
    
    func getUserImage() -> SportImage? {
        guard let sportImage = UserDefaults.standard.object(forKey: UserPreferenceKey.userImageChoice) as? String else {
            return nil
        }
        return SportImage(rawValue: sportImage)
    }
}
*/
