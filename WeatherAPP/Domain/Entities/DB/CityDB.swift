//
//  CityDB.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

import RealmSwift

class CityDB: Object {
    @Persisted var id: Int
    @Persisted var name: String
    @Persisted var  sunrise: Int
    @Persisted var sunset: Int

    convenience init(model: City) {
        self.init()

        id = model.id
        name = model.name
        sunrise = model.sunrise
        sunset = model.sunset
    }
}
