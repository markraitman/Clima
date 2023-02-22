//
//  WeatherModel.swift
//  Clima
//
//  Created by Марк Райтман on 22.02.2023.
//

import Foundation

struct WeatherModel {
    let condotionID: Int
    let cityName: String
    let temperature: Double
    
    func getConditionName(weatherId: Int) -> String {
        switch weatherId {
        case 200...232: return "􀇞"
        case 300...321: return "􀇄"
        case 500...531: return "􀇈"
        case 600...622: return "􀇎"
        case 701...781: return "􀇊"
        case 800: return "􀆭"
        case 801...804: return "􀇔"
        default: return "􀆭"
        }
    }
    
}
