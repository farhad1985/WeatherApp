//
//  File.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

struct WeatherList: Codable {
    
    let dt: Int
    let main: Main
    let weather: [Weather]
    let clouds: Clouds
    let wind: Wind
    let visibility: Int
    
    init(model: WeatherListDB) {
        visibility = model.visibility
        dt = model.dt
        clouds = Clouds(model: model.clouds)
        main = Main(model: model.main)
        wind = Wind(model: model.wind)

        weather = model.weather.map{Weather(model: $0)}
    }
}
