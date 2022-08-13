//
//  PlaceListViewModel.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import Foundation
import SwiftUI
import MapKit

class PlaceListViewModel: ViewModelBase {
    
    @Published var places = [PlaceViewModel]()
    let httpClient = HTTPClient()
    
    func searchPlace() {
        
        self.loadingState = .loading
        
        httpClient.getListWisata { result in
            switch result {
            case .success(let places):
                DispatchQueue.main.async {
                    self.places = places.map(PlaceViewModel.init)
                    self.loadingState = .success
                }
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.loadingState = .failed
                }
            }
        }
        
    }
    
}


struct PlaceViewModel {
    
    
    let place: Place
    
    var id: Int {
        place.id
    }
    
    var name: String {
        place.name
    }
    
    var placeDescription: String {
        place.placeDescription
    }
    
    var address: String {
        place.address
    }
    
    var longitude: Double {
        place.longitude
    }
    
    var latitude: Double {
        place.latitude
    }
    
    var like: Int {
        place.like
    }
    
    var image: String {
        place.image
    }
        
    var MapLocations : MapLocation {
        MapLocation(name: place.name, coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
    }
    
}

struct MapLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
