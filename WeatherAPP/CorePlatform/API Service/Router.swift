//
//  Router.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

let baseURL = "http://api.openweathermap.org/data/2.5"

enum Router {
    case weather(lat: Float, lng: Float)
    
    var url: String {
        switch self {
        case .weather(let lat, let lng):
            return baseURL + "/forecast?lat=\(lat)&lon=\(lng)"
        }
    }
}

//http://api.openweathermap.org/data/2.5/weather?id=2172797&appid=661add26b8ba177f7257ad33de71f2af
