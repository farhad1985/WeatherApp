//
//  Main.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

struct Main: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    let pressure, humidity: Int
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure
        case humidity
    }
    
    init(model: MainDB?) {
        self.temp = model?.temp ?? 0
        self.feelsLike = model?.feelsLike ?? 0
        self.tempMin = model?.tempMin ?? 0
        self.tempMax = model?.tempMax ?? 0
        self.pressure = model?.pressure ?? 0
        self.humidity = model?.humidity ?? 0
    }
}
