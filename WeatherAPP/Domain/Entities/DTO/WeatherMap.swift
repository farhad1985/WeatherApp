//
//  Weather1.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

import Foundation

struct WeatherMap: Codable {
    let cod: String
    let message, cnt: Int
    let list: [WeatherList]
    let city: City
    
    init(model: WeatherMapDB) {
        cod = model.cod
        message = model.message
        cnt = model.cnt
        city = City(model: model.city)
        
        list = model.weatherList.map{WeatherList(model: $0)}
        
    }
}
