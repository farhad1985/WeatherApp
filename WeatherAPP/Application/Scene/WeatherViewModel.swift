//
//  WeatherViewModel.swift
//  WeatherAPP
//
//  Created by Farhad on 11/29/21.
//

import Foundation

class WeatherViewModel {
    
    enum State {
        case reload(model: CurrentWeahter)
    }
    
    // MARK: - Variabels
    
    var onChangeState = Publisher<State>()
    
    private let repo: WeatherRepoable
    private var isAllow = true
    
    init(repo: WeatherRepoable) {
        self.repo = repo
    }
    
    func fetchWeather(lat: Float, lng: Float) {
        guard isAllow else { return }
        isAllow = false
        
        repo.fetchWeather(lat: lat, lng: lng) { result in
            switch result {
            case .success(let value):
                let model = CurrentWeahter(model: value)
                self.onChangeState.onNext(value: .reload(model: model))
                
            case .failure(let message):
                print(message)
            }
        }
    }
}
