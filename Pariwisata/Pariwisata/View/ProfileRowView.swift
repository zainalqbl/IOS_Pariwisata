//
//  ProfileRowView.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import SwiftUI

struct ProfileRowView: View {
    
    var name: String
    var content: String
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                Text(content).foregroundColor(Color.gray)
            }
        }
    }
}

struct ProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRowView(name: "Developer", content: "Zainal Iqbal")
    }
}

