//
//  PlaceListView.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import SwiftUI

struct PlaceListView: View {
    
    let places: [PlaceViewModel]
    
    var body: some View {
        List(self.places, id: \.id) { place in
            NavigationLink(destination: PlaceDetailView(place: place)) {
                PlaceItemView(place: place)
                    .padding()
                    .listRowInsets(.init())
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static let places: PlaceViewModel = PlaceViewModel.init(place: SampleData)
    
    static var previews: some View {
        PlaceListView(places: [places])
    }
}
