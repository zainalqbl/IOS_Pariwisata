//
//  PlaceDetailView.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import SwiftUI

struct PlaceDetailView: View {
    
    let place: PlaceViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                AsyncImage(url: URL(string: place.image)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                } placeholder: {
                    Image(systemName: "photo.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.5)
                }
                
                Text(place.name)
                    .font(.title)
                Text(place.address)
                    .fontWeight(.bold)
                Text(place.placeDescription)
                    .font(.subheadline)
                
                Spacer()
                
                HStack {
                    Text("Maps")
                        .fontWeight(.black)
                    Spacer()
                    Image(systemName: "map")
                }
                
                MapView(place: place)
                
            }
            .padding()
            .navigationTitle(self.place.name)
        }
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static let places: PlaceViewModel = PlaceViewModel.init(place: SampleData)
    
    static var previews: some View {
        PlaceDetailView(place: places)
    }
}
