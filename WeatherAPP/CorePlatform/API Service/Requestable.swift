//
//  Requestable.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

import Foundation

protocol Requestable {}

extension Requestable {
    
    func request<T: Codable>(route: Router,
                             completion: @escaping(ServiceResult<T>) -> ()) {
        
        let url = route.url + "&appid=661add26b8ba177f7257ad33de71f2af"
        
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                completion(ServiceResult.failure(message: error?.localizedDescription ?? ""))
                return
            }
            
            guard
                let model = try? JSONDecoder().decode(T.self, from: data)
            else {
                completion(ServiceResult.failure(message: "I couldn't parse Data"))
                return
            }
            
            completion(ServiceResult.success(value: model))
        }
        .resume()
    }
    
}
