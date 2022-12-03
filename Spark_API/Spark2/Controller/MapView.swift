//
//  MapViewController.swift
//  Spark2
//
//  Created by Jessica Kent on 11/11/22.
//

import UIKit
import MapKit
import CoreLocation
import Parse

class MapView: UIViewController {
    
    var routeData : Route?
    var routeCoordinates : [CLLocation] = []
    var routeOverlay : MKOverlay?
    
    
    
    
    let mapView : MKMapView = {
        let map = MKMapView()
        map.overrideUserInterfaceStyle = .dark
        return map
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMapConstraints()
        
        //let welcome3 = try Welcome3(json)
        
        if let routeJSON = self.getJSON() {
            parseJSON(jsonData: routeJSON)
            //
        }
        addPins()
        
        drawRoute(routeData: routeCoordinates)
    }
    
    func setMapConstraints() {
        view.addSubview(mapView)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
        
        
    }
    
    func getJSON() -> Data? {
        if let path = Bundle.main.path(forResource: "data", ofType: "json") {
            do {
                let data = try String(contentsOfFile: path).data(using: .utf8)
                print("SUCCESS")
                return data
            } catch {
                print("ERROR")
                
            }
        }
        return nil
    }
    
    
    func parseJSON(jsonData: Data) {
        do {
            let route = try JSONDecoder().decode(Route.self, from: jsonData)
          //  routeData = try JSONDecoder().decode(Route.self, from: jsonData)
            
            print(routeData!)
            
            for fuelStations in routeData?.fuelStations ?? [] {
                let loc = CLLocation (
              //      latitude: CLLocationDegrees,
               //     longitude: CLLocationDegrees
                    )
               // let myLocation = location.coordinate
                
                    
                   // latitude: Double,
                  //  longitude: Double
                
                routeCoordinates.append(loc)
            }
        } catch {
            print("ERROR: Unable to parse JSON")
        }
    }
    
    func addPins() {
        if routeCoordinates.count != 0 {
            let startPin = MKPointAnnotation()
            startPin.title = "Start"
            startPin.coordinate = CLLocationCoordinate2D(
                latitude: routeCoordinates.last!.coordinate.latitude,
                longitude: routeCoordinates.last!.coordinate.longitude
            )
            mapView.addAnnotation(startPin)
            
            let endPin = MKPointAnnotation()
            endPin.title = "Stop"
            endPin.coordinate = CLLocationCoordinate2D(
                latitude: routeCoordinates.last!.coordinate.latitude,
                longitude: routeCoordinates.last!.coordinate.longitude
            )
            mapView.addAnnotation(endPin)
        }
        
    }
    
    func drawRoute(routeData: [CLLocation]) {
        if routeData.count == 0 {
            print("No Coordinates to draw")
            return
        }
        
        let coordinates = routeData.map {location -> CLLocationCoordinate2D in
            return location.coordinate
        }
        
        DispatchQueue.main.async {
            self.routeOverlay = MKPolyline(coordinates: coordinates, count: coordinates.count)
            self.mapView.addOverlay(self.routeOverlay!, level: .aboveRoads)
            let customEdgePadding : UIEdgeInsets = UIEdgeInsets(
                top: 50,
                left: 50,
                bottom: 50,
                right: 50
            )
            self.mapView.setVisibleMapRect(self.routeOverlay!.boundingMapRect, edgePadding:
                                            customEdgePadding, animated: true)
        }
    }
    
    
}
    extension MapView : MKMapViewDelegate {
        
    }


