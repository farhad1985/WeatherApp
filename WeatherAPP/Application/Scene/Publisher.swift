//
//  Publisher.swift
//  WeatherAPP
//
//  Created by Farhad on 11/29/21.
//

import Foundation

class Publisher<T> {
    
    typealias Listener = ((_ value: T?) -> ())
    
    private var listener: Listener?

    func onNext(value: T?) {
        guard let listener = listener else {return}
        listener(value)
    }
    
    func subscribe(listener: @escaping Listener) {
        self.listener = listener
    }
}
