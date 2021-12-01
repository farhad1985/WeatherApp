//
//  ServiceResult.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//


enum ServiceResult<T> {
    case success(value: T)
    case failure(message: String)
}
