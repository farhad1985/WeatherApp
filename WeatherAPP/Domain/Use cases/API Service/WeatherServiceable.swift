//
//  APIServiceable.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//


protocol WeatherServiceable {
    
    func fetchWeather(lat: Float,
                      lng: Float,
                      completion: @escaping (ServiceResult<WeatherMap>) -> ())
    
}
