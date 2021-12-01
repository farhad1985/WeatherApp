//
//  ViewController.swift
//  WeatherAPP
//
//  Created by Farhad on 11/28/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    // MARK: Views
    @IBOutlet weak var vw1: WeatherPortraitView!
    @IBOutlet weak var vw2: WeatherLandscapView!

    // MARK: - Variables
    var viewModel: WeatherViewModel!
    let locationManager = CLLocationManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let repoService = WeatherRepo(weatherService: WeatherService(),
                                      dbService: RealmService())
        
        viewModel = WeatherViewModel(repo: repoService)
        
        subscribe()
        
        checkCurrentLocationAccess()
    }
    
    override func willTransition(to newCollection: UITraitCollection,
                                 with coordinator: UIViewControllerTransitionCoordinator) {
        
        vw1.isHidden = !UIWindow.isLandscape
        vw2.isHidden = UIWindow.isLandscape
    }
    
    
    private func checkCurrentLocationAccess() {
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
    
    
    private func updateState() {
        vw1.isHidden = UIWindow.isLandscape
        vw2.isHidden = !UIWindow.isLandscape
    }
}

extension ViewController {
    
    func subscribe() {
        
       viewModel.onChangeState
            .subscribe { value in
            
            guard let value = value else { return }
            
            switch value {
            case .reload(let model):
                
                DispatchQueue.main.async {
                    self.vw1.setConfig(model: model)
                    self.vw2.setConfig(model: model)
                    self.updateState()
                }
            }
        }

    }
}

extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation]) {
        
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        
        viewModel.fetchWeather(lat: Float(locValue.latitude),
                               lng: Float(locValue.longitude))
    }
}
