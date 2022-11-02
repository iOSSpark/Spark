//
//  SparkMapView.swift
//  Spark1
//
//  Created by Jessica Kent on 10/28/22.
//

import SwiftUI
import MapKit

struct SparkMapViewRepresentable: UIViewRepresentable {
    
    
    
    let mapView = MKMapView()
    let locationManager = LocationManger()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        
        return mapView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}
    extension SparkMapViewRepresentable {
        
        class MapCoordinator: NSObject, MKMapViewDelegate {
            let parent: SparkMapViewRepresentable
            
            init(parent: SparkMapViewRepresentable) {
                self.parent = parent
                super .init()
            }
            func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
                let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
                                                , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
                )
                
                parent.mapView.setRegion(region, animated: true)
            }
        }
    
}
