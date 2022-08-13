//
//  URL+Extension.swift
//  Pariwisata
//
//  Created by HIS nutech on 13/08/22.
//

import Foundation

extension URL {
    
    static func TourismAPI() -> URL? {
        return URL(string: "https://tourism-api.dicoding.dev/list")
    }
    
}
