//
//  ViewController.swift
//  Clima
//
//  Created by Марк Райтман on 17.02.2023.
//

import UIKit

class WeatherViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        print(searchTextField.text!)
    }
    
    
}

