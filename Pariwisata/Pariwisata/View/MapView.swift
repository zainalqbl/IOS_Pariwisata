//
//  MapView.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -0.789275, longitude: 113.921327), span: MKCoordinateSpan(latitudeDelta: 30.0, longitudeDelta: 30.0))
    
    let place: PlaceViewModel
    
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: [place.MapLocations]) {
            location in
            MapAnnotation(coordinate: location.coordinate) {
                PlaceAnnotationView(title: location.name)
            }
        }
            .frame(height: 256)
            .cornerRadius(12)
    }
}

struct MapView_Previews: PreviewProvider {
    static let places: PlaceViewModel = PlaceViewModel.init(place: SampleData)
    static var previews: some View {
        MapView(place: places)
    }
}
