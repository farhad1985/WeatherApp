//
//  WeatherLandscapView.swift
//  WeatherAPP
//
//  Created by Farhad on 11/30/21.
//

import UIKit
import Kingfisher

class WeatherLandscapView: UIView, Connectable {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var lblTemp: UILabel!
    
    @IBOutlet weak var lblSunrise: UILabel!
    @IBOutlet weak var lblSunset: UILabel!
    @IBOutlet weak var lblClouds: UILabel!
    @IBOutlet weak var lblWindSpeed: UILabel!
    @IBOutlet weak var lblHumidity: UILabel!
    @IBOutlet weak var lblPressure: UILabel!
    
    @IBOutlet weak var icon: UIImageView!

    @IBOutlet weak var stWeekly: UIStackView!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commit()
    }
    
    func setConfig(model: CurrentWeahter) {
        lblName.text = model.name
        lblTemp.text = model.temp
        lblStatus.text = model.desc
        lblSunrise.text = model.sunrise
        lblSunset.text = model.sunset
        lblClouds.text = model.clouds
        lblWindSpeed.text = model.windSpeed
        lblHumidity.text = model.hum
        lblPressure.text = model.pressure
        
        stWeekly.subviews.forEach{$0.removeFromSuperview()}

        model.weekly.prefix(5).forEach { item in
            let vw = DayView(frame: .zero)
            vw.setConfig(model: item)
            vw.layoutIfNeeded()
            
            stWeekly.addArrangedSubview(vw)

        }
        
        icon.kf.setImage(with: URL(string: model.icon))
    }
    
}
