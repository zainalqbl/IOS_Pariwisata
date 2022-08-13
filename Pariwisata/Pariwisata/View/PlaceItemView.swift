//
//  PlaceItemView.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import SwiftUI

struct PlaceItemView: View {
    
    let place: PlaceViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: place.image)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 128)
                    .cornerRadius(6)
            } placeholder: {
                Image(systemName: "photo.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 80)
                    .opacity(0.5)
            }
            
            VStack(alignment: .leading) {
                Text(place.name)
                    .font(.headline)
                
                Text(place.address)
                    .opacity(0.5)
            }
            Spacer()
        }.contentShape(Rectangle())
    }
}

struct PlaceItemView_Previews: PreviewProvider {
    static let places: PlaceViewModel = PlaceViewModel.init(place: SampleData)
    
    static var previews: some View {
        PlaceItemView(place: places)
    }
}

