//
//  Wind.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

struct Wind: Codable {
    let speed: Double
    let deg: Int
    
    init(model: WindDB?) {
        self.speed = model?.speed ?? 0
        self.deg = model?.deg ?? 0
    }
}
