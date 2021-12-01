//
//  RealmService.swift
//  WeatherAPP
//
//  Created by Farhad on 11/29/21.
//

import RealmSwift

class RealmService: DBServiceable {
    
    func save(model: WeatherMap) {
        let realm = try? Realm()

        try? realm?.write({
            let weather = WeatherMapDB(model: model)
            realm?.add(weather)
        })
    }
    
    func getWeatherMap() -> WeatherMap? {
        let realm = try? Realm()
        
        guard
            let model = realm?
                .objects(WeatherMapDB.self)
                .first
        else { return nil }
        
        return WeatherMap(model: model)
        
    }
}
