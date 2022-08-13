//
//  ProfileScreen.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        ScrollView {
            GroupBox(
                label:
                    HStack {
                        Text("Profile")
                            .fontWeight(.black)
                        Spacer()
                        Image(systemName: "info.circle")})
            {
                Divider().padding(.vertical, 4)
                
                HStack(alignment: .center, spacing: 10) {
                  Image("Profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .frame(width: 90, height: 130)
                  
                    VStack(alignment: .leading) {
                        Text("Zainal Iqbal")
                              .fontWeight(.black)
                        Text("zainalabqi@gmail.com")
                            .fontWeight(.heavy)
                    }
                    Spacer()
                }
            }
            
            GroupBox(
                label:
                    HStack {
                        Text("Appliaction")
                            .fontWeight(.black)
                        Spacer()
                        Image(systemName: "apps.iphone")})
            {
                ProfileRowView(name: "Developer", content: "Zainal Iqbal")
                ProfileRowView(name: "Compatibility", content: "IOS 15.5")
                ProfileRowView(name: "Version", content: "1.0")
                ProfileRowView(name: "", content: "Belajar Membuat Aplikasi iOS untuk Pemula")
                Spacer()
            }
            
            Spacer()
        }
        .navigationTitle("Profile")
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
