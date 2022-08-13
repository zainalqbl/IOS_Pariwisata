//
//  PlaceListScreen.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import SwiftUI

struct PlaceListScreen: View {
    
    @ObservedObject private var placeListVM: PlaceListViewModel
    @State private var showProfile = false
    
    init() {
        self.placeListVM = PlaceListViewModel()
    }
    
    var body: some View {
        VStack {
            if self.placeListVM.loadingState == .success {
                PlaceListView(places: self.placeListVM.places)
                    .padding(.top, -50)
            } else if self.placeListVM.loadingState == .failed {
                FailedView()
            } else if self.placeListVM.loadingState == .loading {
                ProgressView()
            }
    
            NavigationLink(destination: ProfileScreen(), isActive: $showProfile) {
                EmptyView()
            }
            
        }
        .padding(.top, UIApplication
                            .shared
                            .connectedScenes
                            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                            .first { $0.isKeyWindow }?.safeAreaInsets.top)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    showProfile = true
                }) {
                    Image(systemName: "person.circle")
                        .tint(Color.black)
                }
            }
        }
        .navigationTitle("WISATA")
        .embedNavigationView()
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.placeListVM .searchPlace()
        }
        
    }
}

struct PlaceListScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListScreen()
    }
}

