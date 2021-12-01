//
//  MainDB.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

import RealmSwift

class MainDB: Object {
    @Persisted var temp: Double = 0
    @Persisted var feelsLike: Double = 0
    @Persisted var tempMin: Double = 0
    @Persisted var tempMax: Double = 0
    @Persisted var pressure: Int = 0
    @Persisted var humidity: Int = 0
    
    convenience init(model: Main) {
        self.init()
        temp = model.temp
        feelsLike = model.feelsLike
        tempMin = model.tempMin
        tempMax = model.tempMax
        pressure = model.pressure
        humidity = model.humidity
    }
}
