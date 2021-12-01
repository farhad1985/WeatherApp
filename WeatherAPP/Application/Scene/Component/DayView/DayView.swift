//
//  DayView.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

import UIKit

class DayView: UIView, Connectable {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblMin: UILabel!
    @IBOutlet weak var lblMax: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commit()
    }
    
    func setConfig(model: DayWeather) {
        lblTitle.text = model.title
        lblMin.text = model.minTemp
        lblMax.text = model.maxTemp
    }
    
}
