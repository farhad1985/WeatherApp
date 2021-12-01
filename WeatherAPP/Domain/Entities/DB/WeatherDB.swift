//
//  WeatherDB.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

import RealmSwift

class WeatherDB: Object {
    @Persisted var id: Int = 0
    @Persisted var main = ""
    @Persisted var weatherDescription = ""
    @Persisted var icon = ""
    
    convenience init(model: Weather) {
        self.init()

        id = model.id
        main = model.main
        weatherDescription = model.weatherDescription
        icon = model.icon
    }
}
