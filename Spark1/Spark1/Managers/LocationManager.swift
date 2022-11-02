//
//  LocationManager.swift
//  Spark1
//
//  Created by Jessica Kent on 10/28/22.
//

import CoreLocation

class LocationManger: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
extension LocationManger: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else {return}
        print(locations.first)
        locationManager.stopUpdatingLocation()
    }
}
