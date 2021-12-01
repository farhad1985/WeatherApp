//
//  WeatherMapDB.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

import RealmSwift

class WeatherMapDB: Object {
    @Persisted var cod: String = ""
    @Persisted var message = 0
    @Persisted var cnt: Int = 0
    @Persisted var weatherList = List<WeatherListDB>()
    @Persisted var city: CityDB?
        
    convenience init(model: WeatherMap) {
        self.init()

        cod = model.cod
        message = model.message
        cnt = model.cnt
        city = CityDB(model: model.city)
        
        model.list.forEach { item in
            self.weatherList.append(WeatherListDB(model: item))
        }

    }
}
