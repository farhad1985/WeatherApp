//
//  DayWeather.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

struct DayWeather {
    var title: String = ""
    var minTemp: String = ""
    var maxTemp: String = ""
    
    init(model: WeatherList) {
        
        title = model.dt.week
        minTemp = model.main.tempMin.celsius
        maxTemp = model.main.tempMax.celsius
    }
}
