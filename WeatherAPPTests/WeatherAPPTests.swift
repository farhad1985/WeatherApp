//
//  WeatherAPPTests.swift
//  WeatherAPPTests
//
//  Created by Farhad on 11/28/21.
//

import XCTest
@testable import WeatherAPP

class WeatherAPPTests: XCTestCase {

    func testConvertToCelsiusWithZero() {
        let temp = 273.15.celsius
        XCTAssertEqual(temp, "0.00")
    }
    
    func testConvertToCelsiusWithNumber() {
        let temp1 = 283.15.celsius
        let temp2 = 263.15.celsius

        XCTAssertEqual(temp1, "10.00")
        XCTAssertEqual(temp2, "-10.00")

    }
    
    func testConvertEpotchToWeekName() {
        let weekName = 1638349200.week

        XCTAssertEqual(weekName, "Wednesday")
    }
    
    func testConvertEpotchToTime() {
        let weekName = 1638349200.time

        XCTAssertEqual(weekName, "12:30 PM")
    }
}
