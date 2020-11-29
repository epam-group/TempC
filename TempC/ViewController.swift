//
//  ViewController.swift
//  TempC
//
//  Created by Максим on 17.11.2020.
//  Copyright © 2020 naschkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var sliderValue: UISlider! {
        didSet {
            sliderValue.maximumValue = 50
            sliderValue.minimumValue = -50
            sliderValue.value = 0
        }
    }
    
    @IBOutlet weak var farenLabel: UILabel!

    @IBAction func sliderValue(_ sender: UISlider) {
        let tempCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(tempCelsius)ºC"
        let faren = (tempCelsius * 9 / 5 + 32 )
        farenLabel.text = "\(faren)ºF"
        
    }
}

