//
//  WeatherModel.swift
//  Clima
//
//  Created by Марк Райтман on 22.02.2023.
//

import Foundation

struct WeatherModel {
    
    //MARK: - Properties
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    //MARK: - Computed properties
    var temperatureString: String {
        return String(format: "%.0f", temperature)
    }
    
    var conditionName: String {
        switch conditionID {
        case 200...232: return "cloud.bolt.rain"
        case 300...321: return "cloud.drizzle"
        case 500...531: return "cloud.heavyrain"
        case 600...622: return "cloud.snow"
        case 701...781: return "cloud.fog"
        case 800: return "sun.max"
        case 801...804: return "cloud.sun"
        default: return "sun.max"
        }
    }
}
