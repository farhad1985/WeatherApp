//
//  WeatherRepoable.swift
//  WeatherAPP
//
//  Created by Farhad on 11/29/21.
//

import Foundation

protocol WeatherRepoable {
    
    func fetchWeather(lat: Float,
                      lng: Float,
                      completion: @escaping (ServiceResult<WeatherMap>) -> ())

}
