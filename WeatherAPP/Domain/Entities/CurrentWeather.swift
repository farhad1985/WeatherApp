//
//  CurrentWeather.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

struct CurrentWeahter {
    var name: String = ""
    var temp: String = ""
    var desc: String = ""
    var sunrise: String = ""
    var sunset: String = ""
    var clouds: String = ""
    var windSpeed: String = ""
    var hum: String = ""
    var pressure: String = ""
    var icon = ""
    
    var weekly: [DayWeather] = []
    
    init(model: WeatherMap) {
        let currentDay = model.list.first
        
        temp = "\((currentDay?.main.temp ?? 0).celsius)°"
        name = model.city.name
        desc = currentDay?.weather.first?.weatherDescription ?? ""
        sunrise = model.city.sunrise.time
        sunset = model.city.sunset.time
        clouds = "\(currentDay?.clouds.all ?? 0)%"
        windSpeed = "\(currentDay?.wind.speed ?? 0)"
        hum = "\(currentDay?.main.humidity ?? 0)%"
        pressure = "\(currentDay?.main.pressure ?? 0)hPa"
        
        let url = currentDay?.weather.first?.icon ?? ""
        
        icon = "http://openweathermap.org/img/wn/\(url)@2x.png"
        
        weekly = model.list.map {DayWeather(model: $0)}
    }
}
