//
//  WeatherManager.swift
//  Clima
//
//  Created by Марк Райтман on 19.02.2023.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)&appid=f66c945a3c108834c9d2a7289fd04cfc&units=metric"
        
        performRequest(urlString: urlString)
        
    }
    
    func performRequest(urlString: String) {
        //create url
        if let url = URL(string: urlString) {
            
            //create session
            let session = URLSession(configuration: .default)
            
            //create a session task with closure
            let task = session.dataTask(with: url) { data, response, error in
                func handle(data: Data?, response: URLResponse?, error: Error?) {
                    if error != nil {
                        print(error!)
                        return
                    }
                    if let sаfeData = data {
                        parseJSON(weatherData: sаfeData)
                    }
                }
            }
            
            //start the task
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) {
        
    }
    
}
