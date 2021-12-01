//
//  RealmServiceable.swift
//  WeatherAPP
//
//  Created by Farhad on 11/29/21.
//

import Foundation

protocol DBServiceable {
    
    func save(model: WeatherMap)
    
    func getWeatherMap() -> WeatherMap?
}
