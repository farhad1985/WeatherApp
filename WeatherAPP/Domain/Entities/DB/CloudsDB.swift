//
//  CloudsDB.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

import RealmSwift

class CloudsDB: Object {
    @Persisted var all: Int = 0
    
    convenience init(model: Clouds) {
        self.init()

        all = model.all
    }
}
