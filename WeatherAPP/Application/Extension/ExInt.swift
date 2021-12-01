//
//  ExInt.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

import Foundation

extension Int {
    var time: String {
        let date = Date(timeIntervalSince1970: TimeInterval(self))
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.short
        dateFormatter.timeZone = .current
        return dateFormatter.string(from: date)
    }
    
    var week: String {
        let date = Date(timeIntervalSince1970: TimeInterval(self))
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "EEEE"
        let weekDay = dateFormatter.string(from: date)
        return weekDay
    }
    
    var celsius: String {
        return String(format: "%0.2f", Double(self) - 273.15)
    }
}
