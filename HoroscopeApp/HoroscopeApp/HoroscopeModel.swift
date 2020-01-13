//
//  HoroscopeModel.swift
//  HoroscopeApp
//
//  Created by Yuliia Engman on 1/13/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import Foundation

struct Horoscope: Decodable {
    let sunsign: String
    let horoscope: String
}
