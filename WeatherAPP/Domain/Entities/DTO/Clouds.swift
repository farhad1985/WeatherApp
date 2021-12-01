//
//  Could.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

struct Clouds: Codable {
    let all: Int
    
    init(model: CloudsDB?) {
        self.all = model?.all ?? 0
    }
}
