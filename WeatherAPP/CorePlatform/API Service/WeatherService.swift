//
//  WeatherService.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

struct WeatherService: WeatherServiceable, Requestable {
    
    func fetchWeather(lat: Float,
                      lng: Float,
                      completion: @escaping (ServiceResult<WeatherMap>) -> ()) {
        
        request(route: Router.weather(lat: lat, lng: lng),
                completion: completion)
    }
}
