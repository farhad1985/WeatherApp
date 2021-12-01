//
//  Weather.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

struct Weather: Codable {
    let id: Int
    let main, weatherDescription, icon: String

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription = "description"
        case icon
    }
    
    init(model: WeatherDB?) {
        self.id = model?.id ?? 0
        self.main = model?.main ?? ""
        self.weatherDescription = model?.weatherDescription ?? ""
        self.icon = model?.icon ?? ""
    }
}
