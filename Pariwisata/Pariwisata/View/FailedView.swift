//
//  FailedView.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import SwiftUI

struct FailedView: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image(systemName: "exclamationmark.octagon.fill")
                .font(.system(size: 200))
            
            Text("Some think Error !")
                .font(.system(size: 24))
            Spacer()
        }
    }
}

struct FailedView_Previews: PreviewProvider {
    static var previews: some View {
        FailedView()
    }
}
