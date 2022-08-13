//
//  ViewModelBase.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
