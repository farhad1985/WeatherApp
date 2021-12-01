//
//  ExDouble.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

import Foundation

extension Double {
    var celsius: String {
        return String(format: "%0.2f", self - 273.15)
    }
}
