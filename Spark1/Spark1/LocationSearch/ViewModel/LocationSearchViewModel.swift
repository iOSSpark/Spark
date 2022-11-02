//
//  LocationSearchViewModel.swift
//  Spark1
//
//  Created by Jessica Kent on 10/29/22.
//

import Foundation
import MapKit 

class LocationSearchViewModel: NSObject, ObservableObject {
    
    @Published var results = [MKLocalSearchCompletion]()
    @Published var selectedLocation: String?
    
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment: String = "" {
        didSet {
            print("DEBUG: Query fragment is \(queryFragment)")
            searchCompleter.queryFragment = queryFragment
        }
    }
    
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
        
    }
}
        
        extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
            func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
                self.results = completer.results
            }
            
        }
        
    

