//
//  WeatherMapDB.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

import RealmSwift

class WeatherListDB: Object {
    @Persisted var weather = List<WeatherDB>()
    @Persisted var clouds: CloudsDB?
    @Persisted var main: MainDB?
    @Persisted var wind: WindDB?
    @Persisted var visibility: Int = 0
    @Persisted var dt: Int = 0
    
    convenience init(model: WeatherList) {
        self.init()
        
        clouds = CloudsDB(model: model.clouds)
        main = MainDB(model: model.main)
        wind = WindDB(model: model.wind)
        visibility = model.visibility
        dt = model.dt
        
        model.weather.forEach { item in
            self.weather.append(WeatherDB(model: item))
        }
    }

}
