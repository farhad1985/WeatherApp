//
//  WindDB.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

import RealmSwift

class WindDB: Object {
    @Persisted var speed: Double = 0
    @Persisted var deg: Int = 0
    
    convenience init(model: Wind) {
        self.init()

        speed = model.speed
        deg = model.deg
    }
}
