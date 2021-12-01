//
//  WeatherRepo.swift
//  WeatherAPP
//
//  Created by Farhad on 11/29/21.
//

import Reachability

struct WeatherRepo: WeatherRepoable {
    
    private let weatherService: WeatherServiceable
    private let dbService: DBServiceable
    private let reachability = try! Reachability()

    init(weatherService: WeatherServiceable,
         dbService: DBServiceable) {
        
        self.weatherService = weatherService
        self.dbService = dbService
    }
    
    func fetchWeather(lat: Float,
                      lng: Float,
                      completion: @escaping (ServiceResult<WeatherMap>) -> ()) {
        

        if let model = dbService.getWeatherMap(),
           reachability.connection == .unavailable {

            completion(ServiceResult.success(value: model))
            return
        }
        
        weatherService.fetchWeather(lat: lat, lng: lng) { result in
            
            switch result {
            case .success(let value):
                dbService.save(model: value)
                
                completion(ServiceResult.success(value: value))
                
            case .failure(let message):
                
                completion(ServiceResult.failure(message: message))

            }
        }
    }
}
