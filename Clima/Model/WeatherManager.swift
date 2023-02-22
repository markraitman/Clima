//
//  WeatherManager.swift
//  Clima
//
//  Created by Марк Райтман on 19.02.2023.
//

import Foundation

struct WeatherManager {
    
    let weatherVC = WeatherViewController()
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)&appid=f66c945a3c108834c9d2a7289fd04cfc&units=metric"
        
        //calling fetching data function using url
        performRequest(urlString: urlString)
    }
    
    //function that making querry
    func performRequest(urlString: String) {
        
        //create url adress of our querry
        if let url = URL(string: urlString) {
            
            //create a session to make a querry to get data we needed
            let session = URLSession(configuration: .default)
            
            //create a session task with closure    input parameters of closure
            let task = session.dataTask(with: url) { (data, response, error) in
                
                //unwrapping error with "not nil" method
                if error != nil {
                    print(error!)
                    return
                }
                //unwrapping data with optional binding method
                if let sаfeData = data {
                    self.parseJSON(weatherData: sаfeData)
                }
            }
            //start the task
            task.resume()
        }
    }
    
    //decoding JSON format into Swift programm language function
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(condotionID: id, cityName: name, temperature: temp)
            
            print(weather.getConditionName(weatherId: id))
        } catch {
            print(error)
        }
    }
    
}
