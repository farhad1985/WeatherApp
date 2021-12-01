//
//  City.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

import Foundation

struct City: Codable {
    let id: Int
    let name: String
    let sunrise, sunset: Int

    init(model: CityDB?) {
        id = model?.id ?? 0
        name = model?.name ?? ""
        sunrise = model?.sunrise ?? 0
        sunset = model?.sunset ?? 0
    }
}
